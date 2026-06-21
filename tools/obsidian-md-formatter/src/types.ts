export type WarningSeverity = "info" | "warning" | "error";

export interface LintWarning {
  line: number;
  code: string;
  message: string;
  severity: WarningSeverity;
}

export interface FormatterOptions {
  formatOnOpen: boolean;
  formatOnSave: boolean;
  confirmManualFormat: boolean;
  normalizeMathDelimiters: boolean;
  wrapSimpleDisplayMathInAlign: boolean;
  normalizeListMarkers: boolean;
  maxConsecutiveBlankLines: number;
  showDiffBeforeApply: boolean;
}

export interface FormatResult {
  text: string;
  changed: boolean;
  warnings: LintWarning[];
}

export const DEFAULT_FORMATTER_OPTIONS: FormatterOptions = {
  formatOnOpen: true,
  formatOnSave: false,
  confirmManualFormat: false,
  normalizeMathDelimiters: true,
  wrapSimpleDisplayMathInAlign: true,
  normalizeListMarkers: true,
  maxConsecutiveBlankLines: 1,
  showDiffBeforeApply: false
};

export function resolveOptions(options: Partial<FormatterOptions> = {}): FormatterOptions {
  return {
    ...DEFAULT_FORMATTER_OPTIONS,
    ...options,
    maxConsecutiveBlankLines: Math.max(
      0,
      Math.floor(options.maxConsecutiveBlankLines ?? DEFAULT_FORMATTER_OPTIONS.maxConsecutiveBlankLines)
    )
  };
}
