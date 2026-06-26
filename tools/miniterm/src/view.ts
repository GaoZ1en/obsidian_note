import { ItemView, WorkspaceLeaf } from "obsidian";
import type { MiniTermCustomCommand } from "./custom-commands";
import type { MiniTermAction } from "./keybindings";
import type { MiniTermHost } from "./plugin-host";
import { MiniTermWorkspace } from "./workspace";

export const VIEW_TYPE_MINITERM = "miniterm-view";

export class MiniTermView extends ItemView {
  private readonly host: MiniTermHost;
  private workspace: MiniTermWorkspace | null = null;

  constructor(leaf: WorkspaceLeaf, host: MiniTermHost) {
    super(leaf);
    this.host = host;
  }

  override getViewType(): string {
    return VIEW_TYPE_MINITERM;
  }

  override getDisplayText(): string {
    return "MiniTerm";
  }

  override getIcon(): string {
    return "terminal";
  }

  override async onOpen(): Promise<void> {
    this.contentEl.empty();
    this.contentEl.classList.add("miniterm-content");
    this.workspace = new MiniTermWorkspace(this.host, {
      variant: "view",
      onRequestClose: () => {
        void this.leaf.detach();
      }
    });
    this.workspace.mount(this.contentEl);
  }

  override async onClose(): Promise<void> {
    this.workspace?.dispose();
    this.workspace = null;
    this.contentEl.classList.remove("miniterm-content");
  }

  hasTabs(): boolean {
    return this.workspace?.hasTabs() ?? false;
  }

  openTab(cwd?: string): void {
    this.workspace?.openTab(cwd);
  }

  closeCurrentTab(): Promise<void> {
    return this.workspace?.closeCurrentTab() ?? Promise.resolve();
  }

  closeCurrentSurface(): Promise<void> {
    return this.workspace?.closeCurrentSurface() ?? Promise.resolve();
  }

  nextTab(): void {
    this.workspace?.nextTab();
  }

  previousTab(): void {
    this.workspace?.previousTab();
  }

  executeAction(action: MiniTermAction): void {
    this.workspace?.executeAction(action);
  }

  runCustomCommand(command: MiniTermCustomCommand): void {
    this.workspace?.runCustomCommand(command);
  }

  writeActive(data: string): boolean {
    return this.workspace?.writeActive(data) ?? false;
  }

  applySettings(): void {
    this.workspace?.applySettings();
  }

  containsActiveElement(): boolean {
    return this.workspace?.containsActiveElement() ?? false;
  }
}
