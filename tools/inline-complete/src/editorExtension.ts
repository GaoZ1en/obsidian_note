import { StateEffect, StateField } from "@codemirror/state";
import {
  Decoration,
  DecorationSet,
  EditorView,
  ViewPlugin,
  ViewUpdate,
  WidgetType
} from "@codemirror/view";
import { allocateContextRange, hasMinimumPrefix } from "./context";
import type {
  CompletionClient,
  CompletionContext,
  InlineCompleteSettings,
  InlineCompleteStatusReporter
} from "./types";

interface InlineSuggestion {
  from: number;
  text: string;
  requestId: number;
}

interface InlineCompleteExtensionOptions {
  getSettings: () => InlineCompleteSettings;
  getFilePath: () => string;
  client: CompletionClient;
  setStatus: InlineCompleteStatusReporter;
}

let activeView: EditorView | null = null;
let activeStatusReporter: InlineCompleteStatusReporter = () => undefined;
let activeGetSettings: (() => InlineCompleteSettings) | null = null;
let afterAcceptTimer: number | null = null;
let afterAcceptChain = 0;
const liveViews = new Set<EditorView>();

export const setSuggestionEffect = StateEffect.define<InlineSuggestion | null>();
export const triggerCompletionEffect = StateEffect.define<void>();

export const inlineSuggestionField = StateField.define<InlineSuggestion | null>({
  create() {
    return null;
  },
  update(value, transaction) {
    let next = value;
    const hasSetEffect = transaction.effects.some((effect) => effect.is(setSuggestionEffect));

    if ((transaction.docChanged || transaction.selection) && !hasSetEffect) {
      next = null;
    }

    for (const effect of transaction.effects) {
      if (effect.is(setSuggestionEffect)) {
        next = effect.value;
      }
    }

    return next;
  },
  provide: (field) =>
    EditorView.decorations.from(field, (suggestion) => {
      if (!suggestion) {
        return Decoration.none;
      }

      return Decoration.set([
        Decoration.widget({
          widget: new GhostTextWidget(suggestion.text),
          side: 1
        }).range(suggestion.from)
      ]);
    })
});

class GhostTextWidget extends WidgetType {
  constructor(private readonly text: string) {
    super();
  }

  eq(other: GhostTextWidget): boolean {
    return this.text === other.text;
  }

  toDOM(): HTMLElement {
    const span = document.createElement("span");
    span.className = "cm-inline-complete-ghost-text";
    span.textContent = this.text;
    return span;
  }

  ignoreEvent(): boolean {
    return true;
  }
}

export function createInlineCompleteExtension(options: InlineCompleteExtensionOptions) {
  activeStatusReporter = options.setStatus;
  activeGetSettings = options.getSettings;

  const plugin = ViewPlugin.fromClass(
    class InlineCompleteViewPlugin {
      private timer: number | null = null;
      private requestId = 0;
      private destroyed = false;
      private readonly handleFocus = () => {
        activeView = this.view;
      };

      constructor(private readonly view: EditorView) {
        liveViews.add(this.view);
        this.view.dom.addEventListener("focusin", this.handleFocus);
        if (view.hasFocus) {
          activeView = view;
        }
      }

      update(update: ViewUpdate): void {
        if (update.view.hasFocus) {
          activeView = update.view;
        }

        if (!options.getSettings().enabled) {
          this.cancelTimer();
          this.invalidateRequest();
          this.clearSuggestion();
          options.setStatus("disabled");
          return;
        }

        let hasInlineCompleteEffect = false;
        const hasTypedInput = update.transactions.some((transaction) =>
          transaction.isUserEvent("input.type")
        );
        for (const transaction of update.transactions) {
          for (const effect of transaction.effects) {
            if (effect.is(setSuggestionEffect)) {
              hasInlineCompleteEffect = true;
            }
            if (effect.is(triggerCompletionEffect)) {
              hasInlineCompleteEffect = true;
              this.requestCompletion("manual");
            }
          }
        }

        if (update.docChanged || update.selectionSet) {
          this.invalidateRequest();
          this.clearSuggestion();
          if (!hasInlineCompleteEffect) {
            options.setStatus("idle");
          }
        }

        if ((update.docChanged || update.selectionSet) && !hasInlineCompleteEffect) {
          resetAfterAcceptChain();
        }

        if (
          update.docChanged &&
          hasTypedInput &&
          !hasInlineCompleteEffect &&
          update.view.hasFocus &&
          options.getSettings().autoTrigger
        ) {
          this.scheduleCompletion();
        }
      }

      destroy(): void {
        this.destroyed = true;
        this.cancelTimer();
        this.invalidateRequest();
        this.view.dom.removeEventListener("focusin", this.handleFocus);
        liveViews.delete(this.view);
        resetAfterAcceptChain();
        if (activeView === this.view) {
          activeView = null;
        }
      }

      private scheduleCompletion(): void {
        this.cancelTimer();
        const delay = options.getSettings().debounceMs;
        options.setStatus("waiting");
        this.timer = window.setTimeout(() => {
          this.timer = null;
          this.requestCompletion("auto");
        }, delay);
      }

      private cancelTimer(): void {
        if (this.timer !== null) {
          window.clearTimeout(this.timer);
          this.timer = null;
        }
      }

      private invalidateRequest(): void {
        this.requestId += 1;
      }

      private async requestCompletion(mode: "auto" | "manual"): Promise<void> {
        this.cancelTimer();

        const settings = options.getSettings();
        if (this.destroyed || !settings.enabled || (!settings.autoTrigger && mode === "auto")) {
          options.setStatus(settings.enabled ? "idle" : "disabled");
          return;
        }

        const selection = this.view.state.selection.main;
        if (!selection.empty) {
          this.clearSuggestion();
          options.setStatus("idle");
          return;
        }

        const requestId = ++this.requestId;
        const cursor = selection.head;
        const context = buildContext(this.view, cursor, options.getFilePath(), settings.contextChars);

        if (!context.textBefore.trim()) {
          options.setStatus("idle");
          return;
        }

        const currentLine = this.view.state.doc.lineAt(cursor);
        const currentLinePrefix = currentLine.text.slice(0, cursor - currentLine.from);
        if (mode === "auto" && !hasMinimumPrefix(currentLinePrefix, settings.minPrefixChars)) {
          options.setStatus("idle");
          return;
        }

        const startedAt = performance.now();
        options.setStatus("generating");

        try {
          const result = await options.client.complete(context);
          if (this.destroyed || requestId !== this.requestId) {
            return;
          }

          const currentSelection = this.view.state.selection.main;
          if (!currentSelection.empty || currentSelection.head !== cursor) {
            options.setStatus("idle");
            return;
          }

          const elapsed = formatElapsed(startedAt);
          if (result.status !== "ok") {
            if (result.status === "empty") {
              const reason = result.diagnostics.reason ?? "unknown";
              options.setStatus("empty", `${reason} ${elapsed}`, 2600);
            } else if (result.status === "missing-key") {
              options.setStatus("error", "missing key", 3000);
            } else {
              options.setStatus("error", result.message, 3000);
            }
            resetAfterAcceptChain();
            return;
          }

          this.view.dispatch({
            effects: setSuggestionEffect.of({
              from: cursor,
              text: result.text,
              requestId
            })
          });
          options.setStatus("ready", elapsed);
        } catch (error) {
          console.error("Inline Complete request failed", error);
          if (requestId === this.requestId) {
            options.setStatus("error", error instanceof Error ? error.message : "request failed", 3000);
          }
        }
      }

      private clearSuggestion(): void {
        if (this.view.state.field(inlineSuggestionField, false)) {
          this.view.dispatch({ effects: setSuggestionEffect.of(null) });
        }
      }
    }
  );

  return [inlineSuggestionField, plugin];
}

