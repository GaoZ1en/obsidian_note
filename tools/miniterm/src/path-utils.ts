import * as path from "node:path";

export type VaultTargetKind = "file" | "folder";

export function resolveVaultRelativePath(vaultBasePath: string, vaultRelativePath: string): string {
  if (!vaultRelativePath) {
    return path.resolve(vaultBasePath);
  }

  const pathParts = vaultRelativePath.split("/").filter(Boolean);
  return path.resolve(vaultBasePath, ...pathParts);
}

export function resolveTargetCwd(
  vaultBasePath: string,
  targetPath: string,
  targetKind: VaultTargetKind
): string {
  const absoluteTarget = resolveVaultRelativePath(vaultBasePath, targetPath);
  return targetKind === "folder" ? absoluteTarget : path.dirname(absoluteTarget);
}

export function basenameWithoutExtension(filePath: string): string {
  const basename = path.basename(filePath);
  const extension = path.extname(basename);
  return extension ? basename.slice(0, -extension.length) : basename;
}
