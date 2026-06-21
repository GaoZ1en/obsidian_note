export function shouldFormatVaultPath(path: string): boolean {
  if (!path.endsWith(".md")) {
    return false;
  }

  if (path.startsWith(".obsidian/")) {
    return false;
  }

  if (path.startsWith("tools/obsidian-md-formatter/")) {
    return false;
  }

  return true;
}
