export interface CompletionContextRange {
  beforeFrom: number;
  afterTo: number;
}

export function allocateContextRange(
  documentLength: number,
  cursor: number,
  contextChars: number
): CompletionContextRange {
  const safeDocumentLength = Math.max(0, documentLength);
  const safeCursor = Math.max(0, Math.min(safeDocumentLength, cursor));
  const budget = Math.max(0, Math.min(safeDocumentLength, Math.round(contextChars)));
  const preferredAfterLength = Math.floor(budget * 0.3);

  let afterLength = Math.min(safeDocumentLength - safeCursor, preferredAfterLength);
  const beforeLength = Math.min(safeCursor, budget - afterLength);
  const unusedBudget = budget - beforeLength - afterLength;
  afterLength += Math.min(safeDocumentLength - safeCursor - afterLength, unusedBudget);

  return {
    beforeFrom: safeCursor - beforeLength,
    afterTo: safeCursor + afterLength
  };
}

export function hasMinimumPrefix(text: string, minimumCharacters: number): boolean {
  return text.replace(/\s/g, "").length >= minimumCharacters;
}

export function isCompatibleInlineStructure(textBefore: string, completion: string): boolean {
  const currentLine = textBefore.slice(textBefore.lastIndexOf("\n") + 1);
  if (!currentLine.trim()) {
    return true;
  }

  if (/\r?\n/.test(completion)) {
    return false;
  }

  return !/^[\t ]*(?:#{1,6}\s|[-*+]\s|\d+[.)]\s|>\s|```|~~~|\$\$|\\\[)/.test(completion);
}

export function isInsideMarkdownMath(text: string, index: number): boolean {
  return scanMathDelimiter(text, Math.max(0, Math.min(text.length, index))) !== null;
}

export function hasBalancedMathDelimiters(text: string): boolean {
  return scanMathDelimiter(text, text.length) === null;
}

function scanMathDelimiter(text: string, end: number): "$" | "$$" | "\\(" | "\\[" | null {
  let delimiter: "$" | "$$" | "\\(" | "\\[" | null = null;

  for (let index = 0; index < end; index += 1) {
    if (delimiter === "\\(" && text.startsWith("\\)", index)) {
      delimiter = null;
      index += 1;
      continue;
    }
    if (delimiter === "\\[" && text.startsWith("\\]", index)) {
      delimiter = null;
      index += 1;
      continue;
    }
    if (delimiter === "$$" && text.startsWith("$$", index) && !isEscaped(text, index)) {
      delimiter = null;
      index += 1;
      continue;
    }
    if (delimiter === "$" && text[index] === "$" && !isEscaped(text, index)) {
      delimiter = null;
      continue;
    }
    if (delimiter !== null) {
      continue;
    }

    if (text.startsWith("\\(", index)) {
      delimiter = "\\(";
      index += 1;
    } else if (text.startsWith("\\[", index)) {
      delimiter = "\\[";
      index += 1;
    } else if (text.startsWith("$$", index) && !isEscaped(text, index)) {
      delimiter = "$$";
      index += 1;
    } else if (text[index] === "$" && !isEscaped(text, index)) {
      delimiter = "$";
    }
  }

  return delimiter;
}

function isEscaped(text: string, index: number): boolean {
  let backslashes = 0;
  for (let cursor = index - 1; cursor >= 0 && text[cursor] === "\\"; cursor -= 1) {
    backslashes += 1;
  }
  return backslashes % 2 === 1;
}
