import type { Segment } from "./segments";
import type { FormatterOptions } from "./types";

export interface MathContent {
  content: string[];
  openingLine: string;
  closingLine: string;
}

export interface TopEnvironment {
  name: string;
  startIndex: number;
  endIndex: number;
}

const ALIGN_ENVIRONMENTS = new Set(["align", "align*", "aligned"]);

export function normalizeInlineMathDelimiters(line: string): string {
  if (!line.includes("\\(") || !line.includes("\\)")) {
    return line;
  }

  const output: string[] = [];
  let textStart = 0;
  let cursor = 0;

  while (cursor < line.length) {
    if (line[cursor] !== "`") {
      cursor += 1;
      continue;
    }

    const delimiterLength = countRun(line, cursor, "`");
    const closing = findMatchingBacktickRun(line, cursor + delimiterLength, delimiterLength);
    if (closing === -1) {
      cursor += delimiterLength;
      continue;
    }

    output.push(normalizeInlineMathInText(line.slice(textStart, cursor)));
    output.push(line.slice(cursor, closing + delimiterLength));
    cursor = closing + delimiterLength;
    textStart = cursor;
  }

  output.push(normalizeInlineMathInText(line.slice(textStart)));
  return output.join("");
}

export function extractMathContent(segment: Segment): MathContent {
  const raw = segment.lines.join("\n").trim();
  const withoutOpening = segment.fence === "bracket" ? raw.replace(/^\\\[\s*/, "") : raw.replace(/^\$\$\s*/, "");
  const inner = segment.fence === "bracket" ? withoutOpening.replace(/\s*\\\]$/, "") : withoutOpening.replace(/\s*\$\$$/, "");
  const content = trimOuterBlankLines(inner.split("\n").map((line) => line.replace(/[ \t]+$/g, "")));

  return {
    content,
    openingLine: segment.lines[0] ?? "",
    closingLine: segment.lines[segment.lines.length - 1] ?? ""
  };
}

export function formatMathSegment(segment: Segment, options: FormatterOptions): string[] {
  const { content: rawContent } = extractMathContent(segment);
  if (!options.normalizeMathDelimiters) {
    return segment.lines.map((line) => line.replace(/[ \t]+$/g, ""));
  }

  const content = normalizeTopLevelAlignEnvironment(rawContent);

  if (content.length === 0) {
    return ["$$", "$$"];
  }

  const topEnvironment = getTopEnvironment(content);
  if (topEnvironment !== null && ALIGN_ENVIRONMENTS.has(topEnvironment.name)) {
    return formatTopLevelEnvironment(normalizeRowsInTopLevelEnvironment(content, topEnvironment), topEnvironment);
  }

  if (containsLatexEnvironment(content)) {
    return ["$$", ...content, "$$"];
  }

  const simpleContent = normalizeMathRows(content);
  if (options.wrapSimpleDisplayMathInAlign) {
    return ["$$\\begin{align}", ...simpleContent, "\\end{align}$$"];
  }

  return ["$$", ...simpleContent, "$$"];
}

export function getTopEnvironment(content: string[]): TopEnvironment | null {
  const startIndex = content.findIndex((line) => line.trim().length > 0);
  if (startIndex === -1) {
    return null;
  }

  let endIndex = content.length - 1;
  while (endIndex >= startIndex && content[endIndex]?.trim().length === 0) {
    endIndex -= 1;
  }

  const start = content[startIndex]?.trim() ?? "";
  const end = content[endIndex]?.trim() ?? "";
  const startMatch = start.match(/^\\begin\{([^}]+)\}$/);
  const endMatch = end.match(/^\\end\{([^}]+)\}$/);

  if (startMatch === null || endMatch === null || startMatch[1] !== endMatch[1]) {
    return null;
  }

  return {
    name: startMatch[1],
    startIndex,
    endIndex
  };
}

export function isAlignEnvironment(name: string): boolean {
  return ALIGN_ENVIRONMENTS.has(name);
}

export function containsLatexEnvironment(content: string[]): boolean {
  return content.some((line) => /\\begin\{[^}]+\}/.test(line));
}

function formatTopLevelEnvironment(content: string[], environment: TopEnvironment): string[] {
  const before = content.slice(0, environment.startIndex);
  const body = content.slice(environment.startIndex + 1, environment.endIndex);
  const after = content.slice(environment.endIndex + 1);

  return [
    ...before,
    `$$\\begin{${environment.name}}`,
    ...body,
    `\\end{${environment.name}}$$`,
    ...after
  ];
}

