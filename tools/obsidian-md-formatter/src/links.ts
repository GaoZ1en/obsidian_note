export interface VaultLinkContext {
  vaultBasePath: string;
  notePath: string;
}

type DestinationStyle = "angle" | "bare" | "wiki";

/**
 * Rewrite only link destinations that are absolute filesystem paths inside
 * the current vault. Markdown targets are relative to the containing note;
 * Obsidian wiki targets use paths relative to the vault root.
 *
 * Frontmatter, fenced code, and display math are excluded by the caller.
 */
export function relativizeVaultLinks(line: string, context: VaultLinkContext): string {
  const root = normalizeRoot(context.vaultBasePath);
  const sourceParts = context.notePath.replace(/\\/g, "/").split("/");
  if (root === null || sourceParts.length === 0 ||
      sourceParts.some((part) => part === "" || part === "." || part === "..")) {
    return line;
  }

  const convert = (destination: string, style: DestinationStyle): string | null => {
    const suffixAt = destination.search(/[?#]/);
    const rawPath = suffixAt === -1 ? destination : destination.slice(0, suffixAt);
    const suffix = suffixAt === -1 ? "" : destination.slice(suffixAt);
    let absolute = rawPath;

    if (/^file:\/\//i.test(absolute)) {
      absolute = absolute.slice(7);
      if (/^\/[a-z]:\//i.test(absolute)) {
        absolute = absolute.slice(1);
      }
    }

    try {
      absolute = decodeURIComponent(absolute);
    } catch {
      return null;
    }
    absolute = absolute.replace(/\\/g, "/");
    if (!isAbsolutePath(absolute) || absolute.includes("\0")) {
      return null;
    }

    const windows = /^[a-z]:\//i.test(root);
    const pathToCompare = windows ? absolute.toLowerCase() : absolute;
    const rootToCompare = windows ? root.toLowerCase() : root;
    if (!pathToCompare.startsWith(rootToCompare + "/")) {
      return null;
    }

    const vaultPath = absolute.slice(root.length + 1);
    const targetParts = vaultPath.split("/");
    if (targetParts.some((part) => part === "" || part === "." || part === "..")) {
      return null;
    }

    if (style === "wiki") {
      return vaultPath + suffix;
    }

    const parentParts = sourceParts.slice(0, -1);
    let shared = 0;
    while (shared < parentParts.length && shared < targetParts.length &&
           parentParts[shared] === targetParts[shared]) {
      shared += 1;
    }

    const stepsUp = Array(parentParts.length - shared).fill("..");
    const relative = [...stepsUp, ...targetParts.slice(shared)].join("/");
    const localPath = stepsUp.length === 0 ? "./" + relative : relative;

    if (style === "angle") {
      return /[<>]/.test(localPath) ? null : localPath + suffix;
    }

    const escaped = localPath
      .split("/")
      .map((part) => part === ".." || part === "." ? part :
        encodeURIComponent(part).replace(/[!'()*]/g, (ch) =>
          "%" + ch.charCodeAt(0).toString(16).toUpperCase()))
      .join("/");
    return escaped + suffix;
  };

  // Reference-style link definitions are separate from inline links.
  let text = line;
  const definition = text.match(/^(\s{0,3}\[[^\]\r\n]+\]:[ \t]*)(<([^<>]+)>|([^\s]+))/);
  if (definition !== null) {
    const isAngle = definition[3] !== undefined;
    const oldDestination = isAngle ? definition[3] : definition[4];
    const replacement = convert(oldDestination ?? "", isAngle ? "angle" : "bare");
    if (replacement !== null) {
      const token = isAngle ? "<" + replacement + ">" : replacement;
      text = definition[1] + token + text.slice(definition[0].length);
    }
  }

  let output = "";
  let index = 0;
  const codeTick = String.fromCharCode(96);

  while (index < text.length) {
    if (text.startsWith("<!--", index)) {
      const end = text.indexOf("-->", index + 4);
      const stop = end === -1 ? text.length : end + 3;
      output += text.slice(index, stop);
      index = stop;
      continue;
    }

    // Never edit inline code spans or inline math.
    const current = text[index];
    if (current === codeTick || current === "$") {
      let runLength = 1;
      while (text[index + runLength] === current) {
        runLength += 1;
      }
      const marker = current.repeat(runLength);
      const closing = text.indexOf(marker, index + runLength);
      if (closing !== -1) {
        const stop = closing + runLength;
        output += text.slice(index, stop);
        index = stop;
        continue;
      }
    }
    if (text.startsWith("\\(", index)) {
      const closing = text.indexOf("\\)", index + 2);
      if (closing !== -1) {
        const stop = closing + 2;
        output += text.slice(index, stop);
        index = stop;
        continue;
      }
    }

    if (text.startsWith("[[", index) && !isEscaped(text, index)) {
      const closing = text.indexOf("]]", index + 2);
      if (closing !== -1) {
        const inner = text.slice(index + 2, closing);
        const aliasAt = inner.indexOf("|");
        const target = aliasAt === -1 ? inner : inner.slice(0, aliasAt);
        const replacement = convert(target, "wiki");
        if (replacement !== null) {
          output += "[[" + replacement + (aliasAt === -1 ? "" : inner.slice(aliasAt)) + "]]";
          index = closing + 2;
          continue;
        }
      }
    }

    if (text.startsWith("](", index) && !isEscaped(text, index)) {
      const start = index + 2;
      if (text[start] === "<") {
        const closing = text.indexOf(">", start + 1);
        if (closing !== -1) {
          const replacement = convert(text.slice(start + 1, closing), "angle");
          if (replacement !== null) {
            output += "](<" + replacement + ">";
            index = closing + 1;
            continue;
          }
        }
      } else {
        let end = start;
        while (end < text.length && !/[\s)]/.test(text[end])) {
          end += 1;
        }
        if (end > start) {
          const replacement = convert(text.slice(start, end), "bare");
          if (replacement !== null) {
            output += "](" + replacement;
            index = end;
            continue;
          }
        }
      }
    }

    output += current;
    index += 1;
  }

  return output;
}

function normalizeRoot(path: string): string | null {
  const normalized = path.replace(/\\/g, "/").replace(/\/+$/, "");
  return isAbsolutePath(normalized) ? normalized : null;
}

function isAbsolutePath(path: string): boolean {
  return (path.startsWith("/") && !path.startsWith("//")) || /^[a-z]:\//i.test(path);
}

function isEscaped(text: string, index: number): boolean {
  let backslashes = 0;
  for (let cursor = index - 1; cursor >= 0 && text[cursor] === "\\"; cursor -= 1) {
    backslashes += 1;
  }
  return backslashes % 2 === 1;
}
