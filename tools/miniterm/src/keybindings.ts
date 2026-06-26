export type MiniTermAction =
  | "new_tab"
  | "close_surface"
  | "next_tab"
  | "previous_tab"
  | "split_right"
  | "split_down"
  | "focus_left"
  | "focus_right"
  | "focus_up"
  | "focus_down"
  | "resize_left"
  | "resize_right"
  | "resize_up"
  | "resize_down";

export interface KeybindingDefinition {
  trigger: string;
  action: MiniTermAction;
}

type KeyEventLike = Pick<KeyboardEvent, "altKey" | "ctrlKey" | "metaKey" | "shiftKey" | "code" | "key">;

const MODIFIER_ORDER = ["Ctrl", "Alt", "Shift", "Meta"] as const;
const VALID_ACTIONS = new Set<MiniTermAction>([
  "new_tab",
  "close_surface",
  "next_tab",
  "previous_tab",
  "split_right",
  "split_down",
  "focus_left",
  "focus_right",
  "focus_up",
  "focus_down",
  "resize_left",
  "resize_right",
  "resize_up",
  "resize_down"
]);

const KEY_ALIASES = new Map<string, string>([
  ["`", "Backquote"],
  ["BACKTICK", "Backquote"],
  ["BACKQUOTE", "Backquote"],
  ["ENTER", "Enter"],
  ["RETURN", "Enter"],
  ["LEFT", "ArrowLeft"],
  ["RIGHT", "ArrowRight"],
  ["UP", "ArrowUp"],
  ["DOWN", "ArrowDown"],
  ["ARROWLEFT", "ArrowLeft"],
  ["ARROWRIGHT", "ArrowRight"],
  ["ARROWUP", "ArrowUp"],
  ["ARROWDOWN", "ArrowDown"],
  ["[", "BracketLeft"],
  ["]", "BracketRight"],
  ["-", "Minus"],
  ["=", "Equal"],
  ["0", "Digit0"]
]);

export const DEFAULT_KEYBINDINGS: KeybindingDefinition[] = [
  { trigger: "Alt+KeyT", action: "new_tab" },
  { trigger: "Alt+KeyW", action: "close_surface" },
  { trigger: "Alt+Shift+BracketRight", action: "next_tab" },
  { trigger: "Alt+Shift+BracketLeft", action: "previous_tab" },
  { trigger: "Alt+KeyD", action: "split_right" },
  { trigger: "Alt+Shift+KeyD", action: "split_down" },
  { trigger: "Alt+ArrowLeft", action: "focus_left" },
  { trigger: "Alt+ArrowRight", action: "focus_right" },
  { trigger: "Alt+ArrowUp", action: "focus_up" },
  { trigger: "Alt+ArrowDown", action: "focus_down" },
  { trigger: "Alt+Shift+ArrowLeft", action: "resize_left" },
  { trigger: "Alt+Shift+ArrowRight", action: "resize_right" },
  { trigger: "Alt+Shift+ArrowUp", action: "resize_up" },
  { trigger: "Alt+Shift+ArrowDown", action: "resize_down" }
];

export function createDefaultKeybindings(): KeybindingDefinition[] {
  return DEFAULT_KEYBINDINGS.map((binding) => ({ ...binding }));
}

export function parseKeybindingsInput(input: string): KeybindingDefinition[] {
  const bindings: KeybindingDefinition[] = [];

  for (const rawLine of input.split(/\r?\n/)) {
    const line = rawLine.trim();
    if (line.length === 0 || line.startsWith("#")) {
      continue;
    }

    const separatorIndex = line.indexOf("=");
    if (separatorIndex <= 0) {
      continue;
    }

    const trigger = normalizeKeybindingTrigger(line.slice(0, separatorIndex));
    const action = line.slice(separatorIndex + 1).trim();
    if (trigger && isMiniTermAction(action)) {
      bindings.push({ trigger, action });
    }
  }

  return bindings;
}

export function formatKeybindingsInput(bindings: KeybindingDefinition[]): string {
  return bindings
    .map((binding) => `${formatKeybindingTriggerForDisplay(binding.trigger)}=${binding.action}`)
    .join("\n");
}

