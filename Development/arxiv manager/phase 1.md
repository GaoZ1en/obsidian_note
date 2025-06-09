# Phase 1: 基础架构 - 项目结构设计与实现

## 任务概述
为ArXiv论文管理器创建一个模块化、可维护的Rust项目结构，包含核心架构、配置管理、数据库设计和基础GUI框架。

## 📁 项目结构设计

### 根目录结构
```
arxiv-paper-manager/
├── Cargo.toml                 # 主配置文件
├── Cargo.lock                 # 依赖锁定文件
├── README.md                  # 项目说明
├── LICENSE                    # 开源协议
├── .gitignore                 # Git忽略规则
├── build.rs                   # 构建脚本
├── src/                       # 源代码目录
├── tests/                     # 集成测试
├── examples/                  # 示例代码
├── docs/                      # 项目文档
├── assets/                    # 静态资源
├── config/                    # 配置文件模板
└── scripts/                   # 构建和部署脚本
```

### 源代码模块结构 (`src/`)
```
src/
├── main.rs                    # 程序入口点
├── lib.rs                     # 库入口（如果需要）
├── app/                       # 应用主逻辑
│   ├── mod.rs
│   ├── state.rs              # 应用状态管理
│   ├── config.rs             # 配置管理
│   └── events.rs             # 事件处理
├── gui/                       # GUI相关模块
│   ├── mod.rs
│   ├── app.rs                # Iced应用主体
│   ├── views/                # 视图组件
│   │   ├── mod.rs
│   │   ├── main_window.rs    # 主窗口
│   │   ├── search_panel.rs   # 搜索面板
│   │   ├── library_panel.rs  # 论文库面板
│   │   ├── download_panel.rs # 下载管理面板
│   │   ├── reader_panel.rs   # PDF阅读器面板
│   │   └── settings_panel.rs # 设置面板
│   ├── components/           # 可复用组件
│   │   ├── mod.rs
│   │   ├── paper_card.rs     # 论文卡片组件
│   │   ├── download_item.rs  # 下载项组件
│   │   ├── search_bar.rs     # 搜索栏组件
│   │   └── progress_bar.rs   # 进度条组件
│   ├── theme.rs              # 主题系统
│   └── messages.rs           # GUI消息定义
├── core/                     # 核心业务逻辑
│   ├── mod.rs
│   ├── paper.rs              # 论文数据模型
│   ├── search.rs             # 搜索引擎
│   ├── download.rs           # 下载管理
│   ├── import.rs             # PDF导入功能
│   └── storage.rs            # 存储管理
├── database/                 # 数据库模块
│   ├── mod.rs
│   ├── models.rs             # 数据模型定义
│   ├── connection.rs         # 数据库连接
│   ├── migrations.rs         # 数据库迁移
│   └── queries.rs            # 查询操作
├── network/                  # 网络请求模块
│   ├── mod.rs
│   ├── arxiv_api.rs          # arXiv API客户端
│   ├── crossref_api.rs       # Crossref API客户端
│   ├── downloader.rs         # 文件下载器
│   └── metadata_fetcher.rs   # 元数据获取
├── pdf/                      # PDF处理模块
│   ├── mod.rs
│   ├── reader.rs             # PDF阅读器
│   ├── metadata_extractor.rs # 元数据提取
│   └── indexer.rs            # 全文索引
├── utils/                    # 工具函数
│   ├── mod.rs
│   ├── file_utils.rs         # 文件操作工具
│   ├── hash_utils.rs         # 哈希计算
│   ├── date_utils.rs         # 日期处理
│   └── validation.rs         # 数据验证
└── constants.rs              # 常量定义
```

## 🛠️ 核心文件实现

### 1. Cargo.toml 配置
```toml
[package]
name = "arxiv-paper-manager"
version = "0.1.0"
edition = "2021"
description = "A modern arXiv paper manager built with Rust and Iced"
license = "MIT"
repository = "https://github.com/GaoZ1en/arxiv-paper-manager"

[dependencies]
# GUI Framework
iced = { version = "0.12", features = ["tokio", "debug"] }
iced_native = "0.12"

# Async Runtime
tokio = { version = "1.0", features = ["full"] }
futures = "0.3"

# Database
rusqlite = { version = "0.30", features = ["bundled"] }
sqlx = { version = "0.7", features = ["runtime-tokio-rustls", "sqlite"] }

# Serialization
serde = { version = "1.0", features = ["derive"] }
serde_json = "1.0"
toml = "0.8"

# Network
reqwest = { version = "0.11", features = ["json", "stream"] }
url = "2.5"

# PDF Processing
pdf-extract = "0.7"
lopdf = "0.32"

# Search Engine
tantivy = "0.22"

# File Processing
walkdir = "2.4"
sha2 = "0.10"
uuid = { version = "1.6", features = ["v4"] }

# Date/Time
chrono = { version = "0.4", features = ["serde"] }

# Logging
tracing = "0.1"
tracing-subscriber = "0.3"

# Error Handling
anyhow = "1.0"
thiserror = "1.0"

[dev-dependencies]
tokio-test = "0.4"
tempfile = "3.8"

[build-dependencies]
# 如果需要嵌入资源
embed-resource = "2.4"
```

