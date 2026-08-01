import { formatMathSegment, normalizeInlineMathDelimiters } from "./math";
import { scanSegments } from "./segments";
import type { Segment } from "./segments";
import type { FormatResult, FormatterOptions } from "./types";
import { resolveOptions } from "./types";
import { lintMarkdown } from "./lint";
import { capitalizeHeadingTitle, capitalizeSentenceStarts, capitalizeTitleText } from "./prose";
import type { SentenceCapitalizationResult } from "./prose";

export function formatMarkdown(source: string, options: Partial<FormatterOptions> = {}): FormatResult {
  const resolved = resolveOptions(options);
  const segments = scanSegments(source);
  const output: string[] = [];
  let atSentenceStart = true;
  let preserveSentenceStateAcrossBlankLines = false;
  let previousLineWasMergeableProse = false;
  let inListBlock = false;
  let latexEnvironmentDepth = 0;
  let inParenthesizedMath = false;

  for (let segmentIndex = 0; segmentIndex < segments.length; segmentIndex += 1) {
    const segment = segments[segmentIndex];
    if (segment === undefined) {
      continue;
    }

    if (segment.kind === "frontmatter" || segment.kind === "code") {
      appendProtectedBlock(output, segment.lines);
      atSentenceStart = true;
      preserveSentenceStateAcrossBlankLines = false;
      previousLineWasMergeableProse = false;
      inListBlock = false;
      latexEnvironmentDepth = 0;
      inParenthesizedMath = false;
      continue;
    }

    if (segment.kind === "math") {
      const formattedMath = formatMathSegment(segment, resolved);
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      appendProtectedBlock(output, formattedMath);
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      if (resolved.capitalizeSentenceStarts) {
        atSentenceStart = sentenceStateAfterMathBlock(formattedMath, atSentenceStart);
        preserveSentenceStateAcrossBlankLines = true;
      }
      previousLineWasMergeableProse = false;
      inListBlock = false;
      latexEnvironmentDepth = 0;
      inParenthesizedMath = false;
      continue;
    }

    const line = segment.lines[0] ?? "";
    const isBlankLine = line.trim().length === 0;
    const trimmedLine = line.trim();
    const latexBegins = countMatches(trimmedLine, /\\begin\{[^}]+\}/g);
    const latexEnds = countMatches(trimmedLine, /\\end\{[^}]+\}/g);
    const isLatexEnvironmentLine = latexEnvironmentDepth > 0 || latexBegins > 0 || latexEnds > 0;
    latexEnvironmentDepth = Math.max(0, latexEnvironmentDepth + latexBegins - latexEnds);
    const startsParenthesizedMath = !inParenthesizedMath && /^\\\(/.test(trimmedLine) && !/\\\)/.test(trimmedLine);
    const isParenthesizedMathLine =
      inParenthesizedMath || startsParenthesizedMath || /^\\\)\s*[.,;:]?$/.test(trimmedLine);
    if (startsParenthesizedMath) {
      inParenthesizedMath = true;
    }
    if (inParenthesizedMath && /\\\)\s*[.,;:]?$/.test(trimmedLine)) {
      inParenthesizedMath = false;
    }
    if (isBlankLine) {
      inListBlock = false;
    } else if (isListItemLine(line)) {
      inListBlock = true;
    } else if (startsIndependentMarkdownBlock(line)) {
      inListBlock = false;
    }
    const markdownFormatted = formatMarkdownLine(line, resolved);
    const isSetextTitle = isSetextHeadingText(line, segments[segmentIndex + 1]);
    const titleFormatted = resolved.capitalizeTitleWords
      ? isSetextTitle
        ? capitalizeTitleText(markdownFormatted)
        : capitalizeHeadingTitle(markdownFormatted)
      : markdownFormatted;
    const hasTitleFormatting = resolved.capitalizeTitleWords && (isSetextTitle || isTitleHeading(titleFormatted));
    const proseFormatted: SentenceCapitalizationResult =
      resolved.capitalizeSentenceStarts && !hasTitleFormatting
        ? capitalizeSentenceStarts(titleFormatted, atSentenceStart)
        : { text: titleFormatted, atSentenceStart };
    const formatted = proseFormatted.text;
    if (!(isBlankLine && preserveSentenceStateAcrossBlankLines)) {
      atSentenceStart = proseFormatted.atSentenceStart;
    }
    if (!isBlankLine) {
      preserveSentenceStateAcrossBlankLines = false;
    }
    if (isHeading(formatted)) {
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      appendLine(output, formatted, resolved.maxConsecutiveBlankLines);
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      atSentenceStart = true;
      previousLineWasMergeableProse = false;
    } else {
      const mergeableProse =
        resolved.joinProseLines &&
        !inListBlock &&
        !isLatexEnvironmentLine &&
        !isParenthesizedMathLine &&
        isMergeableProseLine(line, formatted, isSetextTitle);
      if (mergeableProse && previousLineWasMergeableProse) {
        joinWithPreviousLine(output, formatted);
      } else {
        appendLine(output, formatted, resolved.maxConsecutiveBlankLines);
      }
      previousLineWasMergeableProse = mergeableProse;
    }
  }

  while (output.length > 0 && (output[output.length - 1]?.trim() ?? "") === "") {
    output.pop();
  }

  const text = `${output.join("\n")}\n`;
  return {
    text,
    changed: text !== source,
    warnings: lintMarkdown(text, resolved)
  };
}

