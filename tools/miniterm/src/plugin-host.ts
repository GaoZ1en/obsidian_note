import type { CustomCommandCwdMode } from "./custom-commands";
import type { MiniTermSettings } from "./settings";

export interface MiniTermHost {
  settings: MiniTermSettings;
  saveSettings(): Promise<void>;
  getDefaultCwd(): string;
  getPluginMainPath(): string;
  resolveCustomCommandCwd(mode: CustomCommandCwdMode, fallbackCwd?: string): string;
}
