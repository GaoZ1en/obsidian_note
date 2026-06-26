import { Notice, setIcon } from "obsidian";
import { FitAddon } from "@xterm/addon-fit";
import { ImageAddon } from "@xterm/addon-image";
import { WebLinksAddon } from "@xterm/addon-web-links";
import { Terminal } from "@xterm/xterm";
import { createRequire } from "node:module";
import type { IPty } from "node-pty";
import {
  createKeybindingMap,
  eventToKeybindingTrigger,
  type MiniTermAction
} from "./keybindings";
import type { MiniTermCustomCommand } from "./custom-commands";
import { createCustomCommandTriggerMap } from "./custom-commands";
import type { MiniTermHost } from "./plugin-host";
import { DEFAULT_TERMINAL_TYPE, buildPtyEnv, shellDisplayName } from "./settings";

type Disposable = {
  dispose(): void;
};

type NodePtyModule = typeof import("node-pty");
type SplitAxis = "row" | "column";
type FocusDirection = "left" | "right" | "up" | "down";
type SplitNode = SplitLeafNode | SplitBranchNode;

interface SplitLeafNode {
  type: "leaf";
  sessionId: string;
}

interface SplitBranchNode {
  type: "split";
  axis: SplitAxis;
  first: SplitNode;
  second: SplitNode;
  ratio: number;
}

interface TerminalSession {
  id: string;
  tabId: string;
  title: string;
  cwd: string;
  terminal: Terminal;
  fitAddon: FitAddon;
  pty: IPty | null;
  terminalEl: HTMLDivElement;
  disposables: Disposable[];
  exited: boolean;
  opened: boolean;
  initialCommand: string | null;
}

interface TerminalTab {
  id: string;
  title: string;
  cwd: string;
  contentEl: HTMLDivElement;
  splitRoot: SplitNode;
  sessions: TerminalSession[];
  activeSessionId: string;
  zoomedSessionId: string | null;
}

interface MiniTermWorkspaceOptions {
  variant: "view" | "quick";
  onRequestClose(): void | Promise<void>;
}

interface OpenTabOptions {
  cwd?: string;
  title?: string;
  initialCommand?: string;
}

export class MiniTermWorkspace {
  private readonly host: MiniTermHost;
  private readonly options: MiniTermWorkspaceOptions;
  private rootEl: HTMLDivElement | null = null;
  private tabListEl: HTMLDivElement | null = null;
  private terminalStackEl: HTMLDivElement | null = null;
  private emptyEl: HTMLDivElement | null = null;
  private resizeObserver: ResizeObserver | null = null;
  private activeTabId: string | null = null;
  private lastPtyLoadError = "";
  private nextTabId = 1;
  private nextSessionId = 1;
  private readonly tabs: TerminalTab[] = [];

  constructor(host: MiniTermHost, options: MiniTermWorkspaceOptions) {
    this.host = host;
    this.options = options;
  }

  mount(containerEl: HTMLElement): void {
    containerEl.replaceChildren();

    this.rootEl = document.createElement("div");
    this.rootEl.className = `miniterm-view miniterm-${this.options.variant}`;

    const tabBarEl = document.createElement("div");
    tabBarEl.className = "miniterm-tabbar";

    this.tabListEl = document.createElement("div");
    this.tabListEl.className = "miniterm-tabs";

    const controlsEl = document.createElement("div");
    controlsEl.className = "miniterm-controls";
    controlsEl.append(
      this.createIconButton("chevron-left", "Previous MiniTerm Tab", () => this.previousTab()),
      this.createIconButton("chevron-right", "Next MiniTerm Tab", () => this.nextTab()),
      this.createIconButton("plus", "New MiniTerm Tab", () => this.openTab()),
      this.createIconButton("panel-right", "Split Right", () => this.splitRight()),
      this.createIconButton("panel-bottom", "Split Down", () => this.splitDown()),
      this.createIconButton("x", "Close Current Split/Tab/View", () => {
        void this.closeCurrentSurface();
      })
    );

    tabBarEl.append(this.tabListEl, controlsEl);

    this.terminalStackEl = document.createElement("div");
    this.terminalStackEl.className = "miniterm-terminal-stack";

    this.emptyEl = document.createElement("div");
    this.emptyEl.className = "miniterm-empty";
    this.emptyEl.textContent = "No terminal tabs";
    this.terminalStackEl.append(this.emptyEl);

    this.rootEl.append(tabBarEl, this.terminalStackEl);
    containerEl.append(this.rootEl);

    this.resizeObserver = new ResizeObserver(() => this.fitVisibleSessions());
    this.resizeObserver.observe(this.terminalStackEl);

    this.renderTabs();
  }

