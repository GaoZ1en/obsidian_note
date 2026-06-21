import { Editor, MarkdownView, Notice, Plugin, TFile, TFolder, Vault } from "obsidian";
import type { EventRef } from "obsidian";
import { DiffModal, FolderFormatModal, LintModal } from "./diff-modal";
import type { FolderFormatSummary } from "./diff-modal";
import { formatMarkdown } from "./formatter";
import { lintMarkdown } from "./lint";
import { DEFAULT_SETTINGS, FormatterSettingTab } from "./settings";
import type { MarkdownFormatterSettings } from "./settings";
import { shouldFormatVaultPath } from "./targets";

export default class MarkdownFormatterPlugin extends Plugin {
  settings: MarkdownFormatterSettings = { ...DEFAULT_SETTINGS };
  private readonly formattingFiles = new Set<string>();

  override async onload(): Promise<void> {
    await this.loadSettings();

    this.addCommand({
      id: "format-current-note",
      name: "Format current note",
      editorCallback: (editor) => {
        this.formatCurrentNote(editor);
      }
    });

    this.addCommand({
      id: "format-selection",
      name: "Format selection",
      editorCallback: (editor) => {
        this.formatSelection(editor);
      }
    });

    this.addCommand({
      id: "preview-formatting-diff",
      name: "Preview formatting diff",
      editorCallback: (editor) => {
        this.previewCurrentNote(editor);
      }
    });

    this.addCommand({
      id: "lint-current-note",
      name: "Lint current note",
      editorCallback: (editor) => {
        this.lintCurrentNote(editor);
      }
    });

    this.registerEditorSaveHook();
    this.registerFileOpenHook();
    this.registerFolderContextMenu();
    this.app.workspace.onLayoutReady(() => {
      void this.formatFileOnOpen(this.app.workspace.getActiveFile());
    });
    this.addSettingTab(new FormatterSettingTab(this.app, this));
  }

  async loadSettings(): Promise<void> {
    this.settings = {
      ...DEFAULT_SETTINGS,
      ...(await this.loadData())
    };
  }

  async saveSettings(): Promise<void> {
    await this.saveData(this.settings);
  }

  private formatCurrentNote(editor: Editor): void {
    const source = editor.getValue();
    const result = formatMarkdown(source, this.settings);

    if (!result.changed) {
      new Notice("No formatting changes.");
      return;
    }

    if (this.settings.confirmManualFormat) {
      new DiffModal(this.app, source, result.text, result.warnings, () => {
        editor.setValue(result.text);
      }).open();
      return;
    }

    editor.setValue(result.text);
    new Notice(`Formatted current note with ${result.warnings.length} warning(s).`);
  }

  private formatSelection(editor: Editor): void {
    const selection = editor.getSelection();
    if (selection.length === 0) {
      new Notice("No selection to format.");
      return;
    }

    const result = formatMarkdown(selection, this.settings);
    if (!result.changed) {
      new Notice("No formatting changes in selection.");
      return;
    }

    editor.replaceSelection(result.text.endsWith("\n") ? result.text.slice(0, -1) : result.text);
    new Notice(`Formatted selection with ${result.warnings.length} warning(s).`);
  }

  private previewCurrentNote(editor: Editor): void {
    const source = editor.getValue();
    const result = formatMarkdown(source, this.settings);

    if (!result.changed) {
      new Notice("No formatting changes.");
      return;
    }

    new DiffModal(this.app, source, result.text, result.warnings, () => {
      editor.setValue(result.text);
    }).open();
  }

  private lintCurrentNote(editor: Editor): void {
    const warnings = lintMarkdown(editor.getValue(), this.settings);
    if (warnings.length === 0) {
      new Notice("No lint warnings.");
      return;
    }

    new LintModal(this.app, warnings).open();
  }

  private registerEditorSaveHook(): void {
    const onEditorSave = (this.app.workspace.on as unknown as (
      name: string,
      callback: (editor: Editor, view: MarkdownView) => void
    ) => EventRef)("editor-save", (editor: Editor, view: MarkdownView) => {
      if (!this.settings.formatOnSave || !(view instanceof MarkdownView)) {
        return;
      }

      const result = formatMarkdown(editor.getValue(), this.settings);
      if (result.changed) {
        editor.setValue(result.text);
      }
    });

    this.registerEvent(onEditorSave);
  }

  private registerFileOpenHook(): void {
    this.registerEvent(
      this.app.workspace.on("file-open", (file) => {
        void this.formatFileOnOpen(file);
      })
    );
  }

  private async formatFileOnOpen(file: TFile | null): Promise<void> {
    if (!this.settings.formatOnOpen || file === null || !shouldFormatVaultPath(file.path)) {
      return;
    }

    if (this.formattingFiles.has(file.path)) {
      return;
    }

    this.formattingFiles.add(file.path);
    try {
      const source = await this.app.vault.read(file);
      const result = formatMarkdown(source, this.settings);
      if (result.changed) {
        await this.app.vault.modify(file, result.text);
        new Notice(`Formatted on open: ${file.basename}`);
      }
    } finally {
      this.formattingFiles.delete(file.path);
    }
  }

  private registerFolderContextMenu(): void {
    this.registerEvent(
      this.app.workspace.on("file-menu", (menu, file) => {
        if (!(file instanceof TFolder)) {
          return;
        }

        menu.addItem((item) => {
          item
            .setTitle("Format folder")
            .setIcon("wand-sparkles")
            .onClick(() => {
              void this.previewFolderFormat(file);
            });
        });
      })
    );
  }

  private async previewFolderFormat(folder: TFolder): Promise<void> {
    const files = this.getMarkdownFilesInFolder(folder);
    if (files.length === 0) {
      new Notice("No Markdown files in folder.");
      return;
    }

    new Notice(`Scanning ${files.length} Markdown file(s)...`);
    const changes = await this.scanFolderChanges(files);

    if (changes.length === 0) {
      new Notice("Folder already formatted.");
      return;
    }

    const summary: FolderFormatSummary = {
      folderPath: folder.isRoot() ? "/" : folder.path,
      scannedFiles: files.length,
      changedFiles: changes.length,
      warningCount: changes.reduce((count, change) => count + change.warningCount, 0)
    };

    new FolderFormatModal(this.app, summary, async () => {
      await this.applyFolderChanges(changes);
      new Notice(`Formatted ${changes.length} file(s).`);
    }).open();
  }

  private getMarkdownFilesInFolder(folder: TFolder): TFile[] {
    const files: TFile[] = [];
    Vault.recurseChildren(folder, (child) => {
      if (child instanceof TFile && shouldFormatVaultPath(child.path)) {
        files.push(child);
      }
    });

    return files.sort((left, right) => left.path.localeCompare(right.path));
  }

  private async scanFolderChanges(files: TFile[]): Promise<Array<{ file: TFile; text: string; warningCount: number }>> {
    const changes: Array<{ file: TFile; text: string; warningCount: number }> = [];

    for (const file of files) {
      const source = await this.app.vault.read(file);
      const result = formatMarkdown(source, this.settings);
      if (result.changed) {
        changes.push({
          file,
          text: result.text,
          warningCount: result.warnings.length
        });
      }
    }

    return changes;
  }

  private async applyFolderChanges(changes: Array<{ file: TFile; text: string }>): Promise<void> {
    for (const change of changes) {
      if (this.formattingFiles.has(change.file.path)) {
        continue;
      }

      this.formattingFiles.add(change.file.path);
      try {
        await this.app.vault.modify(change.file, change.text);
      } finally {
        this.formattingFiles.delete(change.file.path);
      }
    }
  }
}