export function acceptActiveCompletion(): boolean {
  const view = activeView;
  if (!view) {
    return false;
  }

  const suggestion = view.state.field(inlineSuggestionField, false);
  const selection = view.state.selection.main;
  if (!suggestion || !selection.empty || selection.head !== suggestion.from) {
    return false;
  }

  view.dispatch({
    changes: {
      from: suggestion.from,
      insert: suggestion.text
    },
    selection: {
      anchor: suggestion.from + suggestion.text.length
    },
    effects: setSuggestionEffect.of(null),
    scrollIntoView: true
  });
  scheduleAfterAccept(view);
  return true;
}

export function dismissActiveCompletion(): boolean {
  const view = activeView;
  if (!view || !view.state.field(inlineSuggestionField, false)) {
    return false;
  }

  view.dispatch({ effects: setSuggestionEffect.of(null) });
  resetAfterAcceptChain();
  activeStatusReporter("idle");
  return true;
}

export function triggerActiveCompletion(): boolean {
  const view = activeView;
  if (!view) {
    return false;
  }

  view.dispatch({ effects: triggerCompletionEffect.of() });
  resetAfterAcceptChain();
  return true;
}

export function hasActiveCompletion(): boolean {
  const view = activeView;
  return Boolean(view?.state.field(inlineSuggestionField, false));
}

export function clearAllInlineCompletions(): void {
  resetAfterAcceptChain();
  for (const view of liveViews) {
    if (view.state.field(inlineSuggestionField, false)) {
      view.dispatch({ effects: setSuggestionEffect.of(null) });
    }
  }
  activeView = null;
  activeGetSettings = null;
  activeStatusReporter = () => undefined;
}

function buildContext(
  view: EditorView,
  cursor: number,
  filePath: string,
  contextChars: number
): CompletionContext {
  const doc = view.state.doc;
  const { beforeFrom, afterTo } = allocateContextRange(doc.length, cursor, contextChars);

  return {
    filePath,
    textBefore: doc.sliceString(beforeFrom, cursor),
    textAfter: doc.sliceString(cursor, afterTo)
  };
}

function formatElapsed(startedAt: number): string {
  return `${((performance.now() - startedAt) / 1000).toFixed(1)}s`;
}

function scheduleAfterAccept(view: EditorView): void {
  const settings = activeGetSettings?.();
  if (!settings?.enabled || !settings.triggerAfterAccept || settings.maxAcceptChain <= 0) {
    resetAfterAcceptChain();
    activeStatusReporter("idle");
    return;
  }

  if (afterAcceptChain >= settings.maxAcceptChain) {
    resetAfterAcceptChain();
    activeStatusReporter("idle");
    return;
  }

  clearAfterAcceptTimer();
  afterAcceptChain += 1;
  activeStatusReporter("waiting", "next");
  afterAcceptTimer = window.setTimeout(() => {
    afterAcceptTimer = null;
    view.dispatch({ effects: triggerCompletionEffect.of() });
  }, settings.triggerAfterAcceptDelayMs);
}

function resetAfterAcceptChain(): void {
  afterAcceptChain = 0;
  clearAfterAcceptTimer();
}

function clearAfterAcceptTimer(): void {
  if (afterAcceptTimer !== null) {
    window.clearTimeout(afterAcceptTimer);
    afterAcceptTimer = null;
  }
}
