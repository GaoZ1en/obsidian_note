export function buildUnifiedDiff(before: string, after: string, context = 3): string {
  const beforeLines = before.split("\n");
  const afterLines = after.split("\n");

  let prefix = 0;
  while (prefix < beforeLines.length && prefix < afterLines.length && beforeLines[prefix] === afterLines[prefix]) {
    prefix += 1;
  }

  let suffix = 0;
  while (
    suffix < beforeLines.length - prefix &&
    suffix < afterLines.length - prefix &&
    beforeLines[beforeLines.length - 1 - suffix] === afterLines[afterLines.length - 1 - suffix]
  ) {
    suffix += 1;
  }

  const beforeStart = Math.max(0, prefix - context);
  const afterStart = Math.max(0, prefix - context);
  const beforeEnd = Math.min(beforeLines.length, beforeLines.length - suffix + context);
  const afterEnd = Math.min(afterLines.length, afterLines.length - suffix + context);
  const lines: string[] = [];

  lines.push(`@@ -${beforeStart + 1},${beforeEnd - beforeStart} +${afterStart + 1},${afterEnd - afterStart} @@`);

  for (let index = beforeStart; index < prefix; index += 1) {
    lines.push(` ${beforeLines[index] ?? ""}`);
  }

  for (let index = prefix; index < beforeLines.length - suffix; index += 1) {
    lines.push(`-${beforeLines[index] ?? ""}`);
  }

  for (let index = prefix; index < afterLines.length - suffix; index += 1) {
    lines.push(`+${afterLines[index] ?? ""}`);
  }

  for (let index = afterLines.length - suffix; index < afterEnd; index += 1) {
    lines.push(` ${afterLines[index] ?? ""}`);
  }

  return lines.join("\n");
}