  dispose(): void {
    this.resizeObserver?.disconnect();
    this.resizeObserver = null;

    for (const tab of [...this.tabs]) {
      this.disposeTab(tab);
    }

    this.tabs.length = 0;
    this.activeTabId = null;
    this.rootEl?.remove();
    this.rootEl = null;
    this.tabListEl = null;
    this.terminalStackEl = null;
    this.emptyEl = null;
  }

  hasTabs(): boolean {
    return this.tabs.length > 0;
  }

  openTab(input?: string | OpenTabOptions): void {
    if (!this.terminalStackEl) {
      return;
    }

    const options = typeof input === "string" ? { cwd: input } : input ?? {};
    const tabId = String(this.nextTabId++);
    const startCwd = options.cwd ?? this.getActiveSession()?.cwd ?? this.host.getDefaultCwd();
    const title = options.title?.trim() || shellDisplayName(this.host.settings.shellPath) || "shell";
    const contentEl = document.createElement("div");
    contentEl.className = "miniterm-tab-content";
    contentEl.dataset.tabId = tabId;
    this.terminalStackEl.append(contentEl);

    const tab: TerminalTab = {
      id: tabId,
      title,
      cwd: startCwd,
      contentEl,
      splitRoot: { type: "leaf", sessionId: "" },
      sessions: [],
      activeSessionId: "",
      zoomedSessionId: null
    };

    const session = this.createSession(tab.id, startCwd, {
      initialCommand: options.initialCommand,
      title
    });
    tab.sessions.push(session);
    tab.activeSessionId = session.id;
    tab.splitRoot = { type: "leaf", sessionId: session.id };

    this.tabs.push(tab);
    this.renderTabLayout(tab);
    this.openAndSpawnSession(session);
    this.activateTab(tab.id, session.id);
  }

  async closeCurrentTab(): Promise<void> {
    const tab = this.getActiveTab();
    if (tab) {
      await this.closeTab(tab.id);
    }
  }

  async closeCurrentSurface(): Promise<void> {
    const tab = this.getActiveTab();
    const session = this.getActiveSession();
    if (!tab || !session) {
      await this.options.onRequestClose();
      return;
    }

    if (tab.sessions.length <= 1) {
      await this.closeTab(tab.id);
      return;
    }

    const sessionIds = collectLeafIds(tab.splitRoot);
    const currentIndex = sessionIds.indexOf(session.id);
    const nextSessionId = sessionIds[currentIndex + 1] ?? sessionIds[currentIndex - 1] ?? tab.sessions[0]?.id;
    const nextRoot = removeLeaf(tab.splitRoot, session.id);
    if (!nextRoot || !nextSessionId) {
      await this.closeTab(tab.id);
      return;
    }

    tab.splitRoot = nextRoot;
    tab.sessions = tab.sessions.filter((entry) => entry.id !== session.id);
    tab.activeSessionId = nextSessionId;
    tab.zoomedSessionId = null;
    this.disposeSession(session);
    this.renderTabLayout(tab);
    this.activateTab(tab.id, nextSessionId);
  }

  async closeTab(tabId: string): Promise<void> {
    const index = this.tabs.findIndex((tab) => tab.id === tabId);
    if (index < 0) {
      return;
    }

    const [tab] = this.tabs.splice(index, 1);
    this.disposeTab(tab);

    if (this.tabs.length === 0) {
      this.activeTabId = null;
      this.renderTabs();
      await this.options.onRequestClose();
      return;
    }

    const nextIndex = Math.min(index, this.tabs.length - 1);
    const nextTab = this.tabs[nextIndex];
    this.activateTab(nextTab.id, nextTab.activeSessionId);
  }

  nextTab(): void {
    this.activateTabByOffset(1);
  }

  previousTab(): void {
    this.activateTabByOffset(-1);
  }

  splitRight(): void {
    this.openSplit("row");
  }

  splitDown(): void {
    this.openSplit("column");
  }

