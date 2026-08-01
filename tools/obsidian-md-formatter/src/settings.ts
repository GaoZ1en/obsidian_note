import { PluginSettingTab, Setting } from "obsidian";
import type { App } from "obsidian";
import type MarkdownFormatterPlugin from "./main";
import type { FormatterOptions } from "./types";
import { DEFAULT_FORMATTER_OPTIONS } from "./types";

export type MarkdownFormatterSettings = FormatterOptions;

export const DEFAULT_SETTINGS: MarkdownFormatterSettings = {
  ...DEFAULT_FORMATTER_OPTIONS
};

export class FormatterSettingTab extends PluginSettingTab {
  constructor(app: App, private readonly plugin: MarkdownFormatterPlugin) {
    super(app, plugin);
  }

  override display(): void {
    const { containerEl } = this;
    containerEl.empty();

    containerEl.createEl("h2", { text: "formatter" });

    new Setting(containerEl)
      .setName("Format on open")
      .setDesc("Apply conservative formatting when a Markdown file is opened.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.formatOnOpen).onChange(async (value) => {
          this.plugin.settings.formatOnOpen = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Confirm manual format")
      .setDesc("Show a diff before applying the Format current note command.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.confirmManualFormat).onChange(async (value) => {
          this.plugin.settings.confirmManualFormat = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Format on save")
      .setDesc("Apply conservative formatting when Obsidian emits an editor-save event.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.formatOnSave).onChange(async (value) => {
          this.plugin.settings.formatOnSave = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Normalize math delimiters")
      .setDesc("Convert inline \\(...\\) to $...$ and display math to $$...$$ blocks.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.normalizeMathDelimiters).onChange(async (value) => {
          this.plugin.settings.normalizeMathDelimiters = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Wrap simple display math in align")
      .setDesc("Use $$\\begin{align} ... \\end{align}$$ for simple display math blocks.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.wrapSimpleDisplayMathInAlign).onChange(async (value) => {
          this.plugin.settings.wrapSimpleDisplayMathInAlign = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Normalize list markers")
      .setDesc("Use '-' for unordered lists and preserve ordered list numbers while normalizing ')' to '.'.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.normalizeListMarkers).onChange(async (value) => {
          this.plugin.settings.normalizeListMarkers = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Capitalize sentence starts")
      .setDesc("Capitalize lowercase English sentence starts in prose while leaving list-item starts unchanged.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.capitalizeSentenceStarts).onChange(async (value) => {
          this.plugin.settings.capitalizeSentenceStarts = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Capitalize title words")
      .setDesc("Capitalize English major words in Markdown headings while preserving math and technical notation.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.capitalizeTitleWords).onChange(async (value) => {
          this.plugin.settings.capitalizeTitleWords = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Join prose paragraph lines")
      .setDesc("Join soft-wrapped prose into one source line while preserving blank-line paragraph breaks.")
      .addToggle((toggle) => {
        toggle.setValue(this.plugin.settings.joinProseLines).onChange(async (value) => {
          this.plugin.settings.joinProseLines = value;
          await this.plugin.saveSettings();
        });
      });

    new Setting(containerEl)
      .setName("Maximum consecutive blank lines")
      .setDesc("Blank lines are compressed outside frontmatter, code blocks, and math blocks.")
      .addText((text) => {
        text.setValue(String(this.plugin.settings.maxConsecutiveBlankLines)).onChange(async (value) => {
          const parsed = Number.parseInt(value, 10);
          if (Number.isFinite(parsed) && parsed >= 0) {
            this.plugin.settings.maxConsecutiveBlankLines = parsed;
            await this.plugin.saveSettings();
          }
        });
      });
  }
}
