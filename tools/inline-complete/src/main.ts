import { MarkdownView, Plugin } from "obsidian";
import { DeepSeekCompletionClient } from "./completion";
import {
  acceptActiveCompletion,
  clearAllInlineCompletions,
  createInlineCompleteExtension,
  dismissActiveCompletion,
  hasActiveCompletion,
  triggerActiveCompletion
} from "./editorExtension";
import { InlineCompleteSettingTab, sanitizeSettings } from "./settings";
import { DEFAULT_SETTINGS, InlineCompleteSettings, InlineCompleteStatus } from "./types";

export default class InlineCompletePlugin extends Plugin {
  settings: InlineCompleteSettings;
  private statusBarEl: HTMLElement;
  private statusClearTimer: number | null = null;

  async onload(): Promise<void> {
    await this.loadSettings();
    document
      .querySelectorAll<HTMLElement>("[data-inline-complete-status]")
      .forEach((element) => element.remove());
    this.statusBarEl = this.addStatusBarItem();
    this.statusBarEl.addClass("inline-complete-status");
    this.setStatus(this.settings.enabled ? "idle" : "disabled");

    const client = new DeepSeekCompletionClient(this.app, () => this.settings);
    this.registerEditorExtension(
      createInlineCompleteExtension({
        getSettings: () => this.settings,
        getFilePath: () => this.app.workspace.getActiveFile()?.path ?? "",
        client,
        setStatus: (status, detail, clearAfterMs) => this.setStatus(status, detail, clearAfterMs)
      })
    );

    this.addSettingTab(new InlineCompleteSettingTab(this.app, this));
    this.addCommands();
  }

  onunload(): void {
    clearAllInlineCompletions();
    this.statusBarEl?.remove();
    if (this.statusClearTimer !== null) {
      window.clearTimeout(this.statusClearTimer);
      this.statusClearTimer = null;
    }
  }

  async loadSettings(): Promise<void> {
    this.settings = sanitizeSettings({
      ...DEFAULT_SETTINGS,
      ...(await this.loadData())
    });
  }

  async saveSettings(): Promise<void> {
    this.settings = sanitizeSettings(this.settings);
    await this.saveData(this.settings);
    this.setStatus(this.settings.enabled ? "idle" : "disabled");
  }

  setStatus(status: InlineCompleteStatus, detail?: string, clearAfterMs?: number): void {
    if (this.statusClearTimer !== null) {
      window.clearTimeout(this.statusClearTimer);
      this.statusClearTimer = null;
    }

    if (!this.statusBarEl) {
      return;
    }

    this.statusBarEl.toggleClass("inline-complete-status-hidden", !this.settings.showStatusBar);
    if (!this.settings.showStatusBar) {
      this.statusBarEl.setText("");
      return;
    }

    this.statusBarEl.setText(`Inline: ${detail ? `${status} ${detail}` : status}`);
    this.statusBarEl.dataset.inlineCompleteStatus = status;

    if (clearAfterMs !== undefined) {
      this.statusClearTimer = window.setTimeout(() => {
        this.statusClearTimer = null;
        this.setStatus(this.settings.enabled ? "idle" : "disabled");
      }, clearAfterMs);
    }
  }

  private addCommands(): void {
    this.addCommand({
      id: "accept-inline-completion",
      name: "Accept inline completion",
      hotkeys: [{ modifiers: [], key: "Tab" }],
      editorCheckCallback: (checking) => {
        if (!this.hasActiveMarkdownView() || !hasActiveCompletion()) {
          return false;
        }
        if (!checking) {
          return acceptActiveCompletion();
        }
        return true;
      }
    });

    this.addCommand({
      id: "dismiss-inline-completion",
      name: "Dismiss inline completion",
      hotkeys: [{ modifiers: [], key: "Escape" }],
      editorCheckCallback: (checking) => {
        if (!this.hasActiveMarkdownView() || !hasActiveCompletion()) {
          return false;
        }
        if (!checking) {
          return dismissActiveCompletion();
        }
        return true;
      }
    });

    this.addCommand({
      id: "trigger-inline-completion",
      name: "Trigger inline completion",
      hotkeys: [{ modifiers: ["Mod"], key: " " }],
      editorCheckCallback: (checking) => {
        if (!this.hasActiveMarkdownView()) {
          return false;
        }
        if (!checking) {
          return triggerActiveCompletion();
        }
        return true;
      }
    });
  }

  private hasActiveMarkdownView(): boolean {
    return this.app.workspace.getActiveViewOfType(MarkdownView) !== null;
  }
}