function appendProtectedBlock(output: string[], lines: string[]): void {
  for (const line of lines) {
    output.push(line);
  }
}

function appendLine(output: string[], line: string, maxBlankLines: number): void {
  if (line.trim().length === 0) {
    ensureBlankLine(output, maxBlankLines);
    return;
  }

  output.push(line);
}

function ensureBlankLine(output: string[], maxBlankLines: number): void {
  if (maxBlankLines === 0 || output.length === 0) {
    return;
  }

  let trailingBlankLines = 0;
  for (let index = output.length - 1; index >= 0; index -= 1) {
    if ((output[index]?.trim() ?? "") !== "") {
      break;
    }
    trailingBlankLines += 1;
  }

  if (trailingBlankLines < maxBlankLines) {
    output.push("");
  }
}

function joinWithPreviousLine(output: string[], line: string): void {
  const previousIndex = output.length - 1;
  const previous = output[previousIndex];
  if (previous === undefined || previous.trim().length === 0) {
    output.push(line);
    return;
  }

  output[previousIndex] = `${previous.replace(/[ \t]+$/g, "")} ${line.trimStart()}`;
}

function formatMarkdownLine(line: string, options: FormatterOptions): string {
  const withoutTrailingWhitespace = line.replace(/[ \t]+$/g, "");
  const normalizedMath = options.normalizeMathDelimiters
    ? normalizeInlineMathDelimiters(withoutTrailingWhitespace)
    : withoutTrailingWhitespace;

  if (!options.normalizeListMarkers || /^\s*>/.test(normalizedMath)) {
    return normalizedMath;
  }

  const unordered = normalizedMath.match(/^(\s*)[*+](\s+)/);
  if (unordered !== null) {
    return `${unordered[1]}-${normalizedMath.slice(unordered[1].length + 1)}`;
  }

  const ordered = normalizedMath.match(/^(\s*)(\d+)[.)](\s+)/);
  if (ordered !== null) {
    return `${ordered[1]}${ordered[2]}.${normalizedMath.slice(ordered[0].length - ordered[3].length)}`;
  }

  return normalizedMath;
}

function isHeading(line: string): boolean {
  return /^(#{1,6})\s+\S/.test(line);
}

function isTitleHeading(line: string): boolean {
  return /^\s*(?:>\s*)*#{1,6}[ \t]+\S/.test(line);
}

function isMergeableProseLine(rawLine: string, formattedLine: string, isSetextTitle: boolean): boolean {
  if (isSetextTitle || rawLine.trim().length === 0 || hasExplicitHardBreak(rawLine)) {
    return false;
  }

  if (/^(?: +|\t)/.test(rawLine)) {
    return false;
  }

  const content = formattedLine.trim();
  if (
    content.length === 0 ||
    startsIndependentMarkdownBlock(content) ||
    isLikelyTableRow(content) ||
    isStandaloneInlineMath(content) ||
    isStandaloneEmbed(content) ||
    isStandaloneTechnicalExpression(content) ||
    isStrongFieldLabel(content) ||
    /^(?:\[\^[^\]]+\]|\[[^\]]+\]):\s*/.test(content) ||
    /^\^[\p{L}\p{N}][\p{L}\p{N}_-]*$/u.test(content) ||
    /^[^\s:][^:]*::\s*/.test(content) ||
    /^:[^\s]*:+$/.test(content) ||
    /^(?:[=+*/]|-(?!\s))/.test(content) ||
    /^\\[A-Za-z]+(?:\{|\s|_)/.test(content)
  ) {
    return false;
  }

  return true;
}