function normalizeTopLevelAlignEnvironment(content: string[]): string[] {
  const startIndex = content.findIndex((line) => line.trim().length > 0);
  if (startIndex === -1) {
    return content;
  }

  let endIndex = content.length - 1;
  while (endIndex >= startIndex && (content[endIndex]?.trim().length ?? 0) === 0) {
    endIndex -= 1;
  }

  const block = content.slice(startIndex, endIndex + 1).join("\n").trim();
  const beginMatch = block.match(/^\\begin\{(align\*?|aligned)\}/);
  if (beginMatch === null) {
    return content;
  }

  const environmentName = beginMatch[1];
  const beginToken = `\\begin{${environmentName}}`;
  const endToken = `\\end{${environmentName}}`;
  if (!block.endsWith(endToken)) {
    return content;
  }

  const inner = block.slice(beginToken.length, block.length - endToken.length);
  const body = trimOuterBlankLines(inner.split("\n").map((line) => line.replace(/[ \t]+$/g, "")));
  if (!inner.startsWith("\n") && body[0] !== undefined) {
    body[0] = body[0].trimStart();
  }

  return [
    ...content.slice(0, startIndex),
    beginToken,
    ...normalizeMathRows(body),
    endToken,
    ...content.slice(endIndex + 1)
  ];
}

function normalizeRowsInTopLevelEnvironment(content: string[], environment: TopEnvironment): string[] {
  const before = content.slice(0, environment.startIndex + 1);
  const body = content.slice(environment.startIndex + 1, environment.endIndex);
  const after = content.slice(environment.endIndex);

  return [...before, ...normalizeMathRows(body), ...after];
}

function normalizeMathRows(lines: string[]): string[] {
  return splitRowsAtLatexBreaks(mergeSourceOnlyLineBreaks(lines));
}

function mergeSourceOnlyLineBreaks(lines: string[]): string[] {
  const output: string[] = [];

  for (const line of lines) {
    const trimmedRight = line.replace(/[ \t]+$/g, "");
    const previous = output[output.length - 1];

    if (previous !== undefined && shouldMergeWithPrevious(trimmedRight, previous)) {
      output[output.length - 1] = joinMathSourceLines(previous, trimmedRight);
      continue;
    }

    output.push(trimmedRight);
  }

  return output;
}

function shouldMergeWithPrevious(line: string, previous: string): boolean {
  const trimmed = line.trimStart();
  if (trimmed.length === 0 || previous.trim().length === 0 || endsWithLatexRowBreak(previous)) {
    return false;
  }

  if (containsEnvironmentBoundary(trimmed) || containsEnvironmentBoundary(previous)) {
    return false;
  }

  if (isPreviousLineIncomplete(previous)) {
    return true;
  }

  if (isSourceOnlyContinuation(trimmed)) {
    return true;
  }

  const previousHasRelation = containsRelation(previous);
  const currentHasRelation = containsRelation(trimmed);
  if (previousHasRelation && currentHasRelation) {
    return false;
  }

  if (previousHasRelation && !currentHasRelation && startsWithMathAtom(trimmed)) {
    return true;
  }

  if (!previousHasRelation && currentHasRelation && startsWithMathAtom(trimmed)) {
    return true;
  }

  if (looksLikeNewAlignRow(trimmed)) {
    return false;
  }

  return false;
}

function joinMathSourceLines(previous: string, line: string): string {
  return `${previous.trimEnd()} ${line.trimStart()}`;
}

