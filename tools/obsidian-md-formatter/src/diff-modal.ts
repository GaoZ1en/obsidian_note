import { Modal, Notice, Setting } from "obsidian";
import type { App } from "obsidian";
import { buildUnifiedDiff } from "./diff";
import type { LintWarning } from "./types";

export class DiffModal extends Modal {
  constructor(
    app: App,
    private readonly before: string,
    private readonly after: string,
    private readonly warnings: LintWarning[],
    private readonly onApply: () => void
  ) {
    super(app);
  }

  override onOpen(): void {
    const { contentEl } = this;
    contentEl.empty();
    contentEl.createEl("h2", { text: "Markdown formatting preview" });

    if (this.warnings.length > 0) {
      contentEl.createEl("p", { text: `${this.warnings.length} warning(s) remain after formatting.` });
    }

    const pre = contentEl.createEl("pre");
    pre.setText(buildUnifiedDiff(this.before, this.after));

    new Setting(contentEl)
      .addButton((button) => {
        button
          .setButtonText("Apply")
          .setCta()
          .onClick(() => {
            this.onApply();
            new Notice("Formatted current note.");
            this.close();
          });
      })
      .addButton((button) => {
        button
          .setButtonText("Cancel")
          .onClick(() => {
            this.close();
          });
      });
  }
}

export class LintModal extends Modal {
  constructor(app: App, private readonly warnings: LintWarning[]) {
    super(app);
  }

  override onOpen(): void {
    const { contentEl } = this;
    contentEl.empty();
    contentEl.createEl("h2", { text: "Markdown lint warnings" });

    if (this.warnings.length === 0) {
      contentEl.createEl("p", { text: "No warnings." });
      return;
    }

    const list = contentEl.createEl("ul");
    for (const warning of this.warnings) {
      list.createEl("li", {
        text: `Line ${warning.line}: [${warning.severity}] ${warning.code} - ${warning.message}`
      });
    }
  }
}

export interface FolderFormatSummary {
  folderPath: string;
  scannedFiles: number;
  changedFiles: number;
  warningCount: number;
}

export class FolderFormatModal extends Modal {
  constructor(
    app: App,
    private readonly summary: FolderFormatSummary,
    private readonly onApply: () => Promise<void>
  ) {
    super(app);
  }

  override onOpen(): void {
    const { contentEl } = this;
    contentEl.empty();
    contentEl.createEl("h2", { text: "Format folder" });
    contentEl.createEl("p", { text: this.summary.folderPath });

    const list = contentEl.createEl("ul");
    list.createEl("li", { text: `${this.summary.scannedFiles} Markdown file(s) scanned.` });
    list.createEl("li", { text: `${this.summary.changedFiles} file(s) will be formatted.` });
    list.createEl("li", { text: `${this.summary.warningCount} warning(s) remain after formatting.` });

    new Setting(contentEl)
      .addButton((button) => {
        button
          .setButtonText("Apply")
          .setCta()
          .onClick(() => {
            button.setDisabled(true);
            void this.onApply().finally(() => {
              this.close();
            });
          });
      })
      .addButton((button) => {
        button
          .setButtonText("Cancel")
          .onClick(() => {
            this.close();
          });
      });
  }
}
