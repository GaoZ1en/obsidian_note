import { Notice, Plugin, TAbstractFile, TFolder, WorkspaceLeaf } from "obsidian";
import { getVaultBasePath } from "./obsidian-paths";
import { resolveTargetCwd, resolveVaultRelativePath } from "./path-utils";
import type { MiniTermHost } from "./plugin-host";
import { MiniTermQuickTerminal } from "./quick-terminal";
import { MiniTermSettingTab } from "./settings-tab";
import { MiniTermView, VIEW_TYPE_MINITERM } from "./view";
import type { MiniTermSettings } from "./settings";
import { createDefaultSettings, normalizeSettings } from "./settings";
import type { CustomCommandCwdMode, MiniTermCustomCommand } from "./custom-commands";
import { createCustomCommandTriggerMap } from "./custom-commands";
import {
  createKeybindingMap,
  eventToKeybindingTrigger,
  type MiniTermAction
} from "./keybindings";

interface MiniTermTarget {
  hasTabs(): boolean;
  executeAction(action: MiniTermAction): void;
  runCustomCommand(command: MiniTermCustomCommand): void;
  writeActive(data: string): boolean;
  containsActiveElement(): boolean;
}

export default class MiniTermPlugin extends Plugin implements MiniTermHost {
  override settings: MiniTermSettings = createDefaultSettings();
  private quickTerminal: MiniTermQuickTerminal | null = null;

  override async onload(): Promise<void> {
    this.settings = normalizeSettings(await this.loadData());

    this.registerView(
      VIEW_TYPE_MINITERM,
      (leaf) => new MiniTermView(leaf, this)
    );

    this.addSettingTab(new MiniTermSettingTab(this));
    this.addCommands();
    this.registerEmptyViewKeybindings();
    this.registerTerminalEscapeKey();
    this.registerFileMenu();
  }

  override onunload(): void {
    this.quickTerminal?.dispose();
    this.quickTerminal = null;
  }

  async saveSettings(): Promise<void> {
    await this.saveData(this.settings);
    this.refreshViews();
  }

  getDefaultCwd(): string {
    return getVaultBasePath(this.app);
  }

  getPluginMainPath(): string {
    const pluginDir = this.manifest.dir ?? ".obsidian/plugins/miniterm";
    return resolveVaultRelativePath(getVaultBasePath(this.app), `${pluginDir}/main.js`);
  }

  resolveCustomCommandCwd(mode: CustomCommandCwdMode, fallbackCwd?: string): string {
    switch (mode) {
      case "inherit":
        return fallbackCwd ?? this.getDefaultCwd();
      case "vault":
        return this.getDefaultCwd();
    }
  }

  toggleQuickTerminal(): void {
    this.getQuickTerminal().toggle();
  }

  async openMiniTerm(cwd?: string): Promise<MiniTermView | null> {
    try {
      const leaf = await this.getOrCreateMiniTermLeaf();
      await this.app.workspace.revealLeaf(leaf);

      const view = leaf.view;
      if (!(view instanceof MiniTermView)) {
        return null;
      }

      if (cwd) {
        view.openTab(cwd);
      } else if (!view.hasTabs()) {
        view.openTab();
      }

      return view;
    } catch (error) {
      const message = error instanceof Error ? error.message : String(error);
      new Notice(message);
      console.error("MiniTerm failed to open", error);
      return null;
    }
  }

  private addCommands(): void {
    this.addCommand({
      id: "open-miniterm",
      name: "Open MiniTerm",
      callback: () => {
        void this.openMiniTerm();
      }
    });

    this.addCommand({
      id: "new-miniterm-tab",
      name: "New MiniTerm Tab",
      checkCallback: (checking) => {
        const target = this.getActiveMiniTermTarget();
        if (!target) {
          return false;
        }

        if (!checking) {
          target.executeAction("new_tab");
        }

        return true;
      }
    });

    this.addCommand({
      id: "close-miniterm-surface",
      name: "Close Current MiniTerm Split/Tab/View",
      checkCallback: (checking) => {
        const target = this.getActiveMiniTermTarget();
        if (!target?.hasTabs()) {
          return false;
        }

        if (!checking) {
          target.executeAction("close_surface");
        }

        return true;
      }
    });

    this.addCommand({
      id: "close-miniterm-tab",
      name: "Close MiniTerm Tab",
      checkCallback: (checking) => {
        const view = this.getActiveMiniTermView();
        if (!view?.hasTabs()) {
          return false;
        }

        if (!checking) {
          void view.closeCurrentTab();
        }

        return true;
      }
    });

    this.addCommand({
      id: "next-miniterm-tab",
      name: "Next MiniTerm Tab",
      checkCallback: (checking) => {
        const target = this.getActiveMiniTermTarget();
        if (!target?.hasTabs()) {
          return false;
        }

        if (!checking) {
          target.executeAction("next_tab");
        }

        return true;
      }
    });

    this.addCommand({
      id: "previous-miniterm-tab",
      name: "Previous MiniTerm Tab",
      checkCallback: (checking) => {
        const target = this.getActiveMiniTermTarget();
        if (!target?.hasTabs()) {
          return false;
        }

        if (!checking) {
          target.executeAction("previous_tab");
        }

        return true;
      }
    });

    this.addActionCommand("split-miniterm-right", "Split MiniTerm Right", "split_right");
    this.addActionCommand("split-miniterm-down", "Split MiniTerm Down", "split_down");
    this.addActionCommand("focus-miniterm-left", "Focus MiniTerm Split Left", "focus_left");
    this.addActionCommand("focus-miniterm-right", "Focus MiniTerm Split Right", "focus_right");
    this.addActionCommand("focus-miniterm-up", "Focus MiniTerm Split Up", "focus_up");
    this.addActionCommand("focus-miniterm-down", "Focus MiniTerm Split Down", "focus_down");
    this.addActionCommand("resize-miniterm-left", "Resize MiniTerm Split Left", "resize_left");
    this.addActionCommand("resize-miniterm-right", "Resize MiniTerm Split Right", "resize_right");
    this.addActionCommand("resize-miniterm-up", "Resize MiniTerm Split Up", "resize_up");
    this.addActionCommand("resize-miniterm-down", "Resize MiniTerm Split Down", "resize_down");

    this.addCommand({
      id: "toggle-miniterm-quick-terminal",
      name: "Toggle MiniTerm Quick Terminal",
      callback: () => {
        this.toggleQuickTerminal();
      }
    });
  }