  focusSplit(direction: FocusDirection): void {
    const tab = this.getActiveTab();
    const activeSession = this.getActiveSession();
    if (!tab || !activeSession) {
      return;
    }

    const activeRect = activeSession.terminalEl.getBoundingClientRect();
    const activeCenter = centerOf(activeRect);
    let bestSession: TerminalSession | null = null;
    let bestScore = Number.POSITIVE_INFINITY;

    for (const session of tab.sessions) {
      if (session.id === activeSession.id) {
        continue;
      }

      const rect = session.terminalEl.getBoundingClientRect();
      if (rect.width <= 0 || rect.height <= 0 || !isCandidateInDirection(activeRect, rect, direction)) {
        continue;
      }

      const center = centerOf(rect);
      const axisDistance = direction === "left" || direction === "right"
        ? Math.abs(center.x - activeCenter.x)
        : Math.abs(center.y - activeCenter.y);
      const crossDistance = direction === "left" || direction === "right"
        ? Math.abs(center.y - activeCenter.y)
        : Math.abs(center.x - activeCenter.x);
      const score = axisDistance * 1000 + crossDistance;
      if (score < bestScore) {
        bestScore = score;
        bestSession = session;
      }
    }

    if (bestSession) {
      this.activateSession(tab.id, bestSession.id);
    }
  }

  resizeSplit(direction: FocusDirection): void {
    const tab = this.getActiveTab();
    if (!tab || tab.zoomedSessionId) {
      return;
    }

    const axis: SplitAxis = direction === "left" || direction === "right" ? "row" : "column";
    const delta = direction === "right" || direction === "down" ? 0.05 : -0.05;
    if (resizeNearestSplit(tab.splitRoot, tab.activeSessionId, axis, delta)) {
      this.renderTabLayout(tab);
      window.setTimeout(() => this.fitVisibleSessions(), 0);
    }
  }

  executeAction(action: MiniTermAction): void {
    switch (action) {
      case "new_tab":
        this.openTab();
        break;
      case "close_surface":
        void this.closeCurrentSurface();
        break;
      case "next_tab":
        this.nextTab();
        break;
      case "previous_tab":
        this.previousTab();
        break;
      case "split_right":
        this.splitRight();
        break;
      case "split_down":
        this.splitDown();
        break;
      case "focus_left":
        this.focusSplit("left");
        break;
      case "focus_right":
        this.focusSplit("right");
        break;
      case "focus_up":
        this.focusSplit("up");
        break;
      case "focus_down":
        this.focusSplit("down");
        break;
      case "resize_left":
        this.resizeSplit("left");
        break;
      case "resize_right":
        this.resizeSplit("right");
        break;
      case "resize_up":
        this.resizeSplit("up");
        break;
      case "resize_down":
        this.resizeSplit("down");
        break;
    }
  }

  runCustomCommand(command: MiniTermCustomCommand): void {
    if (command.command.trim().length === 0) {
      return;
    }

    const fallbackCwd = this.getActiveSession()?.cwd;
    const cwd = this.host.resolveCustomCommandCwd(command.cwdMode, fallbackCwd);
    this.openTab({
      cwd,
      title: command.name,
      initialCommand: command.command
    });
  }

  applySettings(): void {
    for (const tab of this.tabs) {
      for (const session of tab.sessions) {
        session.terminal.options.fontSize = this.host.settings.fontSize;
        session.terminal.options.letterSpacing = this.host.settings.letterSpacing;
        session.terminal.options.scrollback = this.host.settings.scrollback;
        session.terminal.options.theme = this.readTheme();
      }
    }

    window.setTimeout(() => this.fitVisibleSessions(), 0);
  }

  focusActiveTerminal(): void {
    const session = this.getActiveSession();
    if (session) {
      window.setTimeout(() => {
        this.fitSession(session);
        session.terminal.focus();
      }, 0);
    }
  }

  writeActive(data: string): boolean {
    const session = this.getActiveSession();
    if (!session?.pty) {
      return false;
    }

    session.pty.write(data);
    return true;
  }

  containsActiveElement(): boolean {
    const activeElement = document.activeElement;
    return !!activeElement && !!this.rootEl?.contains(activeElement);
  }

