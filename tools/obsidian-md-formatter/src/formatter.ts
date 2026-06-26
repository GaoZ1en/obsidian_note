import { formatMathSegment } from "./math";
import { scanSegments } from "./segments";
import type { FormatResult, FormatterOptions } from "./types";
import { resolveOptions } from "./types";
import { lintMarkdown } from "./lint";

export function formatMarkdown(source: string, options: Partial<FormatterOptions> = {}): FormatResult {
  const resolved = resolveOptions(options);
  const segments = scanSegments(source);
  const output: string[] = [];

  for (const segment of segments) {
    if (segment.kind === "frontmatter" || segment.kind === "code") {
      appendProtectedBlock(output, segment.lines);
      continue;
    }

    if (segment.kind === "math") {
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      appendProtectedBlock(output, formatMathSegment(segment, resolved));
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      continue;
    }

    const line = segment.lines[0] ?? "";
    const formatted = formatMarkdownLine(line, resolved);
    if (isHeading(formatted)) {
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
      appendLine(output, formatted, resolved.maxConsecutiveBlankLines);
      ensureBlankLine(output, resolved.maxConsecutiveBlankLines);
    } else {
      appendLine(output, formatted, resolved.maxConsecutiveBlankLines);
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

function formatMarkdownLine(line: string, options: FormatterOptions): string {
  const withoutTrailingWhitespace = line.replace(/[ \t]+$/g, "");

  if (!options.normalizeListMarkers || /^\s*>/.test(withoutTrailingWhitespace)) {
    return withoutTrailingWhitespace;
  }

  const unordered = withoutTrailingWhitespace.match(/^(\s*)[*+](\s+)/);
  if (unordered !== null) {
    return `${unordered[1]}-${withoutTrailingWhitespace.slice(unordered[1].length + 1)}`;
  }

  const ordered = withoutTrailingWhitespace.match(/^(\s*)(\d+)[.)](\s+)/);
  if (ordered !== null) {
    return `${ordered[1]}${ordered[2]}.${withoutTrailingWhitespace.slice(ordered[0].length - ordered[3].length)}`;
  }

  return withoutTrailingWhitespace;
}

function isHeading(line: string): boolean {
  return /^(#{1,6})\s+\S/.test(line);
}
