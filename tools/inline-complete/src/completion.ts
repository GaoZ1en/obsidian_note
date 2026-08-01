import { App, Notice, requestUrl } from "obsidian";
import { cleanCompletion } from "./cleanCompletion";
import type {
  CompletionClient,
  CompletionDiagnostics,
  CompletionContext,
  CompletionResult,
  InlineCompleteSettings
} from "./types";

interface DeepSeekChoice {
  text?: string;
  message?: {
    content?: string | null;
  };
  finish_reason?: string;
}

interface DeepSeekResponse {
  choices?: DeepSeekChoice[];
  error?: {
    message?: string;
  };
}

export class DeepSeekCompletionClient implements CompletionClient {
  private missingKeyNotified = false;

  constructor(
    private readonly app: App,
    private readonly getSettings: () => InlineCompleteSettings
  ) {}

  async complete(context: CompletionContext): Promise<CompletionResult> {
    const settings = this.getSettings();
    const apiKey = this.app.secretStorage.getSecret(settings.secretId);

    if (!apiKey) {
      if (!this.missingKeyNotified) {
        new Notice("Inline Complete: set a DeepSeek API key in plugin settings.");
        this.missingKeyNotified = true;
      }
      return { status: "missing-key" };
    }

    const url = `${settings.baseUrl.replace(/\/+$/, "")}/chat/completions`;
    let responseText;
    try {
      responseText = await requestUrl({
        url,
        method: "POST",
        contentType: "application/json",
        headers: {
          Authorization: `Bearer ${apiKey}`
        },
        body: JSON.stringify({
          model: settings.model,
          messages: buildCompletionMessages(context),
          thinking: { type: "disabled" },
          temperature: settings.temperature,
          max_tokens: getMaxTokens(context, settings),
          stream: false
        }),
        throw: false
      }).text;
    } catch (error) {
      return {
        status: "error",
        message: error instanceof Error ? error.message : "Network request failed"
      };
    }

    const parsed = parseDeepSeekResponse(responseText);
    if (!parsed.data) {
      const completionResult: Extract<CompletionResult, { status: "empty" }> = {
        status: "empty",
        diagnostics: {
          reason: parsed.reason,
          rawLength: responseText.length,
          cleanedLength: 0
        }
      };
      logDiagnostics(settings, completionResult);
      return completionResult;
    }

    if (parsed.data.error?.message) {
      const message = getErrorMessage(parsed.data);
      new Notice(`Inline Complete: ${message}`);
      return { status: "http-error", message };
    }

    const data = parsed.data;
    const choice = data.choices?.[0];
    const raw = choice?.message?.content ?? choice?.text;
    const result = cleanCompletion(raw ?? "", context.textBefore, {
      missingReason: raw === undefined ? getMissingContentReason(data) : undefined,
      trimToSentence: settings.completeSentence
    });
    const diagnostics = {
      ...result.diagnostics,
      finishReason: choice?.finish_reason
    };
    const completionResult: Extract<CompletionResult, { status: "ok" | "empty" }> = result.text
      ? { status: "ok", text: result.text, diagnostics }
      : {
          status: "empty",
          diagnostics
        };

    logDiagnostics(settings, completionResult);
    return completionResult;
  }
}

function buildCompletionMessages(context: CompletionContext) {
  return [
    {
      role: "system",
      content:
        "You are an inline completion engine for Obsidian Markdown. Insert only the missing text at the cursor. Match the document's language, terminology, notation, Markdown structure, and logical direction. Resolve the immediately preceding clause using concepts already named in the nearest paragraph, and reuse nearby wording whenever it fits. Prefer a short, conservative continuation. Never infer a stronger or different claim. Do not introduce a new heading, list item, equation, citation, or wiki-link unless the text immediately before the cursor clearly starts one. Return only the text to insert, with no label, explanation, quotation marks, or code fence."
    },
    {
      role: "user",
      content: [
        `File path: ${JSON.stringify(context.filePath)}`,
        `Text before the cursor, as a JSON string: ${JSON.stringify(context.textBefore)}`,
        `Text after the cursor, as a JSON string: ${JSON.stringify(context.textAfter)}`,
        getInsertionFormatInstruction(context.textBefore)
      ].join("\n")
    }
  ];
}

function getInsertionFormatInstruction(textBefore: string): string {
  const currentLine = textBefore.slice(textBefore.lastIndexOf("\n") + 1);
  if (!currentLine.trim()) {
    return "Insertion format: begin a new Markdown block only if it follows naturally from the preceding block.";
  }

  return "Insertion format: continue the current non-empty Markdown line. Do not start a newline, heading, list item, block quote, code fence, or display equation.";
}

function getMaxTokens(context: CompletionContext, settings: InlineCompleteSettings): number {
  if (!settings.completeSentence || endsAtSentenceBoundary(context.textBefore)) {
    return settings.maxTokens;
  }

  return Math.max(settings.maxTokens, settings.sentenceMaxTokens);
}

function endsAtSentenceBoundary(text: string): boolean {
  const trimmed = text.trimEnd();
  return /[.!?。！？]\s*$/.test(trimmed);
}

function logDiagnostics(
  settings: InlineCompleteSettings,
  result: Extract<CompletionResult, { status: "ok" | "empty" }>
): void {
  if (!settings.debugLogging) {
    return;
  }

  console.debug("Inline Complete diagnostics", {
    status: result.status,
    diagnostics: result.diagnostics
  });
}

function getErrorMessage(response: DeepSeekResponse): string {
  return response.error?.message ?? "DeepSeek request failed";
}

function parseDeepSeekResponse(text: string): {
  data: DeepSeekResponse | null;
  reason: CompletionDiagnostics["reason"];
} {
  if (!text.trim()) {
    return { data: null, reason: "blank-response" };
  }

  try {
    return { data: JSON.parse(text) as DeepSeekResponse, reason: undefined };
  } catch {
    return { data: null, reason: "invalid-json-response" };
  }
}

function getMissingContentReason(response: DeepSeekResponse): CompletionDiagnostics["reason"] {
  if (!response.choices?.length) {
    return "no-choice";
  }

  return "no-text-content";
}