  private openSplit(axis: SplitAxis): void {
    const tab = this.getActiveTab();
    const activeSession = this.getActiveSession();
    if (!tab || !activeSession) {
      this.openTab();
      return;
    }

    const session = this.createSession(tab.id, activeSession.cwd);
    const nextRoot = insertSplit(tab.splitRoot, activeSession.id, session.id, axis);
    if (!nextRoot) {
      return;
    }

    tab.sessions.push(session);
    tab.splitRoot = nextRoot;
    tab.activeSessionId = session.id;
    tab.zoomedSessionId = null;
    this.renderTabLayout(tab);
    this.openAndSpawnSession(session);
    this.activateSession(tab.id, session.id);
  }

  private createSession(tabId: string, cwd: string, options: OpenTabOptions = {}): TerminalSession {
    const settings = this.host.settings;
    const sessionId = String(this.nextSessionId++);
    const title = options.title?.trim() || shellDisplayName(settings.shellPath) || "shell";
    const fitAddon = new FitAddon();
    const imageAddon = new ImageAddon({
      enableSizeReports: true,
      iipSupport: true,
      showPlaceholder: true,
      sixelSupport: true,
      storageLimit: 64
    });
    const webLinksAddon = new WebLinksAddon();
    const terminal = new Terminal({
      allowTransparency: true,
      cursorBlink: true,
      fontFamily: "\"JetBrainsMono Nerd Font Mono\", \"JetBrainsMono Nerd Font\", \"JetBrains Mono\", \"Sarasa Term SC Nerd\", \"Sarasa Mono SC Nerd\", \"Sarasa Mono SC Nerd Font\", \"Sarasa Mono SC\", var(--font-monospace), ui-monospace, SFMono-Regular, Menlo, Consolas, monospace",
      fontSize: settings.fontSize,
      letterSpacing: settings.letterSpacing,
      macOptionIsMeta: true,
      scrollback: settings.scrollback,
      theme: this.readTheme()
    });

    terminal.loadAddon(fitAddon);
    terminal.loadAddon(imageAddon);
    terminal.loadAddon(webLinksAddon);

    const terminalEl = document.createElement("div");
    terminalEl.className = "miniterm-terminal";
    terminalEl.dataset.sessionId = sessionId;
    terminalEl.addEventListener("mousedown", () => this.activateSession(tabId, sessionId));

    const session: TerminalSession = {
      id: sessionId,
      tabId,
      title,
      cwd,
      terminal,
      fitAddon,
      pty: null,
      terminalEl,
      disposables: [],
      exited: false,
      opened: false,
      initialCommand: options.initialCommand?.trimEnd() || null
    };

    terminal.attachCustomKeyEventHandler((event) => this.handleTerminalKey(session, event));
    session.disposables.push(
      terminal.onTitleChange((title) => {
        const trimmed = title.trim();
        if (trimmed.length > 0) {
          session.title = trimmed;
          const tab = this.getTabById(tabId);
          if (tab) {
            tab.title = trimmed;
            this.renderTabs();
          }
        }
      })
    );

    return session;
  }

  private openAndSpawnSession(session: TerminalSession): void {
    if (!session.opened) {
      session.terminal.open(session.terminalEl);
      session.opened = true;
    }

    this.spawnPty(session);
  }

  private spawnPty(session: TerminalSession): void {
    const ptyModule = this.loadPtyModule();
    if (!ptyModule) {
      session.exited = true;
      session.terminal.write(`MiniTerm could not load node-pty: ${this.lastPtyLoadError || "unknown error"}\r\n`);
      session.terminal.write("Run npm install, rebuild node-pty for Obsidian Electron, then reinstall the plugin.\r\n");
      this.renderTabs();
      return;
    }

    const settings = this.host.settings;

    try {
      const ptyProcess = ptyModule.spawn(settings.shellPath, settings.shellArgs, {
        name: DEFAULT_TERMINAL_TYPE,
        cols: Math.max(session.terminal.cols, 2),
        rows: Math.max(session.terminal.rows, 1),
        cwd: session.cwd,
        encoding: "utf8",
        env: buildPtyEnv(settings.env)
      });

      session.pty = ptyProcess;
      session.disposables.push(
        session.terminal.onData((data) => ptyProcess.write(data)),
        session.terminal.onResize(({ cols, rows }) => {
          try {
            ptyProcess.resize(Math.max(cols, 2), Math.max(rows, 1));
          } catch {
            // Ignore resize events racing with process exit.
          }
        }),
        ptyProcess.onData((data) => session.terminal.write(data)),
        ptyProcess.onExit(({ exitCode, signal }) => {
          session.exited = true;
          session.pty = null;

          if (!this.hasSession(session.id)) {
            return;
          }

          if (!signal && exitCode === 0) {
            void this.closeSession(session.id);
            return;
          }

          const reason = signal ? `signal ${signal}` : `exit code ${exitCode}`;
          session.terminal.write(`\r\n[MiniTerm process exited with ${reason}]\r\n`);
          this.renderTabs();
        })
      );

      this.fitSession(session);

      const startupCommand = session.initialCommand ?? settings.startupCommand.trim();
      if (session.initialCommand || (settings.startupCommandEnabled && startupCommand.length > 0)) {
        ptyProcess.write(`${startupCommand}\r`);
      }
    } catch (error) {
      session.exited = true;
      const message = error instanceof Error ? error.message : String(error);
      session.terminal.write(`MiniTerm failed to start ${settings.shellPath}: ${message}\r\n`);
      new Notice(`MiniTerm failed to start ${settings.shellPath}`);
      this.renderTabs();
    }
  }