  private addActionCommand(id: string, name: string, action: MiniTermAction): void {
    this.addCommand({
      id,
      name,
      checkCallback: (checking) => {
        const target = this.getActiveMiniTermTarget();
        if (!target?.hasTabs()) {
          return false;
        }

        if (!checking) {
          target.executeAction(action);
        }

        return true;
      }
    });
  }

  private registerFileMenu(): void {
    this.registerEvent(
      this.app.workspace.on("file-menu", (menu, file) => {
        menu.addItem((item) => {
          item
            .setTitle("Open in MiniTerm")
            .setIcon("terminal")
            .onClick(() => {
              const cwd = this.resolveCwdForTarget(file);
              void this.openMiniTerm(cwd);
            });
        });
      })
    );
  }

  private registerEmptyViewKeybindings(): void {
    this.registerDomEvent(
      window,
      "keydown",
      (event) => {
        if (event.defaultPrevented) {
          return;
        }

        const view = this.getActiveMiniTermView();
        if (!view || view.hasTabs()) {
          return;
        }

        const trigger = eventToKeybindingTrigger(event) ?? "";
        const action = createKeybindingMap(this.settings.keybindings).get(trigger);
        const customCommand = createCustomCommandTriggerMap(this.settings.customCommands).get(trigger);
        if (!action && !customCommand) {
          return;
        }

        event.preventDefault();
        event.stopImmediatePropagation();
        if (action) {
          view.executeAction(action);
        } else if (customCommand) {
          view.runCustomCommand(customCommand);
        }
      },
      { capture: true }
    );
  }

  private registerTerminalEscapeKey(): void {
    this.registerDomEvent(
      window,
      "keydown",
      (event) => {
        if (event.key !== "Escape" && event.code !== "Escape") {
          return;
        }

        const target = this.getActiveMiniTermTarget();
        if (!target?.hasTabs() || !target.containsActiveElement()) {
          return;
        }

        if (target.writeActive("\x1b")) {
          event.preventDefault();
          event.stopImmediatePropagation();
        }
      },
      { capture: true }
    );
  }

  private resolveCwdForTarget(file: TAbstractFile): string {
    const targetKind = file instanceof TFolder ? "folder" : "file";
    return resolveTargetCwd(getVaultBasePath(this.app), file.path, targetKind);
  }

  private getActiveMiniTermView(): MiniTermView | null {
    return this.app.workspace.getActiveViewOfType(MiniTermView);
  }

  private getActiveMiniTermTarget(): MiniTermTarget | null {
    if (this.quickTerminal?.isVisible() && this.quickTerminal.containsActiveElement()) {
      return this.quickTerminal;
    }

    const view = this.getActiveMiniTermView();
    if (view) {
      return view;
    }

    if (this.quickTerminal?.isVisible()) {
      return this.quickTerminal;
    }

    return null;
  }

  private getQuickTerminal(): MiniTermQuickTerminal {
    this.quickTerminal ??= new MiniTermQuickTerminal(this);
    return this.quickTerminal;
  }

  private async getOrCreateMiniTermLeaf(): Promise<WorkspaceLeaf> {
    const existingLeaf = this.app.workspace.getLeavesOfType(VIEW_TYPE_MINITERM)[0];
    if (existingLeaf) {
      return existingLeaf;
    }

    const leaf = this.app.workspace.getLeaf("tab");
    await leaf.setViewState({
      type: VIEW_TYPE_MINITERM,
      active: true
    });

    return leaf;
  }

  private refreshViews(): void {
    for (const leaf of this.app.workspace.getLeavesOfType(VIEW_TYPE_MINITERM)) {
      if (leaf.view instanceof MiniTermView) {
        leaf.view.applySettings();
      }
    }

    this.quickTerminal?.applySettings();
  }
}
