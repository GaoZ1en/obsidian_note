"use strict";

const {
  ItemView,
  Notice,
  Plugin,
  PluginSettingTab,
  Setting,
  requestUrl
} = require("obsidian");

const VIEW_TYPE_SERVICE_DASHBOARD = "service-dashboard-view";
const DEFAULT_HOST = "100.123.226.44";
const HISTORY_LENGTH = 12;

const DEFAULT_SETTINGS = {
  refreshIntervalSeconds: 45,
  timeoutMs: 6000,
  services: [
    {
      id: "gitea",
      name: "Gitea",
      description: "Git hosting",
      url: `http://${DEFAULT_HOST}:3000/`,
      healthUrl: `http://${DEFAULT_HOST}:3000/`,
      method: "GET",
      icon: "git-branch"
    },
    {
      id: "overleaf",
      name: "Overleaf",
      description: "LaTeX editor",
      url: `http://${DEFAULT_HOST}:8080/project`,
      healthUrl: `http://${DEFAULT_HOST}:8080/`,
      method: "GET",
      icon: "file-text"
    },
    {
      id: "picsur",
      name: "Picsur",
      description: "Image hosting",
      url: `http://${DEFAULT_HOST}:8081/upload`,
      healthUrl: `http://${DEFAULT_HOST}:8081/`,
      method: "GET",
      icon: "image"
    },
    {
      id: "convertx",
      name: "ConvertX",
      description: "File conversion",
      url: `http://${DEFAULT_HOST}:8082/`,
      healthUrl: `http://${DEFAULT_HOST}:8082/`,
      method: "GET",
      icon: "refresh-cw"
    }
  ]
};

function cloneDefaultSettings() {
  return JSON.parse(JSON.stringify(DEFAULT_SETTINGS));
}

function normalizeSettings(raw) {
  const fallback = cloneDefaultSettings();
  const settings = raw && typeof raw === "object" ? raw : {};

  return {
    refreshIntervalSeconds: clampInteger(
      settings.refreshIntervalSeconds,
      fallback.refreshIntervalSeconds,
      5,
      3600
    ),
    timeoutMs: clampInteger(settings.timeoutMs, fallback.timeoutMs, 1000, 60000),
    services: normalizeServices(settings.services, fallback.services)
  };
}

function normalizeServices(services, fallbackServices) {
  const source = Array.isArray(services) ? services : fallbackServices;
  const normalized = source
    .map((service, index) => normalizeService(service, index))
    .filter(Boolean);

  return normalized.length > 0
    ? normalized
    : fallbackServices.map((service, index) => normalizeService(service, index));
}

function normalizeService(service, index) {
  if (!service || typeof service !== "object") {
    return null;
  }

  const url = normalizeUrl(service.url || service.healthUrl || "");
  if (!url) {
    return null;
  }

  const name = stringValue(service.name, `Service ${index + 1}`);
  const id = stringValue(service.id, slugify(name) || `service-${index + 1}`);

  return {
    id,
    name,
    description: stringValue(service.description, ""),
    url,
    healthUrl: normalizeUrl(service.healthUrl || url),
    method: normalizeMethod(service.method),
    icon: stringValue(service.icon, "server"),
    timeoutMs: service.timeoutMs
      ? clampInteger(service.timeoutMs, DEFAULT_SETTINGS.timeoutMs, 1000, 60000)
      : undefined
  };
}

function normalizeUrl(value) {
  const text = String(value ?? "").trim();
  if (!text) {
    return "";
  }

  if (/^https?:\/\//i.test(text)) {
    return text;
  }

  return `http://${text}`;
}

function normalizeMethod(value) {
  const method = String(value ?? "GET").trim().toUpperCase();
  return method === "HEAD" || method === "GET" ? method : "GET";
}

function stringValue(value, fallback) {
  const text = String(value ?? "").trim();
  return text || fallback;
}

function clampInteger(value, fallback, min, max) {
  const parsed = Number.parseInt(value, 10);
  if (!Number.isFinite(parsed)) {
    return fallback;
  }

  return Math.min(max, Math.max(min, parsed));
}