  private loadPtyModule(): NodePtyModule | null {
    try {
      const pluginRequire = createRequire(this.host.getPluginMainPath());
      const ptyModule = pluginRequire("node-pty") as NodePtyModule;
      this.lastPtyLoadError = "";
      return ptyModule;
    } catch (error) {
      const message = error instanceof Error ? error.message : String(error);
      this.lastPtyLoadError = message;
      console.error("MiniTerm failed to load node-pty", error);
      new Notice(`MiniTerm could not load node-pty: ${message}`);
      return null;
    }
  }

  private handleTerminalKey(session: TerminalSession, event: KeyboardEvent): boolean {
    if (session.terminal.buffer.active.type === "alternate") {
      return true;
    }

    const trigger = eventToKeybindingTrigger(event) ?? "";
    const action = createKeybindingMap(this.host.settings.keybindings).get(trigger);
    const customCommand = createCustomCommandTriggerMap(this.host.settings.customCommands).get(trigger);
    if (!action && !customCommand) {
      return true;
    }

    event.preventDefault();
    if (event.type === "keydown") {
      if (action) {
        this.executeAction(action);
      } else if (customCommand) {
        this.runCustomCommand(customCommand);
      }
    }
    return false;
  }

  private activateTabByOffset(offset: number): void {
    if (this.tabs.length === 0) {
      return;
    }

    const activeIndex = Math.max(
      0,
      this.tabs.findIndex((tab) => tab.id === this.activeTabId)
    );
    const nextIndex = (activeIndex + offset + this.tabs.length) % this.tabs.length;
    const nextTab = this.tabs[nextIndex];
    this.activateTab(nextTab.id, nextTab.activeSessionId);
  }

  private activateTab(tabId: string, sessionId?: string): void {
    const tab = this.getTabById(tabId);
    if (!tab) {
      return;
    }

    this.activeTabId = tab.id;
    if (sessionId && tab.sessions.some((session) => session.id === sessionId)) {
      tab.activeSessionId = sessionId;
    }

    this.renderActiveStates();
    this.renderTabs();
    this.focusActiveTerminal();
  }

  private activateSession(tabId: string, sessionId: string): void {
    this.activateTab(tabId, sessionId);
  }

  private getActiveTab(): TerminalTab | null {
    return this.tabs.find((tab) => tab.id === this.activeTabId) ?? null;
  }

  private getTabById(tabId: string): TerminalTab | null {
    return this.tabs.find((tab) => tab.id === tabId) ?? null;
  }

  private getActiveSession(): TerminalSession | null {
    const tab = this.getActiveTab();
    return tab?.sessions.find((session) => session.id === tab.activeSessionId) ?? null;
  }

  private hasSession(sessionId: string): boolean {
    return this.tabs.some((tab) => tab.sessions.some((session) => session.id === sessionId));
  }

