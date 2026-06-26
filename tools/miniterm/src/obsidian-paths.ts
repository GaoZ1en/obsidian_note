import { App, FileSystemAdapter } from "obsidian";

export function getVaultBasePath(app: App): string {
  const adapter = app.vault.adapter;

  if (adapter instanceof FileSystemAdapter) {
    return adapter.getBasePath();
  }

  const adapterWithBasePath = adapter as { getBasePath?: () => string };
  if (typeof adapterWithBasePath.getBasePath === "function") {
    return adapterWithBasePath.getBasePath();
  }

  throw new Error("MiniTerm requires a desktop vault backed by the local filesystem.");
}
