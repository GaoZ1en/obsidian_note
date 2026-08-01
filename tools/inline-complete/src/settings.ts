import { App, Notice, PluginSettingTab, SecretComponent, Setting } from "obsidian";
import InlineCompletePlugin from "./main";
import type { InlineCompleteSettings } from "./types";

export class InlineCompleteSettingTab extends PluginSettingTab {
  constructor(app: App, private readonly plugin: InlineCompletePlugin) {
    super(app, plugin);
  }

  display(): void {
    const { containerEl } = this;
    containerEl.empty();

    containerEl.createEl("h2", { text: "Inline Complete" });

    new Setting(containerEl)
      .setName("Enable completions")
      .setDesc("Turn inline completion requests on or off.")
      .addToggle((toggle) =>
        toggle.setValue(this.plugin.settings.enabled).onChange(async (value) => {
          this.plugin.settings.enabled = value;
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("Auto trigger")
      .setDesc("Request a suggestion automatically after typing pauses. Turn this off for manual-only completions.")
      .addToggle((toggle) =>
        toggle.setValue(this.plugin.settings.autoTrigger).onChange(async (value) => {
          this.plugin.settings.autoTrigger = value;
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("Show status bar")
      .setDesc("Show request state and latency in the Obsidian status bar.")
      .addToggle((toggle) =>
        toggle.setValue(this.plugin.settings.showStatusBar).onChange(async (value) => {
          this.plugin.settings.showStatusBar = value;
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("Debug logging")
      .setDesc("Log non-content diagnostics for completion results to the developer console.")
      .addToggle((toggle) =>
        toggle.setValue(this.plugin.settings.debugLogging).onChange(async (value) => {
          this.plugin.settings.debugLogging = value;
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("Trigger after accept")
      .setDesc("Automatically request another suggestion after accepting one. Disabled by default to limit drift and API usage.")
      .addToggle((toggle) =>
        toggle.setValue(this.plugin.settings.triggerAfterAccept).onChange(async (value) => {
          this.plugin.settings.triggerAfterAccept = value;
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("Complete sentence")
      .setDesc("Bias guided completions toward finishing the current sentence.")
      .addToggle((toggle) =>
        toggle.setValue(this.plugin.settings.completeSentence).onChange(async (value) => {
          this.plugin.settings.completeSentence = value;
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("DeepSeek API key")
      .setDesc("Stored in Obsidian SecretStorage, not in plugin data.json.")
      .addComponent((el) =>
        new SecretComponent(this.app, el)
          .setValue(this.plugin.settings.secretId)
          .onChange(async (value) => {
            this.plugin.settings.secretId = value || "inline-complete-deepseek-api-key";
            await this.plugin.saveSettings();
          })
      );

    new Setting(containerEl)
      .setName("Base URL")
      .setDesc("DeepSeek API base URL used for guided chat completion.")
      .addText((text) =>
        text.setValue(this.plugin.settings.baseUrl).onChange(async (value) => {
          this.plugin.settings.baseUrl = value.trim() || "https://api.deepseek.com/beta";
          await this.plugin.saveSettings();
        })
      );

    new Setting(containerEl)
      .setName("Model")
      .setDesc("Default is deepseek-v4-flash for DeepSeek FIM.")
      .addText((text) =>
        text.setValue(this.plugin.settings.model).onChange(async (value) => {
          this.plugin.settings.model = value.trim() || "deepseek-v4-flash";
          await this.plugin.saveSettings();
        })
      );

    this.addNumberSetting({
      name: "Debounce",
      desc: "Milliseconds to wait after typing before auto-triggering. Lower is faster but can send more requests.",
      value: this.plugin.settings.debounceMs,
      min: 100,
      max: 3000,
      fallback: 300,
      onChange: async (value) => {
        this.plugin.settings.debounceMs = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "Context window",
      desc: "Total characters sent around the cursor from the current file. Unused suffix budget is reassigned to the prefix.",
      value: this.plugin.settings.contextChars,
      min: 500,
      max: 30000,
      fallback: 4000,
      onChange: async (value) => {
        this.plugin.settings.contextChars = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "Max output tokens",
      desc: "Upper bound for generated continuation length. Smaller values reduce wait time.",
      value: this.plugin.settings.maxTokens,
      min: 16,
      max: 512,
      fallback: 48,
      onChange: async (value) => {
        this.plugin.settings.maxTokens = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "Sentence max tokens",
      desc: "Minimum token budget used when completing an unfinished sentence.",
      value: this.plugin.settings.sentenceMaxTokens,
      min: 32,
      max: 512,
      fallback: 64,
      onChange: async (value) => {
        this.plugin.settings.sentenceMaxTokens = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "Temperature",
      desc: "Lower values make suggestions more deterministic. The default is 0 for conservative inline writing.",
      value: this.plugin.settings.temperature,
      min: 0,
      max: 2,
      fallback: 0,
      step: 0.1,
      onChange: async (value) => {
        this.plugin.settings.temperature = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "Minimum prefix",
      desc: "Minimum non-space characters on the current line before auto-triggering. Manual trigger ignores this.",
      value: this.plugin.settings.minPrefixChars,
      min: 0,
      max: 500,
      fallback: 20,
      onChange: async (value) => {
        this.plugin.settings.minPrefixChars = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "After-accept delay",
      desc: "Milliseconds to wait before requesting the next suggestion after accept.",
      value: this.plugin.settings.triggerAfterAcceptDelayMs,
      min: 0,
      max: 3000,
      fallback: 150,
      onChange: async (value) => {
        this.plugin.settings.triggerAfterAcceptDelayMs = value;
        await this.plugin.saveSettings();
      }
    });

    this.addNumberSetting({
      name: "Max accept chain",
      desc: "Maximum number of consecutive after-accept suggestions.",
      value: this.plugin.settings.maxAcceptChain,
      min: 0,
      max: 20,
      fallback: 3,
      onChange: async (value) => {
        this.plugin.settings.maxAcceptChain = value;
        await this.plugin.saveSettings();
      }
    });

    new Setting(containerEl)
      .setName("Store API key")
      .setDesc("Paste a DeepSeek key once and store it under the selected secret ID.")
      .addText((text) => {
        text.setPlaceholder("sk-...");
        text.inputEl.type = "password";
        text.onChange((value) => {
          text.inputEl.dataset.inlineCompletePendingSecret = value;
        });
      })
      .addButton((button) =>
        button.setButtonText("Save key").onClick(() => {
          const input = button.buttonEl.parentElement?.querySelector<HTMLInputElement>("input");
          const value = input?.dataset.inlineCompletePendingSecret ?? "";
          if (!value.trim()) {
            new Notice("Inline Complete: no API key entered.");
            return;
          }

          this.app.secretStorage.setSecret(this.plugin.settings.secretId, value.trim());
          if (input) {
            input.value = "";
            input.dataset.inlineCompletePendingSecret = "";
          }
          new Notice("Inline Complete: API key stored.");
        })
      );
  }

  private addNumberSetting(options: {
    name: string;
    desc: string;
    value: number;
    min: number;
    max: number;
    fallback: number;
    step?: number;
    onChange: (value: number) => Promise<void>;
  }): void {
    new Setting(this.containerEl)
      .setName(options.name)
      .setDesc(options.desc)
      .addText((text) =>
        text.setValue(String(options.value)).onChange(async (raw) => {
          const value = normalizeNumber(raw, options);
          await options.onChange(value);
        })
      );
  }
}

function normalizeNumber(
  raw: string,
  options: Pick<Parameters<InlineCompleteSettingTab["addNumberSetting"]>[0], "min" | "max" | "fallback" | "step">
): number {
  const parsed = Number(raw);
  if (!Number.isFinite(parsed)) {
    return options.fallback;
  }

  const clamped = Math.max(options.min, Math.min(options.max, parsed));
  if (options.step === undefined) {
    return Math.round(clamped);
  }

  return Math.round(clamped / options.step) * options.step;
}

export function sanitizeSettings(settings: InlineCompleteSettings): InlineCompleteSettings {
  return {
    ...settings,
    baseUrl: normalizeBaseUrl(settings.baseUrl),
    model: normalizeModel(settings.model),
    secretId: settings.secretId.trim() || "inline-complete-deepseek-api-key",
    debounceMs: Math.max(100, Math.min(3000, Math.round(settings.debounceMs))),
    maxTokens: Math.max(16, Math.min(512, Math.round(settings.maxTokens))),
    sentenceMaxTokens: Math.max(32, Math.min(512, Math.round(settings.sentenceMaxTokens))),
    temperature: Math.max(0, Math.min(2, settings.temperature)),
    contextChars: Math.max(500, Math.min(30000, Math.round(settings.contextChars))),
    minPrefixChars: Math.max(0, Math.min(500, Math.round(settings.minPrefixChars))),
    triggerAfterAcceptDelayMs: Math.max(0, Math.min(3000, Math.round(settings.triggerAfterAcceptDelayMs))),
    maxAcceptChain: Math.max(0, Math.min(20, Math.round(settings.maxAcceptChain)))
  };
}

function normalizeBaseUrl(baseUrl: string): string {
  const trimmed = baseUrl.trim();
  if (!trimmed || trimmed === "https://api.deepseek.com") {
    return "https://api.deepseek.com/beta";
  }

  return trimmed;
}

function normalizeModel(model: string): string {
  const trimmed = model.trim();
  if (!trimmed) {
    return "deepseek-v4-flash";
  }

  return trimmed;
}