export function normalizeKeybindings(value: unknown): KeybindingDefinition[] {
  if (!Array.isArray(value)) {
    return createDefaultKeybindings();
  }

  const bindings: KeybindingDefinition[] = [];
  for (const entry of value) {
    if (!entry || typeof entry !== "object") {
      continue;
    }

    const candidate = entry as Partial<KeybindingDefinition>;
    const trigger = typeof candidate.trigger === "string"
      ? normalizeKeybindingTrigger(candidate.trigger)
      : null;
    if (trigger && typeof candidate.action === "string" && isMiniTermAction(candidate.action)) {
      bindings.push({ trigger, action: candidate.action });
    }
  }

  return bindings.length > 0 ? bindings : createDefaultKeybindings();
}

export function createKeybindingMap(bindings: KeybindingDefinition[]): Map<string, MiniTermAction> {
  const map = new Map<string, MiniTermAction>();
  for (const binding of bindings) {
    map.set(binding.trigger, binding.action);
  }
  return map;
}

export function eventToKeybindingTrigger(event: KeyEventLike): string | null {
  const keyCode = event.code || normalizeKeyCode(event.key);
  if (!keyCode) {
    return null;
  }

  const modifiers: string[] = [];
  if (event.ctrlKey) {
    modifiers.push("Ctrl");
  }
  if (event.altKey) {
    modifiers.push("Alt");
  }
  if (event.shiftKey) {
    modifiers.push("Shift");
  }
  if (event.metaKey) {
    modifiers.push("Meta");
  }

  return [...modifiers, keyCode].join("+");
}

export function normalizeKeybindingTrigger(input: string): string | null {
  const parts = input
    .split("+")
    .map((part) => part.trim())
    .filter((part) => part.length > 0);

  if (parts.length === 0) {
    return null;
  }

  const keyPart = parts.at(-1);
  if (!keyPart) {
    return null;
  }

  const modifiers = new Set<string>();
  for (const modifierPart of parts.slice(0, -1)) {
    const modifier = normalizeModifier(modifierPart);
    if (!modifier) {
      return null;
    }
    modifiers.add(modifier);
  }

  const keyCode = normalizeKeyCode(keyPart);
  if (!keyCode) {
    return null;
  }

  return [
    ...MODIFIER_ORDER.filter((modifier) => modifiers.has(modifier)),
    keyCode
  ].join("+");
}

function normalizeModifier(input: string): string | null {
  const value = input.trim().toUpperCase();
  if (value === "CONTROL") {
    return "Ctrl";
  }
  if (value === "OPTION") {
    return "Alt";
  }
  if (value === "COMMAND" || value === "CMD") {
    return "Meta";
  }
  if (value === "CTRL" || value === "ALT" || value === "SHIFT" || value === "META") {
    return value[0] + value.slice(1).toLowerCase();
  }
  return null;
}

function normalizeKeyCode(input: string): string | null {
  const trimmed = input.trim();
  if (trimmed.length === 0) {
    return null;
  }

  const alias = KEY_ALIASES.get(trimmed.toUpperCase());
  if (alias) {
    return alias;
  }

  if (/^[a-z]$/i.test(trimmed)) {
    return `Key${trimmed.toUpperCase()}`;
  }

  if (/^[0-9]$/.test(trimmed)) {
    return `Digit${trimmed}`;
  }

  if (/^(Key[A-Z]|Digit[0-9]|Arrow(?:Left|Right|Up|Down)|Bracket(?:Left|Right)|Backquote|Enter|Minus|Equal)$/.test(trimmed)) {
    return trimmed;
  }

  return null;
}

export function formatKeybindingTriggerForDisplay(trigger: string): string {
  return trigger
    .split("+")
    .map((part) => {
      if (part === "Alt") {
        return "Option";
      }
      if (/^Key[A-Z]$/.test(part)) {
        return part.slice(3);
      }
      if (/^Digit[0-9]$/.test(part)) {
        return part.slice(5);
      }
      return part;
    })
    .join("+");
}

function isMiniTermAction(action: string): action is MiniTermAction {
  return VALID_ACTIONS.has(action as MiniTermAction);
}