function isPreviousLineIncomplete(line: string): boolean {
  return /(?:[=+\-*/({[,&]|\\(?:quad|qquad|cdot|times|wedge|otimes|oplus))\s*$/.test(line.trimEnd());
}

function looksLikeNewAlignRow(trimmed: string): boolean {
  return !/^[&=+\-*/,.:;]/.test(trimmed) && /&\s*(?:[=:<>]|\\(?:le|ge|sim|simeq|propto|equiv|in|to)\b)/.test(trimmed);
}

function isSourceOnlyContinuation(trimmed: string): boolean {
  return /^(?:[&=+*/,:;]|[-−](?=\s|\\|[A-Za-z0-9({])|\\(?:quad|qquad|left|right|frac|dfrac|tfrac|sqrt|cdot|times|wedge|otimes|oplus|le|ge|sim|simeq|propto|to|mapsto|rightarrow|leftarrow|leftrightarrow|longrightarrow|longleftarrow|longleftrightarrow|hookrightarrow|twoheadrightarrow|xrightarrow|partial|nabla|mathrm|mathcal|operatorname)\b)/.test(trimmed);
}

function containsEnvironmentBoundary(line: string): boolean {
  return /\\(?:begin|end)\{[^}]+\}/.test(line);
}

function containsRelation(line: string): boolean {
  return /(?:[=<>]|\\(?:leq?|geq?|sim|simeq|approx|propto|equiv|in|to|mapsto|subset|supset)\b)/.test(line);
}

function startsWithMathAtom(trimmed: string): boolean {
  return /^(?:[({[]|[A-Za-z0-9]|\\[A-Za-z]+)/.test(trimmed);
}

function splitRowsAtLatexBreaks(lines: string[]): string[] {
  return lines.flatMap((line) => splitLineAtLatexBreaks(line));
}

function splitLineAtLatexBreaks(line: string): string[] {
  const trimmedRight = line.replace(/[ \t]+$/g, "");
  const output: string[] = [];
  const rowBreak = /\\\\(?:\[[^\]]+\])?/g;
  let cursor = 0;

  while (rowBreak.exec(trimmedRight) !== null) {
    const nextText = trimmedRight.slice(rowBreak.lastIndex);
    if (nextText.trim().length === 0) {
      continue;
    }

    const row = trimmedRight.slice(cursor, rowBreak.lastIndex).trimEnd();
    if (row.trim().length > 0) {
      output.push(output.length === 0 ? row : row.trimStart());
    }

    cursor = rowBreak.lastIndex;
    while (cursor < trimmedRight.length && /\s/.test(trimmedRight[cursor] ?? "")) {
      cursor += 1;
    }
    rowBreak.lastIndex = cursor;
  }

  if (output.length === 0) {
    return [trimmedRight];
  }

  const rest = trimmedRight.slice(cursor).trimStart();
  if (rest.length > 0) {
    output.push(rest);
  }

  return output;
}

function endsWithLatexRowBreak(line: string): boolean {
  return /\\\\(?:\[[^\]]+\])?\s*$/.test(line);
}

function trimOuterBlankLines(lines: string[]): string[] {
  let start = 0;
  let end = lines.length;

  while (start < end && (lines[start]?.trim() ?? "") === "") {
    start += 1;
  }

  while (end > start && (lines[end - 1]?.trim() ?? "") === "") {
    end -= 1;
  }

  return lines.slice(start, end);
}

function normalizeInlineMathInText(text: string): string {
  const output: string[] = [];
  let textStart = 0;
  let cursor = 0;

  while (cursor < text.length - 1) {
    if (!isUnescapedDelimiter(text, cursor, "\\(")) {
      cursor += 1;
      continue;
    }

    const closing = findInlineMathEnd(text, cursor + 2);
    if (closing === -1) {
      cursor += 2;
      continue;
    }

    output.push(text.slice(textStart, cursor), "$", text.slice(cursor + 2, closing), "$");
    cursor = closing + 2;
    textStart = cursor;
  }

  output.push(text.slice(textStart));
  return output.join("");
}

function findInlineMathEnd(text: string, start: number): number {
  for (let index = start; index < text.length - 1; index += 1) {
    if (isUnescapedDelimiter(text, index, "\\(")) {
      return -1;
    }

    if (isUnescapedDelimiter(text, index, "\\)")) {
      return index;
    }
  }

  return -1;
}

function isUnescapedDelimiter(text: string, index: number, delimiter: "\\(" | "\\)"): boolean {
  if (!text.startsWith(delimiter, index)) {
    return false;
  }

  let precedingBackslashes = 0;
  for (let cursor = index - 1; cursor >= 0 && text[cursor] === "\\"; cursor -= 1) {
    precedingBackslashes += 1;
  }

  return precedingBackslashes % 2 === 0;
}

function findMatchingBacktickRun(text: string, start: number, delimiterLength: number): number {
  let cursor = start;

  while (cursor < text.length) {
    if (text[cursor] !== "`") {
      cursor += 1;
      continue;
    }

    const runLength = countRun(text, cursor, "`");
    if (runLength === delimiterLength) {
      return cursor;
    }
    cursor += runLength;
  }

  return -1;
}

function countRun(text: string, start: number, character: string): number {
  let end = start;
  while (end < text.length && text[end] === character) {
    end += 1;
  }
  return end - start;
}