function slugify(value) {
  return String(value)
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function summarizeStatus(status) {
  if (!status) {
    return "Not checked";
  }

  if (status.state === "online") {
    return `HTTP ${status.statusCode}`;
  }

  if (status.state === "degraded") {
    return `HTTP ${status.statusCode}`;
  }

  if (status.state === "checking") {
    return "Checking";
  }

  return status.detail || "Offline";
}

function stateLabel(state) {
  switch (state) {
    case "online":
      return "Online";
    case "degraded":
      return "Degraded";
    case "offline":
      return "Fail";
    case "checking":
      return "Checking";
    default:
      return "Unknown";
  }
}

function withTimeout(promise, timeoutMs) {
  let timer = 0;
  const timeout = new Promise((_, reject) => {
    timer = window.setTimeout(() => {
      reject(new Error(`Timed out after ${timeoutMs} ms`));
    }, timeoutMs);
  });

  return Promise.race([promise, timeout]).finally(() => {
    window.clearTimeout(timer);
  });
}

class ServiceDashboardView extends ItemView {
  constructor(leaf, plugin) {
    super(leaf);
    this.plugin = plugin;
    this.statusById = new Map();
    this.historyById = new Map();
    this.refreshTimer = 0;
    this.pendingRefresh = null;
  }

  getViewType() {
    return VIEW_TYPE_SERVICE_DASHBOARD;
  }

  getDisplayText() {
    return "Service Dashboard";
  }

  getIcon() {
    return "server";
  }

  async onOpen() {
    this.contentEl.empty();
    this.contentEl.addClass("service-dashboard-view");
    this.render();
    this.resetTimer();
    await this.refreshStatuses();
  }

  async onClose() {
    this.clearTimer();
    this.pendingRefresh = null;
    this.contentEl.removeClass("service-dashboard-view");
    this.contentEl.empty();
  }

  applySettings() {
    this.resetTimer();
    this.render();
    void this.refreshStatuses();
  }

  clearTimer() {
    if (this.refreshTimer) {
      window.clearInterval(this.refreshTimer);
      this.refreshTimer = 0;
    }
  }

  resetTimer() {
    this.clearTimer();
    const intervalMs = this.plugin.settings.refreshIntervalSeconds * 1000;
    this.refreshTimer = window.setInterval(() => {
      void this.refreshStatuses();
    }, intervalMs);
  }

  render() {
    const services = this.plugin.settings.services;
    this.contentEl.empty();

    const root = this.contentEl.createDiv({ cls: "service-dashboard-root" });
    if (services.length === 0) {
      root.createDiv({
        cls: "service-dashboard-empty",
        text: "No services configured."
      });
      return;
    }

    const grid = root.createDiv({ cls: "service-dashboard-grid" });
    for (const service of services) {
      this.renderCard(grid, service);
    }
  }

  renderCard(container, service) {
    const status = this.statusById.get(service.id);
    const state = status?.state || "unknown";
    const card = container.createDiv({ cls: `service-dashboard-card is-${state}` });
    card.setAttribute("role", "button");
    card.setAttribute("tabindex", "0");
    card.setAttribute("aria-label", `Open ${service.name}`);

    card.addEventListener("click", () => {
      void this.plugin.openService(service);
    });
    card.addEventListener("keydown", (event) => {
      if (event.key === "Enter" || event.key === " ") {
        event.preventDefault();
        void this.plugin.openService(service);
      }
    });

    const top = card.createDiv({ cls: "service-dashboard-card-top" });
    top.createDiv({ cls: "service-dashboard-name", text: service.name });
    top.createDiv({
      cls: `service-dashboard-status-dot is-${state}`,
      attr: { "aria-label": stateLabel(state) }
    });

    const line = card.createDiv({ cls: "service-dashboard-line" });
    line.createSpan({
      cls: `service-dashboard-state-text is-${state}`,
      text: stateLabel(state)
    });
    line.createSpan({
      cls: "service-dashboard-line-muted",
      text: status?.latencyMs ? ` ${status.latencyMs} ms` : " --"
    });

    card.createDiv({
      cls: "service-dashboard-description",
      text: `${summarizeStatus(status)} · ${service.description || service.url}`
    });

    const strip = card.createDiv({ cls: "service-dashboard-history" });
    const history = this.historyById.get(service.id) || [];
    const padded = Array(Math.max(0, HISTORY_LENGTH - history.length))
      .fill("empty")
      .concat(history.slice(-HISTORY_LENGTH));

    for (const item of padded) {
      strip.createDiv({ cls: `service-dashboard-history-dot is-${item}` });
    }
  }

  async refreshStatuses() {
    if (this.pendingRefresh) {
      return this.pendingRefresh;
    }

    this.pendingRefresh = this.doRefreshStatuses().finally(() => {
      this.pendingRefresh = null;
    });

    return this.pendingRefresh;
  }

  async doRefreshStatuses() {
    const services = this.plugin.settings.services;
    for (const service of services) {
      this.statusById.set(service.id, {
        state: "checking",
        checkedAt: Date.now()
      });
    }
    this.render();

    const results = await Promise.all(
      services.map((service) => this.checkService(service))
    );

    for (const result of results) {
      this.statusById.set(result.id, result);
      const history = this.historyById.get(result.id) || [];
      history.push(result.state);
      this.historyById.set(result.id, history.slice(-HISTORY_LENGTH));
    }

    this.render();
  }

  async checkService(service) {
    const startedAt = performance.now();
    const timeoutMs = service.timeoutMs || this.plugin.settings.timeoutMs;

    try {
      const response = await withTimeout(
        requestUrl({
          url: service.healthUrl || service.url,
          method: service.method || "GET",
          throw: false
        }),
        timeoutMs
      );
      const latencyMs = Math.max(1, Math.round(performance.now() - startedAt));
      const statusCode = response.status;
      const state = statusCode >= 200 && statusCode < 500 ? "online" : "degraded";

      return {
        id: service.id,
        state,
        statusCode,
        latencyMs,
        checkedAt: Date.now(),
        detail: `HTTP ${statusCode}`
      };
    } catch (error) {
      return {
        id: service.id,
        state: "offline",
        latencyMs: Math.max(1, Math.round(performance.now() - startedAt)),
        checkedAt: Date.now(),
        detail: error instanceof Error ? error.message : String(error)
      };
    }
  }
}

class ServiceDashboardSettingTab extends PluginSettingTab {
  constructor(app, plugin) {
    super(app, plugin);
    this.plugin = plugin;
  }

  display() {
    const { containerEl } = this;
    containerEl.empty();
    containerEl.addClass("service-dashboard-settings");
    containerEl.createEl("h2", { text: "Service Dashboard" });

    new Setting(containerEl)
      .setName("Refresh interval")
      .setDesc("Seconds between automatic status checks.")
      .addText((text) => {
        text.inputEl.type = "number";
        text.inputEl.min = "5";
        text.inputEl.step = "1";
        text
          .setValue(String(this.plugin.settings.refreshIntervalSeconds))
          .onChange(async (value) => {
            this.plugin.settings.refreshIntervalSeconds = clampInteger(
              value,
              DEFAULT_SETTINGS.refreshIntervalSeconds,
              5,
              3600
            );
            await this.plugin.saveSettings();
          });
      });

    new Setting(containerEl)
      .setName("Request timeout")
      .setDesc("Milliseconds before a service check is treated as offline.")
      .addText((text) => {
        text.inputEl.type = "number";
        text.inputEl.min = "1000";
        text.inputEl.step = "500";
        text
          .setValue(String(this.plugin.settings.timeoutMs))
          .onChange(async (value) => {
            this.plugin.settings.timeoutMs = clampInteger(
              value,
              DEFAULT_SETTINGS.timeoutMs,
              1000,
              60000
            );
            await this.plugin.saveSettings();
          });
      });

    let servicesTextArea = null;
    new Setting(containerEl)
      .setName("Services")
      .setDesc("JSON array. Each service accepts id, name, description, url, healthUrl, method, icon, and timeoutMs.")
      .addTextArea((text) => {
        servicesTextArea = text;
        text.inputEl.rows = 18;
        text.inputEl.addClass("service-dashboard-settings-json");
        text.setValue(JSON.stringify(this.plugin.settings.services, null, 2));
      });

    new Setting(containerEl)
      .addButton((button) => {
        button
          .setButtonText("Save services")
          .setCta()
          .onClick(async () => {
            if (!servicesTextArea) {
              return;
            }

            try {
              const parsed = JSON.parse(servicesTextArea.getValue());
              const nextServices = normalizeServices(parsed, DEFAULT_SETTINGS.services);
              this.plugin.settings.services = nextServices;
              await this.plugin.saveSettings();
              new Notice("Service Dashboard services saved.");
              this.display();
            } catch (error) {
              new Notice(
                `Service Dashboard JSON error: ${
                  error instanceof Error ? error.message : String(error)
                }`
              );
            }
          });
      })
      .addButton((button) => {
        button
          .setButtonText("Reset defaults")
          .onClick(async () => {
            this.plugin.settings = cloneDefaultSettings();
            await this.plugin.saveSettings();
            this.display();
          });
      })
      .addButton((button) => {
        button
          .setButtonText("Open dashboard")
          .onClick(() => {
            void this.plugin.openDashboard();
          });
      });
  }
}

module.exports = class ServiceDashboardPlugin extends Plugin {
  async onload() {
    this.settings = normalizeSettings(await this.loadData());

    this.registerView(
      VIEW_TYPE_SERVICE_DASHBOARD,
      (leaf) => new ServiceDashboardView(leaf, this)
    );

    this.addRibbonIcon("server", "Open Service Dashboard", () => {
      void this.openDashboard();
    });

    this.addCommand({
      id: "open-service-dashboard",
      name: "Open service dashboard",
      callback: () => {
        void this.openDashboard();
      }
    });

    this.addCommand({
      id: "refresh-service-dashboard",
      name: "Refresh service dashboard",
      callback: () => {
        for (const leaf of this.app.workspace.getLeavesOfType(VIEW_TYPE_SERVICE_DASHBOARD)) {
          if (leaf.view instanceof ServiceDashboardView) {
            void leaf.view.refreshStatuses();
          }
        }
      }
    });

    this.addSettingTab(new ServiceDashboardSettingTab(this.app, this));
  }

  onunload() {}

  async saveSettings() {
    this.settings = normalizeSettings(this.settings);
    await this.saveData(this.settings);
    this.refreshViews();
  }

  refreshViews() {
    for (const leaf of this.app.workspace.getLeavesOfType(VIEW_TYPE_SERVICE_DASHBOARD)) {
      if (leaf.view instanceof ServiceDashboardView) {
        leaf.view.applySettings();
      }
    }
  }

  async openDashboard() {
    let leaf = this.app.workspace.getLeavesOfType(VIEW_TYPE_SERVICE_DASHBOARD)[0];
    if (!leaf) {
      leaf = this.app.workspace.getLeaf("tab");
      await leaf.setViewState({
        type: VIEW_TYPE_SERVICE_DASHBOARD,
        active: true
      });
    }

    await this.app.workspace.revealLeaf(leaf);
  }

  async openService(service) {
    try {
      const leaf = this.app.workspace.getLeaf("tab");
      await leaf.setViewState({
        type: "webviewer",
        state: {
          url: service.url,
          title: service.name,
          mode: "webview"
        },
        active: true
      });
      await this.app.workspace.revealLeaf(leaf);
    } catch (error) {
      const message = error instanceof Error ? error.message : String(error);
      new Notice(`Unable to open Web viewer: ${message}`);
      console.error("Service Dashboard failed to open Web viewer", error);
    }
  }
};