  private async closeSession(sessionId: string): Promise<void> {
    const tab = this.tabs.find((entry) => entry.sessions.some((session) => session.id === sessionId));
    if (!tab) {
      return;
    }

    if (tab.sessions.length <= 1) {
      await this.closeTab(tab.id);
      return;
    }

    const session = tab.sessions.find((entry) => entry.id === sessionId);
    const sessionIds = collectLeafIds(tab.splitRoot);
    const currentIndex = sessionIds.indexOf(sessionId);
    const nextSessionId = sessionIds[currentIndex + 1] ?? sessionIds[currentIndex - 1] ?? tab.sessions[0]?.id;
    const nextRoot = removeLeaf(tab.splitRoot, sessionId);
    if (!session || !nextRoot || !nextSessionId) {
      return;
    }

    tab.splitRoot = nextRoot;
    tab.sessions = tab.sessions.filter((entry) => entry.id !== sessionId);
    tab.activeSessionId = nextSessionId;
    tab.zoomedSessionId = null;
    this.disposeSession(session);
    this.renderTabLayout(tab);
    this.activateTab(tab.id, nextSessionId);
  }

  private renderTabs(): void {
    if (!this.tabListEl) {
      return;
    }

    this.tabListEl.replaceChildren();

    for (const tab of this.tabs) {
      const activeSession = tab.sessions.find((session) => session.id === tab.activeSessionId);
      const tabEl = document.createElement("div");
      tabEl.className = "miniterm-tab";
      tabEl.classList.toggle("is-active", tab.id === this.activeTabId);
      tabEl.classList.toggle("is-exited", tab.sessions.every((session) => session.exited));

      const selectButton = document.createElement("button");
      selectButton.type = "button";
      selectButton.className = "miniterm-tab-select";
      selectButton.title = activeSession?.cwd ?? tab.cwd;
      selectButton.textContent = tab.sessions.length > 1
        ? `${activeSession?.title ?? tab.title} (${tab.sessions.length})`
        : activeSession?.title ?? tab.title;
      selectButton.addEventListener("click", () => this.activateTab(tab.id, tab.activeSessionId));

      const closeButton = this.createIconButton("x", "Close MiniTerm Tab", () => {
        void this.closeTab(tab.id);
      });
      closeButton.classList.add("miniterm-tab-close");

      tabEl.append(selectButton, closeButton);
      this.tabListEl.append(tabEl);
    }

    if (this.emptyEl) {
      this.emptyEl.hidden = this.tabs.length > 0;
    }
  }

  private renderTabLayout(tab: TerminalTab): void {
    const root = tab.zoomedSessionId
      ? { type: "leaf" as const, sessionId: tab.zoomedSessionId }
      : tab.splitRoot;

    tab.contentEl.replaceChildren(this.renderSplitNode(tab, root));
    this.renderActiveStates();
    window.setTimeout(() => this.fitVisibleSessions(), 0);
  }

  private renderSplitNode(tab: TerminalTab, node: SplitNode): HTMLDivElement {
    if (node.type === "leaf") {
      const session = tab.sessions.find((entry) => entry.id === node.sessionId);
      const paneEl = document.createElement("div");
      paneEl.className = "miniterm-split-pane";
      paneEl.classList.toggle("is-active", node.sessionId === tab.activeSessionId);
      paneEl.dataset.sessionId = node.sessionId;
      paneEl.addEventListener("mousedown", () => this.activateSession(tab.id, node.sessionId));

      if (session) {
        paneEl.append(session.terminalEl);
      }

      return paneEl;
    }

    const splitEl = document.createElement("div");
    splitEl.className = `miniterm-split miniterm-split-${node.axis}`;

    const firstEl = this.renderSplitNode(tab, node.first);
    const secondEl = this.renderSplitNode(tab, node.second);
    firstEl.style.flexBasis = `${node.ratio * 100}%`;
    secondEl.style.flexBasis = `${(1 - node.ratio) * 100}%`;

    splitEl.append(firstEl, secondEl);
    return splitEl;
  }

  private renderActiveStates(): void {
    for (const tab of this.tabs) {
      const isActiveTab = tab.id === this.activeTabId;
      tab.contentEl.classList.toggle("is-active", isActiveTab);

      for (const session of tab.sessions) {
        const isActiveSession = isActiveTab && session.id === tab.activeSessionId;
        session.terminalEl.classList.toggle("is-active", isActiveSession);
        const paneEl = session.terminalEl.closest(".miniterm-split-pane");
        paneEl?.classList.toggle("is-active", isActiveSession);
      }
    }
  }

  private fitVisibleSessions(): void {
    const tab = this.getActiveTab();
    if (!tab) {
      return;
    }

    for (const session of tab.sessions) {
      if (session.terminalEl.offsetParent) {
        this.fitSession(session);
      }
    }
  }

