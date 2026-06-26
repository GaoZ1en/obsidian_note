import type { MiniTermCustomCommand } from "./custom-commands";
import type { MiniTermAction } from "./keybindings";
import type { MiniTermHost } from "./plugin-host";
import { MiniTermWorkspace } from "./workspace";

export class MiniTermQuickTerminal {
  private readonly host: MiniTermHost;
  private overlayEl: HTMLDivElement | null = null;
  private panelEl: HTMLDivElement | null = null;
  private workspace: MiniTermWorkspace | null = null;
  private visible = false;

  constructor(host: MiniTermHost) {
    this.host = host;
  }

  toggle(): void {
    if (this.visible) {
      this.hide();
    } else {
      this.show();
    }
  }

  show(cwd?: string): void {
    this.ensureMounted();

    if (!this.overlayEl || !this.workspace) {
      return;
    }

    this.overlayEl.style.setProperty("--miniterm-quick-height", `${this.host.settings.quickTerminalHeight}vh`);
    this.overlayEl.classList.add("is-visible");
    this.visible = true;

    if (cwd) {
      this.workspace.openTab(cwd);
    } else if (!this.workspace.hasTabs()) {
      this.workspace.openTab();
    }

    this.workspace.focusActiveTerminal();
  }

  hide(): void {
    this.overlayEl?.classList.remove("is-visible");
    this.visible = false;
  }

  dispose(): void {
    this.workspace?.dispose();
    this.workspace = null;
    this.overlayEl?.remove();
    this.overlayEl = null;
    this.panelEl = null;
    this.visible = false;
  }

  applySettings(): void {
    this.overlayEl?.style.setProperty("--miniterm-quick-height", `${this.host.settings.quickTerminalHeight}vh`);
    this.workspace?.applySettings();
  }

  hasTabs(): boolean {
    return this.workspace?.hasTabs() ?? false;
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

  containsActiveElement(): boolean {
    const activeElement = document.activeElement;
    return !!activeElement && !!this.overlayEl?.contains(activeElement);
  }

  isVisible(): boolean {
    return this.visible;
  }

  private ensureMounted(): void {
    if (this.overlayEl && this.panelEl && this.workspace) {
      return;
    }

    this.overlayEl = document.createElement("div");
    this.overlayEl.className = "miniterm-quick-overlay";
    this.overlayEl.style.setProperty("--miniterm-quick-height", `${this.host.settings.quickTerminalHeight}vh`);

    this.panelEl = document.createElement("div");
    this.panelEl.className = "miniterm-quick-panel";
    this.overlayEl.append(this.panelEl);
    document.body.append(this.overlayEl);

    this.workspace = new MiniTermWorkspace(this.host, {
      variant: "quick",
      onRequestClose: () => this.hide()
    });
    this.workspace.mount(this.panelEl);
  }
}