function isListItemLine(line: string): boolean {
  return /^(?: {0,3})(?:[-+*•–—]|\d+[.)、．]|\[\d+\]|\([A-Za-z0-9]+\)|（[A-Za-z0-9一二三四五六七八九十]+）|[一二三四五六七八九十]+[、.．])\s+/.test(
    line
  );
}

function startsIndependentMarkdownBlock(line: string): boolean {
  const content = line.trimStart();
  return (
    /^(?:#{1,6}(?:\s+|$)|>|`{3,}|~{3,}|\$\$|\\\[|<!--|%%|:::)/.test(content) ||
    /^(?:\\begin|\\end|\\label|\\tag)\b/.test(content) ||
    isListItemLine(line) ||
    /^(?:(?:-\s*){3,}|(?:_\s*){3,}|(?:\*\s*){3,}|[–—]{3,})$/.test(content) ||
    /^<(?:\/?[A-Za-z][^>]*|![A-Z]+[^>]*)>/.test(content)
  );
}

function hasExplicitHardBreak(line: string): boolean {
  return / {2,}$/.test(line) || /\\\s*$/.test(line);
}

function isLikelyTableRow(line: string): boolean {
  const pipeCount = line.match(/\|/g)?.length ?? 0;
  return line.startsWith("|") || pipeCount >= 2 || /\s\|\s/.test(line);
}

function isStandaloneInlineMath(line: string): boolean {
  return /^(?:\${1,2}.+\${1,2}|\\\(.+\\\))[.,;:]?$/.test(line);
}

function isStandaloneEmbed(line: string): boolean {
  return /^(?:!\[\[[^\]]+\]\]|!\[[^\]]*\]\([^)]*\))$/.test(line);
}

function isStandaloneTechnicalExpression(line: string): boolean {
  return /^(?:[A-Za-z]|\p{Script=Greek})$/u.test(line);
}

function isStrongFieldLabel(line: string): boolean {
  return /^(?:(?:\*\*[^*]+\*\*|__[^_]+__)\s*[:：].*|\*\*[\s\S]+\*\*|__[\s\S]+__)\s*$/.test(line);
}

function countMatches(text: string, pattern: RegExp): number {
  return text.match(pattern)?.length ?? 0;
}

function isSetextHeadingText(line: string, nextSegment: Segment | undefined): boolean {
  if (nextSegment?.kind !== "line" || !/^\s*(?:=+|-+)\s*$/.test(nextSegment.lines[0] ?? "")) {
    return false;
  }

  const trimmed = line.trim();
  if (
    trimmed.length === 0 ||
    /^(?:#{1,6}\s|>|<!--|```|~~~|\$\$|\\\[)/.test(trimmed) ||
    /^(?:[-+*]|\d+[.)])\s+/.test(trimmed)
  ) {
    return false;
  }

  return true;
}

function sentenceStateAfterMathBlock(lines: string[], previousState: boolean): boolean {
  const content = lines
    .map((line) =>
      line
        .replace(/\$\$/g, "")
        .replace(/\\(?:begin|end)\{[^}]+\}/g, "")
        .replace(/\\(?:label|tag)\{[^}]*\}\s*$/g, "")
        .replace(/\\\\(?:\[[^\]]+\])?\s*$/g, "")
        .trim()
    )
    .filter((line) => line.length > 0);
  const finalLine = content[content.length - 1];
  if (finalLine === undefined) {
    return previousState;
  }

  if (/\\(?:left|right)\.$/.test(finalLine)) {
    return false;
  }

  return /[.!?]$/.test(finalLine);
}
