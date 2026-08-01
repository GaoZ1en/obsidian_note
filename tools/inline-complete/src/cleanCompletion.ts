import {
  hasBalancedMathDelimiters,
  isCompatibleInlineStructure,
  isInsideMarkdownMath
} from "./context";
import type { CompletionDiagnostics } from "./types";

export function cleanCompletion(
  raw: string,
  textBefore: string,
  options: {
    missingReason?: CompletionDiagnostics["reason"];
    trimToSentence?: boolean;
  } = {}
): { text: string | null; diagnostics: CompletionDiagnostics } {
  const rawLength = raw.length;
  let text = raw
    .replace(/^```(?:markdown|md|text)?\s*/i, "")
    .replace(/\s*```$/i, "")
    .replace(/^\s*(?:completion|suggestion|续写)\s*:\s*/i, "");

  const beforePrefixTrim = text;
  text = trimRepeatedPrefix(text, textBefore);
  text = text.replace(/\n{4,}/g, "\n\n\n");
  if (!isCompatibleInlineStructure(textBefore, text)) {
    return incompatibleStructure(rawLength, text.length);
  }
  if (options.trimToSentence) {
    text = trimToFirstNaturalStop(text);
  }

  const currentLine = textBefore.slice(textBefore.lastIndexOf("\n") + 1);
  if (!hasBalancedMathDelimiters(currentLine + text)) {
    return incompatibleStructure(rawLength, text.length);
  }

  if (!text.trim()) {
    return {
      text: null,
      diagnostics: {
        reason: getEmptyReason(raw, beforePrefixTrim, text, options.missingReason),
        rawLength,
        cleanedLength: text.length
      }
    };
  }

  return {
    text,
    diagnostics: {
      rawLength,
      cleanedLength: text.length
    }
  };
}

function incompatibleStructure(
  rawLength: number,
  cleanedLength: number
): { text: null; diagnostics: CompletionDiagnostics } {
  return {
    text: null,
    diagnostics: {
      reason: "incompatible-structure",
      rawLength,
      cleanedLength
    }
  };
}

function trimRepeatedPrefix(completion: string, textBefore: string): string {
  const tail = textBefore.slice(-500);
  const maxOverlap = Math.min(tail.length, completion.length);

  for (let length = maxOverlap; length > 0; length -= 1) {
    if (tail.endsWith(completion.slice(0, length))) {
      return completion.slice(length);
    }
  }

  return completion;
}

function trimToFirstNaturalStop(text: string): string {
  const paragraphBreak = text.search(/\n\s*\n/);
  const scanLimit = paragraphBreak >= 0 ? paragraphBreak : text.length;

  for (let index = 0; index < scanLimit; index += 1) {
    const char = text[index];
    if (!/[.!?。！？]/.test(char)) {
      continue;
    }

    if (isInsideMarkdownMath(text, index)) {
      continue;
    }

    if (char === "." && shouldSkipPeriod(text, index, scanLimit)) {
      continue;
    }

    let end = index + 1;
    while (end < scanLimit && /["'”’)\]}]/.test(text[end])) {
      end += 1;
    }

    return text.slice(0, end).trimEnd();
  }

  if (paragraphBreak >= 0) {
    return text.slice(0, paragraphBreak).trimEnd();
  }

  return text;
}

function shouldSkipPeriod(text: string, index: number, scanLimit: number): boolean {
  const previous = text[index - 1] ?? "";
  const next = text[index + 1] ?? "";
  if (/\d/.test(previous) && /\d/.test(next)) {
    return true;
  }

  const previousWord = text.slice(Math.max(0, index - 12), index + 1).match(/([A-Za-z]\.){1,4}$/)?.[0];
  if (previousWord) {
    const nextNonSpace = text.slice(index + 1, scanLimit).match(/\S/)?.[0] ?? "";
    return Boolean(nextNonSpace && /[a-z]/.test(nextNonSpace));
  }

  return false;
}

function getEmptyReason(
  raw: string,
  beforePrefixTrim: string,
  afterPrefixTrim: string,
  missingReason?: CompletionDiagnostics["reason"]
): CompletionDiagnostics["reason"] {
  if (missingReason) {
    return missingReason;
  }

  if (!raw.trim()) {
    return "blank-response";
  }

  if (beforePrefixTrim.length > 0 && afterPrefixTrim.length === 0) {
    return "duplicate-prefix";
  }

  return "blank-after-cleaning";
}
