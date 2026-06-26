import { normalizeKeybindingTrigger } from "./keybindings";

export type CustomCommandCwdMode = "inherit" | "vault";

export interface MiniTermCustomCommand {
  id: string;
  name: string;
  command: string;
  trigger: string;
  cwdMode: CustomCommandCwdMode;
}

const VALID_CWD_MODES = new Set<CustomCommandCwdMode>(["inherit", "vault"]);

export function createDefaultCustomCommands(): MiniTermCustomCommand[] {
  return [];
}

export function createCustomCommandId(commands: readonly MiniTermCustomCommand[]): string {
  const existingIds = new Set(commands.map((command) => command.id));
  let index = commands.length + 1;

  while (existingIds.has(`command-${index}`)) {
    index += 1;
  }

  return `command-${index}`;
}

export function normalizeCustomCommands(value: unknown): MiniTermCustomCommand[] {
  if (!Array.isArray(value)) {
    return createDefaultCustomCommands();
  }

  const commands: MiniTermCustomCommand[] = [];
  const usedIds = new Set<string>();

  for (const entry of value) {
    if (!entry || typeof entry !== "object") {
      continue;
    }

    const data = entry as Partial<MiniTermCustomCommand>;
    const command = typeof data.command === "string" ? data.command.trim() : "";
    if (command.length === 0) {
      continue;
    }

    const id = normalizeCommandId(data.id, usedIds, commands.length + 1);
    usedIds.add(id);

    commands.push({
      id,
      name: normalizeCommandName(data.name, command, commands.length + 1),
      command,
      trigger: typeof data.trigger === "string"
        ? normalizeKeybindingTrigger(data.trigger) ?? ""
        : "",
      cwdMode: isCustomCommandCwdMode(data.cwdMode) ? data.cwdMode : "inherit"
    });
  }

  return commands;
}

export function createCustomCommandTriggerMap(
  commands: readonly MiniTermCustomCommand[]
): Map<string, MiniTermCustomCommand> {
  const map = new Map<string, MiniTermCustomCommand>();

  for (const command of commands) {
    if (command.trigger && command.command.trim().length > 0) {
      map.set(command.trigger, command);
    }
  }

  return map;
}

function normalizeCommandId(
  value: unknown,
  usedIds: ReadonlySet<string>,
  fallbackIndex: number
): string {
  if (typeof value === "string" && /^[A-Za-z0-9_-]+$/.test(value) && !usedIds.has(value)) {
    return value;
  }

  let index = fallbackIndex;
  while (usedIds.has(`command-${index}`)) {
    index += 1;
  }

  return `command-${index}`;
}

function normalizeCommandName(value: unknown, command: string, index: number): string {
  if (typeof value === "string" && value.trim().length > 0) {
    return value.trim();
  }

  const firstLine = command.split(/\r?\n/, 1)[0]?.trim();
  return firstLine && firstLine.length <= 40 ? firstLine : `Command ${index}`;
}

function isCustomCommandCwdMode(value: unknown): value is CustomCommandCwdMode {
  return typeof value === "string" && VALID_CWD_MODES.has(value as CustomCommandCwdMode);
}
