export type SegmentKind = "frontmatter" | "code" | "math" | "line";
export type MathFence = "dollar" | "bracket";

export interface Segment {
  kind: SegmentKind;
  lines: string[];
  startLine: number;
  fence?: MathFence;
}

export function normalizeLineEndings(source: string): string {
  return source.replace(/\r\n?/g, "\n");
}

export function splitLogicalLines(source: string): string[] {
  const normalized = normalizeLineEndings(source);
  if (normalized.length === 0) {
    return [];
  }
  const withoutFinalNewline = normalized.endsWith("\n") ? normalized.slice(0, -1) : normalized;
  return withoutFinalNewline.length === 0 ? [] : withoutFinalNewline.split("\n");
}

export function scanSegments(source: string): Segment[] {
  const lines = splitLogicalLines(source);
  const segments: Segment[] = [];
  let index = 0;

  if (lines[0] === "---") {
    let end = 1;
    while (end < lines.length && lines[end] !== "---") {
      end += 1;
    }
    const final = end < lines.length ? end : lines.length - 1;
    segments.push({
      kind: "frontmatter",
      lines: lines.slice(0, final + 1),
      startLine: 1
    });
    index = final + 1;
  }

  while (index < lines.length) {
    const line = lines[index];
    const startLine = index + 1;
    const codeFence = getCodeFence(line);

    if (codeFence !== null) {
      const end = findCodeFenceEnd(lines, index + 1, codeFence);
      segments.push({
        kind: "code",
        lines: lines.slice(index, end + 1),
        startLine
      });
      index = end + 1;
      continue;
    }

    if (isBracketMathStart(line)) {
      const end = findBracketMathEnd(lines, index);
      segments.push({
        kind: "math",
        fence: "bracket",
        lines: lines.slice(index, end + 1),
        startLine
      });
      index = end + 1;
      continue;
    }

    if (isDollarMathStart(line)) {
      const end = findDollarMathEnd(lines, index);
      segments.push({
        kind: "math",
        fence: "dollar",
        lines: lines.slice(index, end + 1),
        startLine
      });
      index = end + 1;
      continue;
    }

    segments.push({
      kind: "line",
      lines: [line],
      startLine
    });
    index += 1;
  }

  return segments;
}

function getCodeFence(line: string): string | null {
  const match = line.match(/^\s*(`{3,}|~{3,})/);
  return match?.[1] ?? null;
}

function findCodeFenceEnd(lines: string[], start: number, fence: string): number {
  const fencePrefix = fence[0]?.repeat(fence.length) ?? fence;
  for (let index = start; index < lines.length; index += 1) {
    if (lines[index]?.trimStart().startsWith(fencePrefix)) {
      return index;
    }
  }
  return lines.length - 1;
}

function isBracketMathStart(line: string): boolean {
  return line.trimStart().startsWith("\\[");
}

function findBracketMathEnd(lines: string[], start: number): number {
  for (let index = start; index < lines.length; index += 1) {
    if (lines[index]?.trimEnd().endsWith("\\]")) {
      return index;
    }
  }
  return lines.length - 1;
}

function isDollarMathStart(line: string): boolean {
  const trimmed = line.trimStart();
  return trimmed.startsWith("$$") && !trimmed.startsWith("$$$");
}

function findDollarMathEnd(lines: string[], start: number): number {
  const first = lines[start] ?? "";
  const firstRest = first.trimStart().slice(2);
  if (firstRest.includes("$$")) {
    return start;
  }

  for (let index = start + 1; index < lines.length; index += 1) {
    const trimmed = lines[index]?.trimEnd() ?? "";
    if (trimmed.endsWith("$$")) {
      return index;
    }
  }
  return lines.length - 1;
}
