import type { KeybindingDefinition } from "./keybindings";
import { createDefaultKeybindings, normalizeKeybindings } from "./keybindings";
import type { MiniTermCustomCommand } from "./custom-commands";
import { createDefaultCustomCommands, normalizeCustomCommands } from "./custom-commands";

export interface MiniTermSettings {
  shellPath: string;
  shellArgs: string[];
  env: Record<string, string>;
  fontSize: number;
  letterSpacing: number;
  scrollback: number;
  keybindings: KeybindingDefinition[];
  quickTerminalHeight: number;
  startupCommandEnabled: boolean;
  startupCommand: string;
  customCommands: MiniTermCustomCommand[];
}

const MIN_FONT_SIZE = 9;
const MAX_FONT_SIZE = 32;
const MIN_LETTER_SPACING = -4;
const MAX_LETTER_SPACING = 4;
const MIN_SCROLLBACK = 100;
const MAX_SCROLLBACK = 100000;
const MIN_QUICK_TERMINAL_HEIGHT = 25;
const MAX_QUICK_TERMINAL_HEIGHT = 80;
export const DEFAULT_TERMINAL_TYPE = "mlterm-256color";

export function getDefaultShell(
  env: NodeJS.ProcessEnv = process.env,
  platform: NodeJS.Platform = process.platform
): string {
  if (platform === "win32") {
    return env.COMSPEC ?? "powershell.exe";
  }

  if (platform === "darwin") {
    return env.SHELL ?? "/bin/zsh";
  }

  return env.SHELL ?? "/bin/bash";
}

export function createDefaultSettings(): MiniTermSettings {
  return {
    shellPath: getDefaultShell(),
    shellArgs: [],
    env: {},
    fontSize: 13,
    letterSpacing: -2,
    scrollback: 5000,
    keybindings: createDefaultKeybindings(),
    quickTerminalHeight: 45,
    startupCommandEnabled: false,
    startupCommand: "",
    customCommands: createDefaultCustomCommands()
  };
}

export function normalizeSettings(raw: unknown): MiniTermSettings {
  const defaults = createDefaultSettings();

  if (!raw || typeof raw !== "object") {
    return defaults;
  }

  const data = raw as Partial<MiniTermSettings>;

  return {
    shellPath: typeof data.shellPath === "string" && data.shellPath.trim() !== ""
      ? data.shellPath.trim()
      : defaults.shellPath,
    shellArgs: Array.isArray(data.shellArgs)
      ? data.shellArgs.filter((value): value is string => typeof value === "string")
      : defaults.shellArgs,
    env: isStringRecord(data.env) ? data.env : defaults.env,
    fontSize: clampInteger(data.fontSize, MIN_FONT_SIZE, MAX_FONT_SIZE, defaults.fontSize),
    letterSpacing: clampInteger(
      data.letterSpacing,
      MIN_LETTER_SPACING,
      MAX_LETTER_SPACING,
      defaults.letterSpacing
    ),
    scrollback: clampInteger(data.scrollback, MIN_SCROLLBACK, MAX_SCROLLBACK, defaults.scrollback),
    keybindings: normalizeKeybindings(data.keybindings),
    quickTerminalHeight: clampInteger(
      data.quickTerminalHeight,
      MIN_QUICK_TERMINAL_HEIGHT,
      MAX_QUICK_TERMINAL_HEIGHT,
      defaults.quickTerminalHeight
    ),
    startupCommandEnabled: data.startupCommandEnabled === true,
    startupCommand: typeof data.startupCommand === "string" ? data.startupCommand : defaults.startupCommand,
    customCommands: normalizeCustomCommands(data.customCommands)
  };
}

export function parseShellArgsInput(input: string): string[] {
  return input
    .split(/\r?\n/)
    .map((line) => line.trim())
    .filter((line) => line.length > 0);
}

export function formatShellArgsInput(args: string[]): string {
  return args.join("\n");
}

export function parseEnvInput(input: string): Record<string, string> {
  const env: Record<string, string> = {};

  for (const rawLine of input.split(/\r?\n/)) {
    if (rawLine.trim().length === 0) {
      continue;
    }

    const separatorIndex = rawLine.indexOf("=");
    if (separatorIndex <= 0) {
      continue;
    }

    const key = rawLine.slice(0, separatorIndex).trim();
    if (!isValidEnvKey(key)) {
      continue;
    }

    env[key] = rawLine.slice(separatorIndex + 1);
  }

  return env;
}

export function formatEnvInput(env: Record<string, string>): string {
  return Object.entries(env)
    .map(([key, value]) => `${key}=${value}`)
    .join("\n");
}

export function shellDisplayName(shellPath: string): string {
  return shellPath.split(/[\\/]/).filter(Boolean).pop() ?? shellPath;
}

export function buildPtyEnv(
  overrides: Record<string, string>,
  sourceEnv: NodeJS.ProcessEnv = process.env
): Record<string, string> {
  const env: Record<string, string> = {};

  for (const [key, value] of Object.entries(sourceEnv)) {
    if (typeof value === "string") {
      env[key] = value;
    }
  }

  return {
    ...env,
    PATH: buildAugmentedPath(env.PATH, env.HOME),
    TERM: env.TERM ?? DEFAULT_TERMINAL_TYPE,
    LANG: env.LANG ?? "en_US.UTF-8",
    LC_CTYPE: env.LC_CTYPE ?? env.LANG ?? "en_US.UTF-8",
    ...overrides
  };
}

function buildAugmentedPath(existingPath: string | undefined, home: string | undefined): string {
  const userPathEntries = home
    ? [`${home}/.local/bin`, `${home}/bin`, `${home}/.cargo/bin`]
    : [];
  const commonPathEntries = [
    ...userPathEntries,
    "/opt/homebrew/bin",
    "/opt/homebrew/sbin",
    "/usr/local/bin",
    "/usr/local/sbin",
    "/usr/bin",
    "/bin",
    "/usr/sbin",
    "/sbin"
  ];
  const existingPathEntries = existingPath?.split(":").filter((entry) => entry.length > 0) ?? [];
  const seen = new Set<string>();
  const merged: string[] = [];

  for (const entry of [...commonPathEntries, ...existingPathEntries]) {
    if (!seen.has(entry)) {
      seen.add(entry);
      merged.push(entry);
    }
  }

  return merged.join(":");
}

function clampInteger(value: unknown, min: number, max: number, fallback: number): number {
  if (typeof value !== "number" || !Number.isFinite(value)) {
    return fallback;
  }

  return Math.min(max, Math.max(min, Math.round(value)));
}

function isStringRecord(value: unknown): value is Record<string, string> {
  if (!value || typeof value !== "object" || Array.isArray(value)) {
    return false;
  }

  return Object.values(value).every((entry) => typeof entry === "string");
}

function isValidEnvKey(key: string): boolean {
  return /^[A-Za-z_][A-Za-z0-9_]*$/.test(key);
}