### 2. 主程序入口 (main.rs)
```rust
use anyhow::Result;
use tracing_subscriber;

mod app;
mod gui;
mod core;
mod database;
mod network;
mod pdf;
mod utils;
mod constants;

#[tokio::main]
async fn main() -> Result<()> {
    // 初始化日志系统
    tracing_subscriber::fmt::init();

    // 初始化应用配置
    let config = app::config::Config::load().await?;

    // 初始化数据库
    database::connection::initialize(&config.database_path).await?;

    // 启动GUI应用
    gui::app::run(config).await?;

    Ok(())
}
```

### 3. 应用状态管理 (app/state.rs)
```rust
use std::collections::HashMap;
use uuid::Uuid;
use crate::core::paper::Paper;
use crate::core::download::DownloadTask;

#[derive(Debug, Clone)]
pub struct AppState {
    pub papers: Vec<Paper>,
    pub download_tasks: HashMap<Uuid, DownloadTask>,
    pub current_view: View,
    pub search_query: String,
    pub selected_paper: Option<Uuid>,
    pub theme: Theme,
    pub config: crate::app::config::Config,
}

#[derive(Debug, Clone, PartialEq)]
pub enum View {
    Library,
    Search,
    Downloads,
    Reader,
    Settings,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Theme {
    GruvboxDark,
    GruvboxLight,
    Custom(String),
}

impl Default for AppState {
    fn default() -> Self {
        Self {
            papers: Vec::new(),
            download_tasks: HashMap::new(),
            current_view: View::Library,
            search_query: String::new(),
            selected_paper: None,
            theme: Theme::GruvboxDark,
            config: crate::app::config::Config::default(),
        }
    }
}
```

### 4. 数据库模型 (database/models.rs)
```rust
use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};
use uuid::Uuid;

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct PaperModel {
    pub id: Uuid,
    pub arxiv_id: Option<String>,
    pub doi: Option<String>,
    pub title: String,
    pub authors: Vec<String>,
    pub abstract_text: Option<String>,
    pub categories: Vec<String>,
    pub published_date: Option<DateTime<Utc>>,
    pub updated_date: Option<DateTime<Utc>>,
    pub pdf_path: Option<String>,
    pub pdf_url: Option<String>,
    pub file_size: Option<i64>,
    pub file_hash: Option<String>,
    pub tags: Vec<String>,
    pub notes: Option<String>,
    pub read_progress: f32,
    pub favorite: bool,
    pub source: PaperSource,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum PaperSource {
    ArXiv,
    Local,
    IEEE,
    ACM,
    Springer,
    Nature,
    Other(String),
}
```

## 📋 实现任务清单

### 基础架构任务
- [ ] 创建项目目录结构
- [ ] 配置 Cargo.toml 依赖
- [ ] 实现基础模块框架
- [ ] 设置日志系统
- [ ] 创建配置管理系统
- [ ] 设计数据库结构和迁移
- [ ] 实现基础错误处理
- [ ] 创建常量定义文件
- [ ] 设置开发工具配置 (.gitignore, rustfmt.toml等)
- [ ] 编写基础文档和README

### GUI框架任务
- [ ] 实现Iced应用主体
- [ ] 创建基础窗口布局
- [ ] 实现主题系统
- [ ] 设计消息传递机制
- [ ] 创建可复用组件库
- [ ] 实现基础导航功能

### 数据库任务
- [ ] 设计数据库表结构
- [ ] 实现数据库连接管理
- [ ] 创建数据模型
- [ ] 实现基础CRUD操作
- [ ] 设置数据库迁移系统

### 配置系统任务
- [ ] 设计配置文件结构
- [ ] 实现配置加载和保存
- [ ] 创建默认配置模板
- [ ] 实现配置验证

## 🎯 完成标准
- 项目结构清晰，模块职责明确
- 代码遵循Rust最佳实践
- 配置系统完整可用
- 数据库结构设计合理
- 基础GUI框架可运行
- 所有模块都有基本的测试覆盖
- 文档完整，便于后续开发

## 📚 技术文档
完成后需要提供：
- 项目架构设计文档
- 模块依赖关系图
- 数据库设计文档
- API设计规范
- 开发环境设置指南

这个任务是整个项目的基础，为后续的功能开发奠定坚实的架构基础。
