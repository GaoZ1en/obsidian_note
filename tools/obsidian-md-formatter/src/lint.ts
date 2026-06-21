import { extractMathContent, getTopEnvironment, isAlignEnvironment, containsLatexEnvironment } from "./math";
import { scanSegments } from "./segments";
import type { FormatterOptions, LintWarning } from "./types";
import { resolveOptions } from "./types";

export function lintMarkdown(source: string, options: Partial<FormatterOptions> = {}): LintWarning[] {
  const resolved = resolveOptions(options);
  const warnings: LintWarning[] = [];
  const segments = scanSegments(source);
  let previousHeadingLevel = 0;

  for (const segment of segments) {
    if (segment.kind === "line") {
      const line = segment.lines[0] ?? "";
      const heading = line.match(/^(#{1,6})\s+\S/);
      if (heading !== null) {
        const level = heading[1].length;
        if (previousHeadingLevel > 0 && level > previousHeadingLevel + 1) {
          warnings.push({
            line: segment.startLine,
            code: "heading-level-jump",
            message: `Heading jumps from level ${previousHeadingLevel} to level ${level}.`,
            severity: "warning"
          });
        }
        previousHeadingLevel = level;
      }

      if (/^\s*\\(begin|end)\{[^}]+\}/.test(line)) {
        warnings.push({
          line: segment.startLine,
          code: "naked-latex-environment",
          message: "LaTeX environment appears outside a display math block.",
          severity: "warning"
        });
      }
      continue;
    }

    if (segment.kind !== "math") {
      continue;
    }

    if (segment.fence === "bracket" && resolved.normalizeMathDelimiters) {
      warnings.push({
        line: segment.startLine,
        code: "mixed-math-delimiter",
        message: "Display math uses \\[...\\]; formatter can convert it to $$...$$.",
        severity: "info"
      });
    }

    const { content } = extractMathContent(segment);
    const topEnvironment = getTopEnvironment(content);

    if (topEnvironment !== null && !isAlignEnvironment(topEnvironment.name)) {
      warnings.push({
        line: segment.startLine + topEnvironment.startIndex,
        code: "complex-math-environment",
        message: `Display math contains ${topEnvironment.name}; formatter will not wrap or reshape it.`,
        severity: "info"
      });
    } else if (topEnvironment === null && containsLatexEnvironment(content)) {
      warnings.push({
        line: segment.startLine,
        code: "complex-math-environment",
        message: "Display math contains a LaTeX environment; formatter will not wrap or reshape it.",
        severity: "info"
      });
    }

    if (topEnvironment !== null && isAlignEnvironment(topEnvironment.name)) {
      warnings.push(...lintAlignRows(content, topEnvironment.startIndex, topEnvironment.endIndex, segment.startLine));
    }
  }

  return warnings;
}

function lintAlignRows(content: string[], beginIndex: number, endIndex: number, startLine: number): LintWarning[] {
  const warnings: LintWarning[] = [];
  const body = content.slice(beginIndex + 1, endIndex);
  const nonBlankRows = body
    .map((line, offset) => ({ line, offset }))
    .filter(({ line }) => line.trim().length > 0);

  for (let index = 0; index < nonBlankRows.length - 1; index += 1) {
    const row = nonBlankRows[index];
    if (!endsWithLatexRowBreak(row.line)) {
      warnings.push({
        line: startLine + beginIndex + 1 + row.offset,
        code: "align-row-missing-break",
        message: "Non-final align row does not end with a LaTeX row break.",
        severity: "warning"
      });
    }
  }

  for (let index = 0; index < nonBlankRows.length - 1; index += 1) {
    const row = nonBlankRows[index];
    const next = nonBlankRows[index + 1];
    if (!endsWithLatexRowBreak(row.line) && /^\s*[=+&]/.test(next.line)) {
      warnings.push({
        line: startLine + beginIndex + 1 + row.offset,
        code: "source-only-linebreak",
        message: "This align block may contain a source-only line break.",
        severity: "warning"
      });
    }
  }

  return warnings;
}

function endsWithLatexRowBreak(line: string): boolean {
  return /\\\\(?:\[[^\]]+\])?\s*$/.test(line);
}
