export interface InlineCompleteSettings {
  enabled: boolean;
  autoTrigger: boolean;
  showStatusBar: boolean;
  debugLogging: boolean;
  triggerAfterAccept: boolean;
  triggerAfterAcceptDelayMs: number;
  maxAcceptChain: number;
  completeSentence: boolean;
  sentenceMaxTokens: number;
  provider: "deepseek";
  baseUrl: string;
  model: string;
  secretId: string;
  debounceMs: number;
  maxTokens: number;
  temperature: number;
  contextChars: number;
  minPrefixChars: number;
}

export const DEFAULT_SETTINGS: InlineCompleteSettings = {
  enabled: true,
  autoTrigger: true,
  showStatusBar: true,
  debugLogging: false,
  triggerAfterAccept: false,
  triggerAfterAcceptDelayMs: 150,
  maxAcceptChain: 3,
  completeSentence: true,
  sentenceMaxTokens: 64,
  provider: "deepseek",
  baseUrl: "https://api.deepseek.com/beta",
  model: "deepseek-v4-flash",
  secretId: "inline-complete-deepseek-api-key",
  debounceMs: 300,
  maxTokens: 48,
  temperature: 0,
  contextChars: 4000,
  minPrefixChars: 20
};

export interface CompletionContext {
  filePath: string;
  textBefore: string;
  textAfter: string;
}

export interface CompletionClient {
  complete(context: CompletionContext): Promise<CompletionResult>;
}

export type CompletionResult =
  | { status: "ok"; text: string; diagnostics: CompletionDiagnostics }
  | { status: "empty"; diagnostics: CompletionDiagnostics }
  | { status: "missing-key" }
  | { status: "http-error"; message: string }
  | { status: "error"; message: string };

export type EmptyCompletionReason =
  | "no-choice"
  | "no-text-content"
  | "invalid-json-response"
  | "blank-response"
  | "duplicate-prefix"
  | "incompatible-structure"
  | "blank-after-cleaning";

export interface CompletionDiagnostics {
  reason?: EmptyCompletionReason;
  finishReason?: string;
  rawLength: number;
  cleanedLength: number;
}

export type InlineCompleteStatus =
  | "idle"
  | "waiting"
  | "generating"
  | "ready"
  | "empty"
  | "error"
  | "disabled";

export type InlineCompleteStatusReporter = (
  status: InlineCompleteStatus,
  detail?: string,
  clearAfterMs?: number
) => void;
