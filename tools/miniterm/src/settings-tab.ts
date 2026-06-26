import { PluginSettingTab, Setting } from "obsidian";
import type { CustomCommandCwdMode, MiniTermCustomCommand } from "./custom-commands";
import { createCustomCommandId } from "./custom-commands";
import type MiniTermPlugin from "./main";
import {
  formatKeybindingTriggerForDisplay,
  formatKeybindingsInput,
  normalizeKeybindingTrigger,
  parseKeybindingsInput
} from "./keybindings";
import {
  formatEnvInput,
  formatShellArgsInput,
  getDefaultShell,
  parseEnvInput,
  parseShellArgsInput
} from "./settings";

export class MiniTermSettingTab extends PluginSettingTab {
  private readonly plugin: MiniTermPlugin;

  constructor(plugin: MiniTermPlugin) {
    super(plugin.app, plugin);
    this.plugin = plugin;
  }

  override display(): void {
    const { containerEl } = this;
    containerEl.empty();

    new Setting(containerEl)
      .setName("Shell path")
      .setDesc("Executable path for new MiniTerm tabs.")
      .addText((text) => {
        text.inputEl.placeholder = getDefaultShell();
        text.setValue(this.plugin.settings.shellPath);
        text.onChange(async (value) => {
          this.plugin.settings.shellPath = value.trim() || getDefaultShell();
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Shell args")
      .setDesc("One argument per line.")
      .addTextArea((text) => {
        text.inputEl.rows = 4;
        text.setValue(formatShellArgsInput(this.plugin.settings.shellArgs));
        text.onChange(async (value) => {
          this.plugin.settings.shellArgs = parseShellArgsInput(value);
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Environment")
      .setDesc("One KEY=VALUE entry per line. Entries override the inherited process environment.")
      .addTextArea((text) => {
        text.inputEl.rows = 6;
        text.setValue(formatEnvInput(this.plugin.settings.env));
        text.onChange(async (value) => {
          this.plugin.settings.env = parseEnvInput(value);
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Font size")
      .setDesc("Terminal font size in pixels.")
      .addSlider((slider) => {
        slider.setLimits(9, 32, 1);
        slider.setDynamicTooltip();
        slider.setValue(this.plugin.settings.fontSize);
        slider.onChange(async (value) => {
          this.plugin.settings.fontSize = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Letter spacing")
      .setDesc("Additional horizontal spacing between terminal characters.")
      .addSlider((slider) => {
        slider.setLimits(-4, 4, 1);
        slider.setDynamicTooltip();
        slider.setValue(this.plugin.settings.letterSpacing);
        slider.onChange(async (value) => {
          this.plugin.settings.letterSpacing = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Scrollback")
      .setDesc("Maximum number of terminal history lines.")
      .addText((text) => {
        text.inputEl.type = "number";
        text.inputEl.min = "100";
        text.inputEl.step = "100";
        text.setValue(String(this.plugin.settings.scrollback));
        text.onChange(async (value) => {
          const scrollback = Number.parseInt(value, 10);
          if (Number.isFinite(scrollback) && scrollback >= 100) {
            this.plugin.settings.scrollback = scrollback;
            await this.plugin.saveSettings();
          }
        });
      });

    new Setting(containerEl)
      .setName("Keybindings")
      .setDesc("One trigger=action entry per line. Use Option for macOS Option/Alt shortcuts.")
      .addTextArea((text) => {
        text.inputEl.rows = 10;
        text.setValue(formatKeybindingsInput(this.plugin.settings.keybindings));
        text.onChange(async (value) => {
          const keybindings = parseKeybindingsInput(value);
          if (keybindings.length > 0) {
            this.plugin.settings.keybindings = keybindings;
            await this.plugin.saveSettings();
          }
        });
      });

    new Setting(containerEl)
      .setName("Quick terminal height")
      .setDesc("Floating quick terminal height as a percentage of the Obsidian window.")
      .addSlider((slider) => {
        slider.setLimits(25, 80, 1);
        slider.setDynamicTooltip();
        slider.setValue(this.plugin.settings.quickTerminalHeight);
        slider.onChange(async (value) => {
          this.plugin.settings.quickTerminalHeight = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Run startup command")
      .setDesc("Run the configured startup command in newly created tabs.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.startupCommandEnabled);
        toggle.onChange(async (value) => {
          this.plugin.settings.startupCommandEnabled = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Startup command")
      .setDesc("Command sent to new shells only when startup command is enabled.")
      .addTextArea((text) => {
        text.inputEl.rows = 3;
        text.setValue(this.plugin.settings.startupCommand);
        text.onChange(async (value) => {
          this.plugin.settings.startupCommand = value;
          await this.plugin.saveSettings();
        });
      });

    this.displayCustomCommands(containerEl);
  }

  private displayCustomCommands(containerEl: HTMLElement): void {
    new Setting(containerEl)
      .setName("Custom commands")
      .setDesc("Create MiniTerm tabs that immediately run a configured command.")
      .addButton((button) => {
        button
          .setButtonText("Add command")
          .onClick(async () => {
            const command: MiniTermCustomCommand = {
              id: createCustomCommandId(this.plugin.settings.customCommands),
              name: "New command",
              command: "",
              trigger: "",
              cwdMode: "inherit"
            };

            this.plugin.settings.customCommands = [
              ...this.plugin.settings.customCommands,
              command
            ];
            await this.plugin.saveSettings();
            this.display();
          });
      });

    for (const command of this.plugin.settings.customCommands) {
      new Setting(containerEl)
        .setName(command.name || "Custom command")
        .setDesc(command.command.trim() || "No command configured.")
        .addText((text) => {
          text.inputEl.placeholder = "Name";
          text.setValue(command.name);
          text.onChange(async (value) => {
            await this.updateCustomCommand(command.id, { name: value.trim() || "Custom command" });
          });
        })
        .addText((text) => {
          text.inputEl.placeholder = "Option+1";
          text.setValue(command.trigger ? formatKeybindingTriggerForDisplay(command.trigger) : "");
          text.onChange(async (value) => {
            const trimmed = value.trim();
            if (trimmed.length === 0) {
              await this.updateCustomCommand(command.id, { trigger: "" });
              return;
            }

            const trigger = normalizeKeybindingTrigger(trimmed);
            if (trigger) {
              await this.updateCustomCommand(command.id, { trigger });
            }
          });
        })
        .addDropdown((dropdown) => {
          dropdown
            .addOption("inherit", "Inherit cwd")
            .addOption("vault", "Vault root")
            .setValue(command.cwdMode)
            .onChange(async (value) => {
              await this.updateCustomCommand(command.id, {
                cwdMode: value as CustomCommandCwdMode
              });
            });
        })
        .addButton((button) => {
          button
            .setButtonText("Remove")
            .onClick(async () => {
              this.plugin.settings.customCommands = this.plugin.settings.customCommands.filter(
                (entry) => entry.id !== command.id
              );
              await this.plugin.saveSettings();
              this.display();
            });
        });

      new Setting(containerEl)
        .setName("Command")
        .addTextArea((text) => {
          text.inputEl.rows = 3;
          text.inputEl.placeholder = "npm run dev";
          text.setValue(command.command);
          text.onChange(async (value) => {
            await this.updateCustomCommand(command.id, { command: value });
          });
        });
    }
  }

  private async updateCustomCommand(
    commandId: string,
    patch: Partial<Omit<MiniTermCustomCommand, "id">>
  ): Promise<void> {
    this.plugin.settings.customCommands = this.plugin.settings.customCommands.map((command) => (
      command.id === commandId ? { ...command, ...patch } : command
    ));
    await this.plugin.saveSettings();
  }
}