  private fitSession(session: TerminalSession): void {
    try {
      session.fitAddon.fit();
      if (session.pty) {
        session.pty.resize(
          Math.max(session.terminal.cols, 2),
          Math.max(session.terminal.rows, 1)
        );
      }
    } catch {
      // The fit addon can throw while the view is hidden or still measuring.
    }
  }

  private disposeTab(tab: TerminalTab): void {
    for (const session of [...tab.sessions]) {
      this.disposeSession(session);
    }
    tab.sessions.length = 0;
    tab.contentEl.remove();
  }

  private disposeSession(session: TerminalSession): void {
    for (const disposable of session.disposables) {
      try {
        disposable.dispose();
      } catch {
        // Ignore cleanup failures from already disposed xterm/node-pty listeners.
      }
    }

    try {
      session.pty?.kill();
    } catch {
      // The process may already have exited.
    }

    session.terminal.dispose();
    session.terminalEl.remove();
  }

  private createIconButton(icon: string, label: string, onClick: () => void): HTMLButtonElement {
    const button = document.createElement("button");
    button.type = "button";
    button.className = "miniterm-icon-button";
    button.setAttribute("aria-label", label);
    button.title = label;
    setIcon(button, icon);
    button.addEventListener("click", onClick);
    return button;
  }

  private readTheme(): Record<string, string> {
    const styles = getComputedStyle(document.body);
    const cssVar = (name: string, fallback: string): string => {
      const value = styles.getPropertyValue(name).trim();
      return value.length > 0 ? value : fallback;
    };

    return {
      background: cssVar("--background-primary", "#1e1e1e"),
      foreground: cssVar("--text-normal", "#d4d4d4"),
      cursor: cssVar("--text-accent", "#8ab4f8"),
      selectionBackground: cssVar("--text-selection", "#264f78")
    };
  }
}

function insertSplit(root: SplitNode, targetSessionId: string, newSessionId: string, axis: SplitAxis): SplitNode | null {
  if (root.type === "leaf") {
    if (root.sessionId !== targetSessionId) {
      return null;
    }

    return {
      type: "split",
      axis,
      first: root,
      second: { type: "leaf", sessionId: newSessionId },
      ratio: 0.5
    };
  }

  const first = insertSplit(root.first, targetSessionId, newSessionId, axis);
  if (first) {
    return { ...root, first };
  }

  const second = insertSplit(root.second, targetSessionId, newSessionId, axis);
  if (second) {
    return { ...root, second };
  }

  return null;
}

function removeLeaf(root: SplitNode, sessionId: string): SplitNode | null {
  if (root.type === "leaf") {
    return root.sessionId === sessionId ? null : root;
  }

  const first = removeLeaf(root.first, sessionId);
  const second = removeLeaf(root.second, sessionId);
  if (!first) {
    return second;
  }
  if (!second) {
    return first;
  }

  return { ...root, first, second };
}

function collectLeafIds(root: SplitNode): string[] {
  if (root.type === "leaf") {
    return [root.sessionId];
  }

  return [...collectLeafIds(root.first), ...collectLeafIds(root.second)];
}

function containsLeaf(root: SplitNode, sessionId: string): boolean {
  if (root.type === "leaf") {
    return root.sessionId === sessionId;
  }

  return containsLeaf(root.first, sessionId) || containsLeaf(root.second, sessionId);
}

function resizeNearestSplit(root: SplitNode, sessionId: string, axis: SplitAxis, delta: number): boolean {
  if (root.type === "leaf") {
    return false;
  }

  const childWithSession = containsLeaf(root.first, sessionId) ? root.first : root.second;
  if (resizeNearestSplit(childWithSession, sessionId, axis, delta)) {
    return true;
  }

  if (root.axis !== axis || !containsLeaf(root, sessionId)) {
    return false;
  }

  root.ratio = Math.min(0.8, Math.max(0.2, root.ratio + delta));
  return true;
}

function isCandidateInDirection(active: DOMRect, candidate: DOMRect, direction: FocusDirection): boolean {
  switch (direction) {
    case "left":
      return candidate.right <= active.left + 1;
    case "right":
      return candidate.left >= active.right - 1;
    case "up":
      return candidate.bottom <= active.top + 1;
    case "down":
      return candidate.top >= active.bottom - 1;
  }
}

function centerOf(rect: DOMRect): { x: number; y: number } {
  return {
    x: rect.left + rect.width / 2,
    y: rect.top + rect.height / 2
  };
}
