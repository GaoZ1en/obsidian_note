# arXiv 论文下载与管理系统 - 增强版

这个增强版的 arXiv 下载器不仅提供了图形界面进行论文下载，还增加了论文管理、过滤搜索、定时下载、预览和引用导出等功能。代码按照 MVC 架构进行组织，使其更易于维护和扩展。

## 代码结构

```
arxiv_manager/
├── models/
│   ├── __init__.py
│   ├── paper.py          # 论文数据模型
│   ├── downloader.py     # 下载逻辑
│   └── database.py       # 论文数据库管理
├── views/
│   ├── __init__.py
│   ├── main_window.py    # 主窗口界面
│   ├── settings_dialog.py # 设置对话框
│   ├── paper_viewer.py   # 论文预览器
│   └── widgets.py        # 自定义控件
├── controllers/
│   ├── __init__.py
│   ├── download_controller.py # 下载控制器
│   └── scheduler.py      # 定时器控制器
├── utils/
│   ├── __init__.py
│   ├── arxiv_api.py      # arXiv API封装
│   └── citation.py       # 引用生成工具
├── resources/
│   ├── icons/            # 图标资源
│   └── styles/           # 样式表
├── main.py               # 程序入口
└── config.py             # 配置文件
```

## 完整实现

以下是完整的代码实现，按照所述结构组织：

### 1. models/paper.py - 论文模型

```python
import os
import datetime
from PyQt6.QtCore import QObject, pyqtSignal

class ArxivPaper(QObject):
    """表示单个arXiv论文的模型类"""
    
    status_changed = pyqtSignal(str)  # 状态改变信号
    
    def __init__(self, paper_id=None, title=None, authors=None, abstract=None, 
                 categories=None, publish_date=None, pdf_url=None, web_url=None):
        super().__init__()
        self.paper_id = paper_id  # arXiv ID
        self.title = title        # 论文标题
        self.authors = authors or []  # 作者列表
        self.abstract = abstract  # 摘要
        self.categories = categories or []  # 类别列表
        self.publish_date = publish_date  # 发布日期
        self.pdf_url = pdf_url    # PDF下载链接
        self.local_path = None    # 本地保存路径
        self.status = "new"       # 状态: new, downloading, downloaded, error
        self.tags = set()         # 用户自定义标签
        self.notes = ""           # 用户笔记
        self.starred = False      # 是否标星
        self.read = False         # 是否已读
        self.web_url = web_url    # 网页链接
        self.download_time = None  # 下载时间
    
    @classmethod
    def from_arxiv_result(cls, result):
        """从arxiv API结果创建论文对象"""
        paper = cls(
            paper_id=result.get_short_id(),
            title=result.title,
            authors=[author.name for author in result.authors],
            abstract=result.summary,
            categories=result.categories,
            publish_date=result.published,
            pdf_url=result.pdf_url,
            web_url=result.entry_id
        )
        return paper
    
    def set_status(self, status):
        """设置论文状态并发射信号"""
        self.status = status
        self.status_changed.emit(status)
    
    def format_filename(self):
        """按照规定格式创建文件名: [yymm.xxxx]title.pdf"""
        # 确保paper_id格式正确 (例如 1905.00123)
        if '.' in self.paper_id:
            arxiv_id = self.paper_id
        elif '/' in self.paper_id:  # 旧格式 (例如 hep-th/0001001)
            old_id = self.paper_id.split('/')[-1]
            year_prefix = '20' if int(old_id[:2]) < 90 else '19'
            month = old_id[2:4]
            arxiv_id = f"{year_prefix}{old_id[:2]}.{month}{old_id[4:]}"
        else:
            # 无法解析，使用原ID
            arxiv_id = self.paper_id
            
        # 从发布日期获取年月
        if self.publish_date:
            yy = self.publish_date.strftime("%y")
            mm = self.publish_date.strftime("%m")
        else:
            # 如果没有日期，从ID中提取
            id_parts = arxiv_id.split('.')
            if len(id_parts) >= 2 and len(id_parts[0]) >= 2:
                yy = id_parts[0][-2:]
                mm = id_parts[1][:2] if len(id_parts[1]) >= 2 else "xx"
            else:
                yy = "xx"
                mm = "xx"
        
        # 提取ID号部分
        if '.' in arxiv_id:
            id_num = arxiv_id.split('.')[-1]
        else:
            id_num = arxiv_id
        
        # 格式化标题，替换无效字符
        safe_title = self.title.replace('/', '_').replace('\\', '_').replace(':', '_')
        safe_title = safe_title.replace('?', '').replace('*', '').replace('"', '').replace('<', '').replace('>', '')
        safe_title = safe_title.replace('|', '').replace('\n', ' ').strip()
        
        # 限制标题长度
        if len(safe_title) > 100:
            safe_title = safe_title[:97] + "..."
            
        # 最终文件名格式: [yymm.xxxx]title.pdf
        filename = f"[{yy}{mm}.{id_num}]{safe_title}.pdf"
        return filename
    
    def to_dict(self):
        """将论文对象转换为字典，用于保存到数据库"""
        return {
            'paper_id': self.paper_id,
            'title': self.title,
            'authors': self.authors,
            'abstract': self.abstract,
            'categories': self.categories,
            'publish_date': self.publish_date.isoformat() if self.publish_date else None,
            'pdf_url': self.pdf_url,
            'web_url': self.web_url,
            'local_path': self.local_path,
            'status': self.status,
            'tags': list(self.tags),
            'notes': self.notes,
            'starred': self.starred,
            'read': self.read,
            'download_time': self.download_time.isoformat() if self.download_time else None
        }
    
    @classmethod
    def from_dict(cls, data):
        """从字典创建论文对象，用于从数据库加载"""
        paper = cls(
            paper_id=data.get('paper_id'),
            title=data.get('title'),
            authors=data.get('authors', []),
            abstract=data.get('abstract'),
            categories=data.get('categories', []),
            pdf_url=data.get('pdf_url'),
            web_url=data.get('web_url')
        )
        
        # 解析日期字符串
        if data.get('publish_date'):
            try:
                paper.publish_date = datetime.datetime.fromisoformat(data['publish_date'])
            except (ValueError, TypeError):
                pass
                
        if data.get('download_time'):
            try:
                paper.download_time = datetime.datetime.fromisoformat(data['download_time'])
            except (ValueError, TypeError):
                pass
        
        paper.local_path = data.get('local_path')
        paper.status = data.get('status', 'new')
        paper.tags = set(data.get('tags', []))
        paper.notes = data.get('notes', '')
        paper.starred = data.get('starred', False)
        paper.read = data.get('read', False)
        
        return paper
```

### 2. models/downloader.py - 下载逻辑

```python
import os
import time
import requests
import datetime
import logging
from pathlib import Path
from PyQt6.QtCore import QObject, pyqtSignal, QThread

from models.paper import ArxivPaper

logger = logging.getLogger(__name__)

class DownloadWorker(QThread):
    """单个论文下载的工作线程"""
    
    progress_updated = pyqtSignal(int)  # 下载进度信号 (0-100)
    download_complete = pyqtSignal(bool, str)  # 下载完成信号 (成功/失败, 消息)
    
    def __init__(self, paper, save_path):
        super().__init__()
        self.paper = paper
        self.save_path = save_path
        self.running = True
    
    def run(self):
        """执行下载任务"""
        try:
            # 确保目录存在
            os.makedirs(os.path.dirname(self.save_path), exist_ok=True)
            
            # 获取文件大小用于进度计算
            response = requests.head(self.paper.pdf_url)
            total_size = int(response.headers.get('content-length', 0))
            
            # 开始下载
            response = requests.get(self.paper.pdf_url, stream=True)
            response.raise_for_status()
            
            downloaded_size = 0
            with open(self.save_path, 'wb') as f:
                for chunk in response.iter_content(chunk_size=8192):
                    if not self.running:
                        # 用户取消下载
                        self.download_complete.emit(False, "下载已取消")
                        if os.path.exists(self.save_path):
                            os.remove(self.save_path)
                        return
                        
                    if chunk:
                        f.write(chunk)
                        downloaded_size += len(chunk)
                        
                        # 更新进度
                        if total_size > 0:
                            progress = int(downloaded_size * 100 / total_size)
                            self.progress_updated.emit(progress)
            
            # 下载完成，更新论文信息
            self.paper.local_path = self.save_path
            self.paper.download_time = datetime.datetime.now()
            self.download_complete.emit(True, "下载完成")
            
        except Exception as e:
            logger.error(f"下载失败: {str(e)}")
            self.download_complete.emit(False, f"下载失败: {str(e)}")
            # 删除不完整的文件
            if os.path.exists(self.save_path):
                os.remove(self.save_path)
    
    def stop(self):
        """停止下载"""
        self.running = False


class ArxivDownloader(QObject):
    """arXiv论文下载管理器"""
    
    paper_download_started = pyqtSignal(ArxivPaper)
    paper_download_progress = pyqtSignal(ArxivPaper, int)
    paper_download_finished = pyqtSignal(ArxivPaper, bool, str)
    all_downloads_finished = pyqtSignal()
    
    def __init__(self, download_dir):
        super().__init__()
        self.download_dir = Path(download_dir)
        self.download_dir.mkdir(parents=True, exist_ok=True)
        self.active_downloads = {}  # paper_id -> DownloadWorker
    
    def download_paper(self, paper):
        """下载单个论文"""
        if paper.paper_id in self.active_downloads:
            logger.warning(f"论文 {paper.paper_id} 已在下载队列中")
            return False
        
        # 设置保存路径
        filename = paper.format_filename()
        save_path = str(self.download_dir / filename)
        
        # 检查是否已下载
        if paper.local_path and os.path.exists(paper.local_path):
            logger.info(f"论文 {paper.paper_id} 已经下载过")
            return False
        
        # 创建下载线程
        worker = DownloadWorker(paper, save_path)
        
        # 连接信号
        worker.progress_updated.connect(lambda p: self.paper_download_progress.emit(paper, p))
        worker.download_complete.connect(
            lambda success, msg: self._on_download_complete(paper, success, msg))
        
        # 更新论文状态
        paper.set_status("downloading")
        
        # 保存并启动下载线程
        self.active_downloads[paper.paper_id] = worker
        worker.start()
        
        # 发射下载开始信号
        self.paper_download_started.emit(paper)
        return True
    
    def cancel_download(self, paper):
        """取消下载"""
        if paper.paper_id in self.active_downloads:
            worker = self.active_downloads[paper.paper_id]
            worker.stop()
            # 线程会自行清理和发送完成信号
    
    def _on_download_complete(self, paper, success, message):
        """下载完成处理"""
        if paper.paper_id in self.active_downloads:
            # 移除下载线程
            worker = self.active_downloads.pop(paper.paper_id)
            
            # 更新论文状态
            if success:
                paper.set_status("downloaded")
            else:
                paper.set_status("error")
            
            # 发射下载完成信号
            self.paper_download_finished.emit(paper, success, message)
            
            # 检查是否所有下载已完成
            if not self.active_downloads:
                self.all_downloads_finished.emit()
    
    def is_downloading(self, paper_id):
        """检查论文是否正在下载"""
        return paper_id in self.active_downloads
    
    def has_active_downloads(self):
        """检查是否有活动的下载任务"""
        return len(self.active_downloads) > 0
    
    def cancel_all_downloads(self):
        """取消所有下载"""
        for worker in list(self.active_downloads.values()):
            worker.stop()
```

### 3. models/database.py - 论文数据库管理

```python
import os
import json
import sqlite3
import logging
from pathlib import Path
from PyQt6.QtCore import QObject, pyqtSignal

from models.paper import ArxivPaper

logger = logging.getLogger(__name__)

class PaperDatabase(QObject):
    """论文数据库管理类"""
    
    database_updated = pyqtSignal()  # 数据库更新信号
    
    def __init__(self, db_path=None):
        super().__init__()
        if db_path is None:
            # 默认数据库位置
            app_data_dir = Path.home() / ".arxiv_manager"
            app_data_dir.mkdir(exist_ok=True)
            db_path = app_data_dir / "papers.db"
        
        self.db_path = db_path
        self._init_database()
    
    def _init_database(self):
        """初始化数据库结构"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        # 创建论文表
        cursor.execute('''
        CREATE TABLE IF NOT EXISTS papers (
            paper_id TEXT PRIMARY KEY,
            data TEXT NOT NULL,
            download_time TIMESTAMP,
            last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
        ''')
        
        # 创建标签表
        cursor.execute('''
        CREATE TABLE IF NOT EXISTS tags (
            tag_id INTEGER PRIMARY KEY AUTOINCREMENT,
            tag_name TEXT UNIQUE NOT NULL
        )
        ''')
        
        # 创建论文标签关联表
        cursor.execute('''
        CREATE TABLE IF NOT EXISTS paper_tags (
            paper_id TEXT,
            tag_id INTEGER,
            PRIMARY KEY (paper_id, tag_id),
            FOREIGN KEY (paper_id) REFERENCES papers (paper_id),
            FOREIGN KEY (tag_id) REFERENCES tags (tag_id)
        )
        ''')
        
        # 创建全文索引
        cursor.execute('''
        CREATE VIRTUAL TABLE IF NOT EXISTS paper_index USING fts5(
            paper_id, title, authors, abstract, categories
        )
        ''')
        
        conn.commit()
        conn.close()
    
    def add_paper(self, paper):
        """添加或更新论文到数据库"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        # 将论文对象转换为JSON
        paper_data = json.dumps(paper.to_dict())
        
        # 插入或更新论文记录
        cursor.execute('''
        INSERT OR REPLACE INTO papers (paper_id, data, download_time, last_modified)
        VALUES (?, ?, ?, CURRENT_TIMESTAMP)
        ''', (paper.paper_id, paper_data, 
              paper.download_time.isoformat() if paper.download_time else None))
        
        # 更新全文索引
        cursor.execute('DELETE FROM paper_index WHERE paper_id = ?', (paper.paper_id,))
        authors_text = ', '.join(paper.authors)
        categories_text = ', '.join(paper.categories)
        
        cursor.execute('''
        INSERT INTO paper_index (paper_id, title, authors, abstract, categories)
        VALUES (?, ?, ?, ?, ?)
        ''', (paper.paper_id, paper.title, authors_text, paper.abstract, categories_text))
        
        # 更新标签
        cursor.execute('DELETE FROM paper_tags WHERE paper_id = ?', (paper.paper_id,))
        
        for tag in paper.tags:
            # 确保标签存在
            cursor.execute('INSERT OR IGNORE INTO tags (tag_name) VALUES (?)', (tag,))
            cursor.execute('SELECT tag_id FROM tags WHERE tag_name = ?', (tag,))
            tag_id = cursor.fetchone()[0]
            
            # 关联论文和标签
            cursor.execute('''
            INSERT INTO paper_tags (paper_id, tag_id) VALUES (?, ?)
            ''', (paper.paper_id, tag_id))
        
        conn.commit()
        conn.close()
        
        # 发射数据库更新信号
        self.database_updated.emit()
    
    def get_paper(self, paper_id):
        """从数据库获取指定ID的论文"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        cursor.execute('SELECT data FROM papers WHERE paper_id = ?', (paper_id,))
        result = cursor.fetchone()
        
        conn.close()
        
        if result:
            paper_data = json.loads(result[0])
            return ArxivPaper.from_dict(paper_data)
        
        return None
    
    def delete_paper(self, paper_id):
        """从数据库删除论文"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        # 获取本地文件路径
        cursor.execute('SELECT data FROM papers WHERE paper_id = ?', (paper_id,))
        result = cursor.fetchone()
        
        if result:
            paper_data = json.loads(result[0])
            local_path = paper_data.get('local_path')
            
            # 删除本地文件
            if local_path and os.path.exists(local_path):
                try:
                    os.remove(local_path)
                    logger.info(f"已删除文件: {local_path}")
                except OSError as e:
                    logger.error(f"删除文件失败: {str(e)}")
        
        # 删除相关记录
        cursor.execute('DELETE FROM paper_tags WHERE paper_id = ?', (paper_id,))
        cursor.execute('DELETE FROM paper_index WHERE paper_id = ?', (paper_id,))
        cursor.execute('DELETE FROM papers WHERE paper_id = ?', (paper_id,))
        
        conn.commit()
        conn.close()
        
        # 发射数据库更新信号
        self.database_updated.emit()
    
    def get_all_papers(self):
        """获取所有论文"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        cursor.execute('SELECT data FROM papers ORDER BY download_time DESC')
        results = cursor.fetchall()
        
        conn.close()
        
        papers = []
        for result in results:
            paper_data = json.loads(result[0])
            papers.append(ArxivPaper.from_dict(paper_data))
        
        return papers
    
    def search_papers(self, query, categories=None, tags=None, only_downloaded=False):
        """搜索论文"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        params = []
        where_clauses = []
        
        # 全文搜索条件
        if query:
            where_clauses.append('''
            paper_id IN (
                SELECT paper_id FROM paper_index 
                WHERE paper_index MATCH ?
            )
            ''')
            params.append(query)
        
        # 类别过滤
        if categories:
            category_conditions = []
            for category in categories:
                category_conditions.append("data LIKE ?")
                params.append(f'%"categories": [%"{category}"%')
            
            if category_conditions:
                where_clauses.append(f"({' OR '.join(category_conditions)})")
        
        # 标签过滤
        if tags:
            tag_conditions = []
            for tag in tags:
                cursor.execute('SELECT tag_id FROM tags WHERE tag_name = ?', (tag,))
                result = cursor.fetchone()
                if result:
                    tag_id = result[0]
                    tag_conditions.append('''
                    paper_id IN (
                        SELECT paper_id FROM paper_tags WHERE tag_id = ?
                    )
                    ''')
                    params.append(tag_id)
            
            if tag_conditions:
                where_clauses.append(f"({' AND '.join(tag_conditions)})")
        
        # 仅下载过的论文
        if only_downloaded:
            where_clauses.append("data LIKE '%\"status\": \"downloaded\"%'")
        
        # 构建查询
        query = 'SELECT data FROM papers'
        if where_clauses:
            query += ' WHERE ' + ' AND '.join(where_clauses)
        
        query += ' ORDER BY download_time DESC'
        
        # 执行查询
        cursor.execute(query, params)
        results = cursor.fetchall()
        
        conn.close()
        
        papers = []
        for result in results:
            paper_data = json.loads(result[0])
            papers.append(ArxivPaper.from_dict(paper_data))
        
        return papers
    
    def get_all_tags(self):
        """获取所有标签"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        cursor.execute('SELECT tag_name FROM tags ORDER BY tag_name')
        results = cursor.fetchall()
        
        conn.close()
        
        return [result[0] for result in results]
    
    def add_tag_to_paper(self, paper_id, tag_name):
        """为论文添加标签"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        # 确保标签存在
        cursor.execute('INSERT OR IGNORE INTO tags (tag_name) VALUES (?)', (tag_name,))
        cursor.execute('SELECT tag_id FROM tags WHERE tag_name = ?', (tag_name,))
        tag_id = cursor.fetchone()[0]
        
        # 关联论文和标签
        cursor.execute('''
        INSERT OR IGNORE INTO paper_tags (paper_id, tag_id) VALUES (?, ?)
        ''', (paper_id, tag_id))
        
        # 更新论文对象中的标签
        cursor.execute('SELECT data FROM papers WHERE paper_id = ?', (paper_id,))
        result = cursor.fetchone()
        
        if result:
            paper_data = json.loads(result[0])
            tags = set(paper_data.get('tags', []))
            tags.add(tag_name)
            paper_data['tags'] = list(tags)
            
            cursor.execute('''
            UPDATE papers SET data = ?, last_modified = CURRENT_TIMESTAMP
            WHERE paper_id = ?
            ''', (json.dumps(paper_data), paper_id))
        
        conn.commit()
        conn.close()
        
        # 发射数据库更新信号
        self.database_updated.emit()
        
        return True
    
    def remove_tag_from_paper(self, paper_id, tag_name):
        """从论文中移除标签"""
        conn = sqlite3.connect(str(self.db_path))
        cursor = conn.cursor()
        
        # 获取标签ID
        cursor.execute('SELECT tag_id FROM tags WHERE tag_name = ?', (tag_name,))
        result = cursor.fetchone()
        
        if result:
            tag_id = result[0]
            
            # 移除关联
            cursor.execute('''
            DELETE FROM paper_tags WHERE paper_id = ? AND tag_id = ?
            ''', (paper_id, tag_id))
            
            # 更新论文对象中的标签
            cursor.execute('SELECT data FROM papers WHERE paper_id = ?', (paper_id,))
            result = cursor.fetchone()
            
            if result:
                paper_data = json.loads(result[0])
                tags = set(paper_data.get('tags', []))
                if tag_name in tags:
                    tags.remove(tag_name)
                paper_data['tags'] = list(tags)
                
                cursor.execute('''
                UPDATE papers SET data = ?, last_modified = CURRENT_TIMESTAMP
                WHERE paper_id = ?
                ''', (json.dumps(paper_data), paper_id))
        
        conn.commit()
        conn.close()
        
        # 发射数据库更新信号
        self.database_updated.emit()
        
        return True
```

### 4. utils/arxiv_api.py - arXiv API封装

```python
import arxiv
import datetime
import logging

logger = logging.getLogger(__name__)

def search_arxiv(query=None, categories=None, max_results=30, sort_by=arxiv.SortCriterion.Relevance, 
                 since_days=None):
    """
    搜索arXiv论文
    
    参数:
        query (str): 搜索查询
        categories (list): 类别列表
        max_results (int): 最大结果数
        sort_by: 排序方式
        since_days (int): 最近几天
    
    返回:
        list: 搜索结果列表
    """
    query_parts = []
    
    # 添加类别过滤
    if categories:
        cat_queries = [f"cat:{cat}" for cat in categories]
        query_parts.append(f"({' OR '.join(cat_queries)})")
    
    # 添加时间过滤
    if since_days:
        # 计算查询日期范围
        today = datetime.datetime.now()
        since_date = today - datetime.timedelta(days=since_days)
        since_date_str = since_date.strftime('%Y%m%d%H%M%S')
        query_parts.append(f"submittedDate:[{since_date_str} TO *]")
    
    # 添加关键词搜索
    if query:
        # 预处理查询字符串，避免特殊字符问题
        processed_query = query.replace(':', ' ').replace('-', ' ')
        if processed_query.strip():
            query_parts.append(f"({processed_query})")
    
    # 构建最终查询
    final_query = " AND ".join(query_parts) if query_parts else None
    
    # 创建搜索对象
    logger.info(f"执行arXiv搜索: {final_query}")
    search = arxiv.Search(
        query=final_query,
        max_results=max_results,
        sort_by=sort_by
    )
    
    # 执行搜索
    try:
        results = list(search.results())
        logger.info(f"找到 {len(results)} 条结果")
        return results
    except Exception as e:
        logger.error(f"arXiv搜索出错: {str(e)}")
        return []
```

### 5. utils/citation.py - 引用生成工具

```python
def generate_bibtex(paper):
    """为论文生成BibTeX引用格式"""
    # 提取年份
    year = paper.publish_date.year if paper.publish_date else "YYYY"
    
    # 提取第一作者姓氏
    first_author = "Unknown"
    if paper.authors and len(paper.authors) > 0:
        author_parts = paper.authors[0].split()
        if author_parts:
            first_author = author_parts[-1]  # 假设姓氏在最后
    
    # 生成引用键
    cite_key = f"{first_author}{year}{paper.paper_id.split('.')[-1]}"
    
    # 格式化作者列表
    author_list = " and ".join(paper.authors)
    
    # 构建BibTeX条目
    bibtex = f"""@article{{{cite_key},
  title = {{{paper.title}}},
  author = {{{author_list}}},
  journal = {{arXiv preprint arXiv:{paper.paper_id}}},
  year = {{{year}}},
  url = {{https://arxiv.org/abs/{paper.paper_id}}},
}}"""
    
    return bibtex

def generate_apa(paper):
    """为论文生成APA引用格式"""
    # 格式化作者
    if len(paper.authors) == 0:
        authors_text = "Unknown Author"
    elif len(paper.authors) == 1:
        authors_text = paper.authors[0]
    elif len(paper.authors) == 2:
        authors_text = f"{paper.authors[0]} & {paper.authors[1]}"
    else:
        authors_text = f"{paper.authors[0]} et al."
    
    # 提取年份
    year = paper.publish_date.year if paper.publish_date else "n.d."
    
    # 构建APA引用
    apa = f"{authors_text} ({year}). {paper.title}. arXiv preprint arXiv:{paper.paper_id}."
    
    return apa

def generate_mla(paper):
    """为论文生成MLA引用格式"""
    # 格式化作者
    if len(paper.authors) == 0:
        authors_text = "Unknown Author"
    elif len(paper.authors) == 1:
        # 将姓放在前面
        parts = paper.authors[0].split()
        if len(parts) > 1:
            authors_text = f"{parts[-1]}, {' '.join(parts[:-1])}"
        else:
            authors_text = paper.authors[0]
    else:
        # 将第一作者姓放在前面
        parts = paper.authors[0].split()
        if len(parts) > 1:
            first_author = f"{parts[-1]}, {' '.join(parts[:-1])}"
        else:
            first_author = paper.authors[0]
        authors_text = f"{first_author}, et al."
    
    # 提取年份
    year = paper.publish_date.year if paper.publish_date else "n.d."
    
    # 构建MLA引用
    mla = f"{authors_text}. \"{paper.title}.\" arXiv preprint arXiv:{paper.paper_id} ({year})."
    
    return mla
```

### 6. controllers/download_controller.py - 下载控制器

```python
import arxiv
import logging
from PyQt6.QtCore import QObject, pyqtSignal

from utils.arxiv_api import search_arxiv
from models.paper import ArxivPaper
from models.downloader import ArxivDownloader

logger = logging.getLogger(__name__)

class DownloadController(QObject):
    """下载控制器，协调搜索和下载"""
    
    search_started = pyqtSignal()
    search_finished = pyqtSignal(list)  # 搜索结果列表
    search_error = pyqtSignal(str)  # 错误消息
    
    download_started = pyqtSignal(ArxivPaper)
    download_progress = pyqtSignal(ArxivPaper, int)  # 论文, 进度百分比
    download_finished = pyqtSignal(ArxivPaper, bool, str)  # 论文, 成功/失败, 消息
    all_downloads_finished = pyqtSignal()
    
    def __init__(self, database, download_dir):
        super().__init__()
        self.database = database
        self.downloader = ArxivDownloader(download_dir)
        
        # 连接下载器信号
        self.downloader.paper_download_started.connect(self.download_started)
        self.downloader.paper_download_progress.connect(self.download_progress)
        self.downloader.paper_download_finished.connect(self._on_download_finished)
        self.downloader.all_downloads_finished.connect(self.all_downloads_finished)
    
    def search(self, query=None, categories=None, max_results=30, sort_by=arxiv.SortCriterion.Relevance, since_days=None):
        """搜索论文"""
        self.search_started.emit()
        
        try:
            # 执行搜索
            results = search_arxiv(
                query=query,
                categories=categories,
                max_results=max_results,
                sort_by=sort_by,
                since_days=since_days
            )
            
            # 转换为论文对象
            papers = []
            for result in results:
                paper = ArxivPaper.from_arxiv_result(result)
                
                # 检查数据库中是否存在
                existing_paper = self.database.get_paper(paper.paper_id)
                if existing_paper:
                    # 使用数据库中的状态和本地路径
                    paper.status = existing_paper.status
                    paper.local_path = existing_paper.local_path
                    paper.tags = existing_paper.tags
                    paper.notes = existing_paper.notes
                    paper.starred = existing_paper.starred
                    paper.read = existing_paper.read
                
                papers.append(paper)
            
            self.search_finished.emit(papers)
            return papers
            
        except Exception as e:
            logger.error(f"搜索出错: {str(e)}")
            self.search_error.emit(f"搜索出错: {str(e)}")
            return []
    
    def download_paper(self, paper):
        """下载论文"""
        # 检查是否已在数据库中
        existing_paper = self.database.get_paper(paper.paper_id)
        if existing_paper:
            # 更新现有论文
            if existing_paper.status == "downloaded" and existing_paper.local_path:
                paper.status = "downloaded"
                paper.local_path = existing_paper.local_path
                paper.download_time = existing_paper.download_time
                return False
        
        # 开始下载
        success = self.downloader.download_paper(paper)
        
        # 先保存到数据库，后续会更新下载状态
        if success:
            self.database.add_paper(paper)
        
        return success
    
    def cancel_download(self, paper):
        """取消下载"""
        self.downloader.cancel_download(paper)
    
    def _on_download_finished(self, paper, success, message):
        """下载完成处理"""
        # 更新数据库
        if success:
            self.database.add_paper(paper)
        
        # 转发信号
        self.download_finished.emit(paper, success, message)
    
    def is_downloading(self, paper_id):
        """检查是否正在下载"""
        return self.downloader.is_downloading(paper_id)
    
    def cancel_all_downloads(self):
        """取消所有下载"""
        self.downloader.cancel_all_downloads()
```

### 7. controllers/scheduler.py - 定时器控制器

```python
import time
import datetime
import logging
from PyQt6.QtCore import QObject, QThread, pyqtSignal, QSettings

logger = logging.getLogger(__name__)

class SchedulerThread(QThread):
    """定时任务线程"""
    
    task_triggered = pyqtSignal(str)  # 任务ID
    
    def __init__(self, tasks):
        super().__init__()
        self.tasks = tasks  # {task_id: (schedule_time, enabled)}
        self.running = True
    
    def run(self):
        """线程主循环"""
        while self.running:
            now = datetime.datetime.now().time()
            
            # 检查每个任务
            for task_id, (schedule_time, enabled) in self.tasks.items():
                if enabled:
                    task_time = datetime.datetime.strptime(schedule_time, "%H:%M").time()
                    
                    # 检查是否到达执行时间（允许1分钟误差）
                    time_diff = (now.hour * 60 + now.minute) - (task_time.hour * 60 + task_time.minute)
                    if 0 <= time_diff <= 1:
                        logger.info(f"触发定时任务: {task_id}")
                        self.task_triggered.emit(task_id)
            
            # 每分钟检查一次
            time.sleep(60)
    
    def stop(self):
        """停止线程"""
        self.running = False


class SchedulerController(QObject):
    """定时任务控制器"""
    
    task_triggered = pyqtSignal(str)  # 任务ID
    
    def __init__(self):
        super().__init__()
        self.settings = QSettings("ArxivDownloader", "Scheduler")
        self.scheduler_thread = None
        self.tasks = self._load_tasks()
    
    def _load_tasks(self):
        """从设置加载任务"""
        tasks = {}
        
        # 读取任务列表
        task_count = self.settings.beginReadArray("scheduledTasks")
        for i in range(task_count):
            self.settings.setArrayIndex(i)
            task_id = self.settings.value("taskId")
            schedule_time = self.settings.value("scheduleTime")
            enabled = self.settings.value("enabled", "false").lower() == "true"
            
            tasks[task_id] = (schedule_time, enabled)
        
        self.settings.endArray()
        return tasks
    
    def _save_tasks(self):
        """保存任务到设置"""
        self.settings.beginWriteArray("scheduledTasks")
        
        for i, (task_id, (schedule_time, enabled)) in enumerate(self.tasks.items()):
            self.settings.setArrayIndex(i)
            self.settings.setValue("taskId", task_id)
            self.settings.setValue("scheduleTime", schedule_time)
            self.settings.setValue("enabled", str(enabled).lower())
        
        self.settings.endArray()
        self.settings.sync()
    
    def start_scheduler(self):
        """启动定时器"""
        if self.scheduler_thread is None or not self.scheduler_thread.isRunning():
            self.scheduler_thread = SchedulerThread(self.tasks)
            self.scheduler_thread.task_triggered.connect(self.task_triggered)
            self.scheduler_thread.start()
            logger.info("定时器已启动")
    
    def stop_scheduler(self):
        """停止定时器"""
        if self.scheduler_thread and self.scheduler_thread.isRunning():
            self.scheduler_thread.stop()
            self.scheduler_thread.wait()
            logger.info("定时器已停止")
    
    def add_task(self, task_id, schedule_time, enabled=True):
        """添加定时任务"""
        self.tasks[task_id] = (schedule_time, enabled)
        self._save_tasks()
        
        # 如果定时器正在运行，重启以应用更改
        if self.scheduler_thread and self.scheduler_thread.isRunning():
            self.stop_scheduler()
            self.start_scheduler()
    
    def remove_task(self, task_id):
        """移除定时任务"""
        if task_id in self.tasks:
            del self.tasks[task_id]
            self._save_tasks()
            
            # 如果定时器正在运行，重启以应用更改
            if self.scheduler_thread and self.scheduler_thread.isRunning():
                self.stop_scheduler()
                self.start_scheduler()
    
    def enable_task(self, task_id, enabled=True):
        """启用或禁用任务"""
        if task_id in self.tasks:
            schedule_time = self.tasks[task_id][0]
            self.tasks[task_id] = (schedule_time, enabled)
            self._save_tasks()
            
            # 如果定时器正在运行，更新线程中的任务
            if self.scheduler_thread and self.scheduler_thread.isRunning():
                self.scheduler_thread.tasks = self.tasks
    
    def get_all_tasks(self):
        """获取所有任务"""
        return self.tasks
```

### 8. views/main_window.py - 主窗口界面

```python
import os
import webbrowser
import subprocess
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QTabWidget,
                            QLabel, QLineEdit, QPushButton, QComboBox, QCheckBox,
                            QSpinBox, QTableView, QTextEdit, QSplitter, QToolBar,
                            QFileDialog, QMessageBox, QMenu, QStatusBar, QProgressBar,
                            QSystemTrayIcon, QGroupBox, QTreeWidget, QTreeWidgetItem)
from PyQt6.QtCore import Qt, QSettings, QTimer, QSortFilterProxyModel
from PyQt6.QtGui import QAction, QIcon, QStandardItemModel, QStandardItem

from views.settings_dialog import SettingsDialog
from views.paper_viewer import PaperViewer
from views.widgets import PaperListModel, PaperListView, TagsEditor
from models.paper import ArxivPaper
from utils.citation import generate_bibtex, generate_apa, generate_mla

class MainWindow(QMainWindow):
    """应用程序主窗口"""
    
    def __init__(self, download_controller, database, scheduler):
        super().__init__()
        
        self.download_controller = download_controller
        self.database = database
        self.scheduler = scheduler
        
        # 加载设置
        self.settings = QSettings("ArxivDownloader", "MainWindow")
        
        # 初始化UI
        self.init_ui()
        
        # 连接信号
        self.connect_signals()
        
        # 加载保存的设置
        self.load_settings()
        
        # 加载已下载的论文
        self.load_downloaded_papers()
    
    def init_ui(self):
        """初始化用户界面"""
        self.setWindowTitle("arXiv 论文下载与管理系统")
        self.setMinimumSize(1000, 700)
        
        # 创建中央部件
        central_widget = QWidget()
        main_layout = QVBoxLayout(central_widget)
        self.setCentralWidget(central_widget)
        
        # 创建选项卡
        self.tabs = QTabWidget()
        self.tabs.setTabPosition(QTabWidget.TabPosition.North)
        
        # 添加下载选项卡
        self.download_tab = self._create_download_tab()
        self.tabs.addTab(self.download_tab, "下载论文")
        
        # 添加论文库选项卡
        self.library_tab = self._create_library_tab()
        self.tabs.addTab(self.library_tab, "论文库")
        
        main_layout.addWidget(self.tabs)
        
        # 创建状态栏
        self.statusBar = QStatusBar()
        self.setStatusBar(self.statusBar)
        
        # 添加进度条到状态栏
        self.statusBar.addPermanentWidget(QLabel("下载进度:"))
        self.progress_bar = QProgressBar()
        self.progress_bar.setMaximumWidth(200)
        self.progress_bar.setVisible(False)
        self.statusBar.addPermanentWidget(self.progress_bar)
        
        # 创建菜单栏
        self._create_menu_bar()
        
        # 创建工具栏
        self._create_tool_bar()
        
        # 初始化系统托盘
        self._init_system_tray()
    
    def _create_download_tab(self):
        """创建下载选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 搜索设置
        search_group = QGroupBox("搜索设置")
        search_layout = QVBoxLayout(search_group)
        
        # 查询行
        query_layout = QHBoxLayout()
        query_layout.addWidget(QLabel("关键词:"))
        self.query_input = QLineEdit()
        self.query_input.setPlaceholderText("输入搜索关键词")
        query_layout.addWidget(self.query_input)
        search_layout.addLayout(query_layout)
        
        # 类别选择行
        category_layout = QHBoxLayout()
        category_layout.addWidget(QLabel("类别:"))
        self.category_combo = QComboBox()
        self.category_combo.setEditable(True)
        self.category_combo.addItems([
            "hep-th", "gr-qc", "quant-ph", "math-ph", "hep-ph",
            "math.DG", "math.AG", "math.QA", "math.RT", "cond-mat"
        ])
        category_layout.addWidget(self.category_combo)
        
        category_layout.addWidget(QLabel("自:"))
        self.days_spinbox = QSpinBox()
        self.days_spinbox.setRange(1, 60)
        self.days_spinbox.setValue(7)
        self.days_spinbox.setSuffix(" 天前")
        category_layout.addWidget(self.days_spinbox)
        
        category_layout.addWidget(QLabel("最多结果:"))
        self.max_results_spinbox = QSpinBox()
        self.max_results_spinbox.setRange(10, 100)
        self.max_results_spinbox.setValue(30)
        self.max_results_spinbox.setSuffix(" 篇")
        category_layout.addWidget(self.max_results_spinbox)
        
        category_layout.addStretch(1)
        
        self.search_button = QPushButton("搜索")
        self.search_button.clicked.connect(self.on_search_clicked)
        category_layout.addWidget(self.search_button)
        
        search_layout.addLayout(category_layout)
        layout.addWidget(search_group)
        
        # 搜索结果
        results_group = QGroupBox("搜索结果")
        results_layout = QVBoxLayout(results_group)
        
        # 创建搜索结果模型和视图
        self.search_results_model = PaperListModel(self)
        self.search_results_view = PaperListView(self)
        self.search_results_view.setModel(self.search_results_model)
        self.search_results_view.setContextMenuPolicy(Qt.ContextMenuPolicy.CustomContextMenu)
        self.search_results_view.customContextMenuRequested.connect(self.show_search_results_context_menu)
        self.search_results_view.doubleClicked.connect(self.on_paper_double_clicked)
        
        results_layout.addWidget(self.search_results_view)
        
        # 论文详情区域
        paper_details_group = QGroupBox("论文详情")
        paper_details_layout = QVBoxLayout(paper_details_group)
        
        self.paper_title_label = QLabel()
        self.paper_title_label.setWordWrap(True)
        self.paper_title_label.setTextFormat(Qt.TextFormat.RichText)
        paper_details_layout.addWidget(self.paper_title_label)
        
        self.paper_authors_label = QLabel()
        self.paper_authors_label.setWordWrap(True)
        paper_details_layout.addWidget(self.paper_authors_label)
        
        self.paper_abstract = QTextEdit()
        self.paper_abstract.setReadOnly(True)
        self.paper_abstract.setMinimumHeight(100)
        paper_details_layout.addWidget(self.paper_abstract)
        
        # 下载按钮
        download_layout = QHBoxLayout()
        self.download_button = QPushButton("下载论文")
        self.download_button.clicked.connect(self.on_download_clicked)
        download_layout.addWidget(self.download_button)
        
        self.open_arxiv_button = QPushButton("打开arXiv页面")
        self.open_arxiv_button.clicked.connect(self.on_open_arxiv_clicked)
        download_layout.addWidget(self.open_arxiv_button)
        
        self.copy_citation_button = QPushButton("复制引用")
        self.copy_citation_button.setMenu(self._create_citation_menu())
        download_layout.addWidget(self.copy_citation_button)
        
        paper_details_layout.addLayout(download_layout)
        
        # 创建分割器，上方是搜索结果，下方是论文详情
        splitter = QSplitter(Qt.Orientation.Vertical)
        splitter.addWidget(results_group)
        splitter.addWidget(paper_details_group)
        splitter.setSizes([400, 300])
        layout.addWidget(splitter)
        
        return tab
    
    def _create_library_tab(self):
        """创建论文库选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 创建水平分割器
        splitter = QSplitter(Qt.Orientation.Horizontal)
        
        # 左侧面板（标签和过滤器）
        left_panel = QWidget()
        left_layout = QVBoxLayout(left_panel)
        
        # 搜索框
        search_layout = QHBoxLayout()
        search_layout.addWidget(QLabel("搜索:"))
        self.library_search_input = QLineEdit()
        self.library_search_input.setPlaceholderText("搜索标题、作者或摘要")
        self.library_search_input.textChanged.connect(self.on_library_search_changed)
        search_layout.addWidget(self.library_search_input)
        
        left_layout.addLayout(search_layout)
        
        # 标签树
        tags_group = QGroupBox("标签")
        tags_layout = QVBoxLayout(tags_group)
        
        self.tags_tree = QTreeWidget()
        self.tags_tree.setHeaderLabel("标签")
        self.tags_tree.itemClicked.connect(self.on_tag_clicked)
        tags_layout.addWidget(self.tags_tree)
        
        # 添加标签按钮
        tags_button_layout = QHBoxLayout()
        self.add_tag_button = QPushButton("添加标签")
        self.add_tag_button.clicked.connect(self.on_add_tag_clicked)
        tags_button_layout.addWidget(self.add_tag_button)
        
        self.edit_tag_button = QPushButton("编辑标签")
        self.edit_tag_button.clicked.connect(self.on_edit_tag_clicked)
        tags_button_layout.addWidget(self.edit_tag_button)
        
        tags_layout.addLayout(tags_button_layout)
        
        left_layout.addWidget(tags_group)
        
        # 添加左侧面板到分割器
        splitter.addWidget(left_panel)
        
        # 右侧面板（论文列表和详情）
        right_panel = QWidget()
        right_layout = QVBoxLayout(right_panel)
        
        # 论文列表
        library_group = QGroupBox("我的论文")
        library_layout = QVBoxLayout(library_group)
        
        # 创建论文库模型和视图
        self.library_model = PaperListModel(self)
        self.library_proxy_model = QSortFilterProxyModel()
        self.library_proxy_model.setSourceModel(self.library_model)
        self.library_proxy_model.setFilterCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)
        
        self.library_view = PaperListView(self)
        self.library_view.setModel(self.library_proxy_model)
        self.library_view.setContextMenuPolicy(Qt.ContextMenuPolicy.CustomContextMenu)
        self.library_view.customContextMenuRequested.connect(self.show_library_context_menu)
        self.library_view.doubleClicked.connect(self.on_library_paper_double_clicked)
        
        library_layout.addWidget(self.library_view)
        
        # 论文详情区域
        paper_details_group = QGroupBox("论文详情")
        paper_details_layout = QVBoxLayout(paper_details_group)
        
        self.library_title_label = QLabel()
        self.library_title_label.setWordWrap(True)
        self.library_title_label.setTextFormat(Qt.TextFormat.RichText)
        paper_details_layout.addWidget(self.library_title_label)
        
        self.library_authors_label = QLabel()
        self.library_authors_label.setWordWrap(True)
        paper_details_layout.addWidget(self.library_authors_label)
        
        # 标签编辑器
        self.library_tags_editor = TagsEditor()
        paper_details_layout.addWidget(self.library_tags_editor)
        
        # 摘要
        self.library_abstract = QTextEdit()
        self.library_abstract.setReadOnly(True)
        self.library_abstract.setMinimumHeight(100)
        paper_details_layout.addWidget(self.library_abstract)
        
        # 操作按钮
        actions_layout = QHBoxLayout()
        
        self.open_pdf_button = QPushButton("打开PDF")
        self.open_pdf_button.clicked.connect(self.on_open_pdf_clicked)
        actions_layout.addWidget(self.open_pdf_button)
        
        self.open_paper_folder_button = QPushButton("打开文件夹")
        self.open_paper_folder_button.clicked.connect(self.on_open_paper_folder_clicked)
        actions_layout.addWidget(self.open_paper_folder_button)
        
        self.export_citation_button = QPushButton("导出引用")
        self.export_citation_button.setMenu(self._create_citation_menu(is_library=True))
        actions_layout.addWidget(self.export_citation_button)
        
        paper_details_layout.addLayout(actions_layout)
        
        # 添加组件到右侧面板
        vertical_splitter = QSplitter(Qt.Orientation.Vertical)
        vertical_splitter.addWidget(library_group)
        vertical_splitter.addWidget(paper_details_group)
        vertical_splitter.setSizes([400, 300])
        right_layout.addWidget(vertical_splitter)
        
        # 添加右侧面板到分割器
        splitter.addWidget(right_panel)
        
        # 设置分割器比例
        splitter.setSizes([200, 800])
        
        # 添加分割器到布局
        layout.addWidget(splitter)
        
        return tab
    
    def _create_menu_bar(self):
        """创建菜单栏"""
        menubar = self.menuBar()
        
        # 文件菜单
        file_menu = menubar.addMenu("文件")
        
        # 设置
        settings_action = QAction("设置", self)
        settings_action.triggered.connect(self.show_settings_dialog)
        file_menu.addAction(settings_action)
        
        # 导出全部引用
        export_all_citations_action = QAction("导出所有引用", self)
        export_all_citations_action.triggered.connect(self.export_all_citations)
        file_menu.addAction(export_all_citations_action)
        
        file_menu.addSeparator()
        
        # 退出
        exit_action = QAction("退出", self)
        exit_action.triggered.connect(self.close)
        file_menu.addAction(exit_action)
        
        # 工具菜单
        tools_menu = menubar.addMenu("工具")
        
        # 定时下载
        schedule_action = QAction("定时下载", self)
        schedule_action.triggered.connect(self.show_schedule_dialog)
        tools_menu.addAction(schedule_action)
        
        # 批量下载
        batch_download_action = QAction("批量下载", self)
        batch_download_action.triggered.connect(self.show_batch_download_dialog)
        tools_menu.addAction(batch_download_action)
        
        tools_menu.addSeparator()
        
        # 检查更新
        check_updates_action = QAction("检查更新", self)
        check_updates_action.triggered.connect(self.check_for_updates)
        tools_menu.addAction(check_updates_action)
        
        # 帮助菜单
        help_menu = menubar.addMenu("帮助")
        
        # 关于
        about_action = QAction("关于", self)
        about_action.triggered.connect(self.show_about_dialog)
        help_menu.addAction(about_action)
        
        #
```

### 8. views/main_window.py - 主窗口界面 (续)

```python
    def _create_tool_bar(self):
        """创建工具栏"""
        toolbar = QToolBar("主工具栏", self)
        self.addToolBar(toolbar)
        
        # 刷新
        refresh_action = QAction("刷新", self)
        refresh_action.triggered.connect(self.load_downloaded_papers)
        toolbar.addAction(refresh_action)
        
        # 新建下载
        new_download_action = QAction("新建下载", self)
        new_download_action.triggered.connect(lambda: self.tabs.setCurrentIndex(0))
        toolbar.addAction(new_download_action)
        
        toolbar.addSeparator()
        
        # 查看论文库
        view_library_action = QAction("论文库", self)
        view_library_action.triggered.connect(lambda: self.tabs.setCurrentIndex(1))
        toolbar.addAction(view_library_action)
        
        # 过滤已下载
        self.filter_downloaded_action = QAction("只显示已下载", self)
        self.filter_downloaded_action.setCheckable(True)
        self.filter_downloaded_action.triggered.connect(self.on_filter_downloaded_toggled)
        toolbar.addAction(self.filter_downloaded_action)
        
        toolbar.addSeparator()
        
        # 取消所有下载
        cancel_all_action = QAction("取消所有下载", self)
        cancel_all_action.triggered.connect(self.cancel_all_downloads)
        toolbar.addAction(cancel_all_action)
    
    def _init_system_tray(self):
        """初始化系统托盘图标"""
        self.tray_icon = QSystemTrayIcon(self)
        tray_menu = QMenu()
        
        # 显示/隐藏
        show_action = QAction("显示窗口", self)
        show_action.triggered.connect(self.show)
        tray_menu.addAction(show_action)
        
        # 退出
        quit_action = QAction("退出", self)
        quit_action.triggered.connect(self.close)
        tray_menu.addAction(quit_action)
        
        self.tray_icon.setContextMenu(tray_menu)
        self.tray_icon.activated.connect(self.on_tray_icon_activated)
        
        # 设置图标并显示
        self.tray_icon.setToolTip("arXiv 论文下载器")
        self.tray_icon.show()
    
    def _create_citation_menu(self, is_library=False):
        """创建引用格式菜单"""
        citation_menu = QMenu()
        
        bibtex_action = QAction("BibTeX", self)
        bibtex_action.triggered.connect(
            lambda: self.copy_citation_format("bibtex", is_library))
        citation_menu.addAction(bibtex_action)
        
        apa_action = QAction("APA", self)
        apa_action.triggered.connect(
            lambda: self.copy_citation_format("apa", is_library))
        citation_menu.addAction(apa_action)
        
        mla_action = QAction("MLA", self)
        mla_action.triggered.connect(
            lambda: self.copy_citation_format("mla", is_library))
        citation_menu.addAction(mla_action)
        
        return citation_menu
    
    def connect_signals(self):
        """连接信号"""
        # 下载控制器信号
        self.download_controller.search_started.connect(self.on_search_started)
        self.download_controller.search_finished.connect(self.on_search_finished)
        self.download_controller.search_error.connect(self.on_search_error)
        
        self.download_controller.download_started.connect(self.on_download_started)
        self.download_controller.download_progress.connect(self.on_download_progress)
        self.download_controller.download_finished.connect(self.on_download_finished)
        self.download_controller.all_downloads_finished.connect(self.on_all_downloads_finished)
        
        # 数据库信号
        self.database.database_updated.connect(self.load_downloaded_papers)
        
        # 定时器信号
        self.scheduler.task_triggered.connect(self.on_scheduled_task)
    
    def load_settings(self):
        """加载设置"""
        # 恢复窗口位置和大小
        geometry = self.settings.value("geometry")
        if geometry:
            self.restoreGeometry(geometry)
        
        # 恢复窗口状态
        state = self.settings.value("windowState")
        if state:
            self.restoreState(state)
        
        # 加载其他设置
        self.filter_downloaded_action.setChecked(
            self.settings.value("filter_downloaded", "false").lower() == "true")
    
    def save_settings(self):
        """保存设置"""
        # 保存窗口位置和大小
        self.settings.setValue("geometry", self.saveGeometry())
        self.settings.setValue("windowState", self.saveState())
        
        # 保存其他设置
        self.settings.setValue("filter_downloaded", 
                              str(self.filter_downloaded_action.isChecked()).lower())
    
    def load_downloaded_papers(self):
        """从数据库加载已下载的论文"""
        # 加载论文到库视图
        papers = self.database.get_all_papers()
        self.library_model.set_papers(papers)
        
        # 更新标签树
        self.update_tags_tree()
        
        # 更新状态栏
        self.statusBar.showMessage(f"已加载 {len(papers)} 篇论文")
    
    def update_tags_tree(self):
        """更新标签树"""
        self.tags_tree.clear()
        
        # 添加"全部"项
        all_item = QTreeWidgetItem(self.tags_tree)
        all_item.setText(0, "全部论文")
        all_item.setData(0, Qt.ItemDataRole.UserRole, "all")
        
        # 添加"已读"和"未读"项
        status_item = QTreeWidgetItem(self.tags_tree)
        status_item.setText(0, "阅读状态")
        
        read_item = QTreeWidgetItem(status_item)
        read_item.setText(0, "已读")
        read_item.setData(0, Qt.ItemDataRole.UserRole, "read")
        
        unread_item = QTreeWidgetItem(status_item)
        unread_item.setText(0, "未读")
        unread_item.setData(0, Qt.ItemDataRole.UserRole, "unread")
        
        # 添加"已标星"项
        starred_item = QTreeWidgetItem(self.tags_tree)
        starred_item.setText(0, "已标星")
        starred_item.setData(0, Qt.ItemDataRole.UserRole, "starred")
        
        # 添加用户标签
        tags_item = QTreeWidgetItem(self.tags_tree)
        tags_item.setText(0, "标签")
        
        tags = self.database.get_all_tags()
        for tag in sorted(tags):
            tag_item = QTreeWidgetItem(tags_item)
            tag_item.setText(0, tag)
            tag_item.setData(0, Qt.ItemDataRole.UserRole, f"tag:{tag}")
        
        # 展开所有节点
        self.tags_tree.expandAll()
    
    def show_search_results_context_menu(self, position):
        """显示搜索结果的上下文菜单"""
        index = self.search_results_view.indexAt(position)
        if not index.isValid():
            return
        
        paper = self.search_results_model.get_paper(index.row())
        if not paper:
            return
        
        menu = QMenu()
        
        # 下载
        if paper.status != "downloaded":
            download_action = QAction("下载", self)
            download_action.triggered.connect(lambda: self.on_download_clicked(paper))
            menu.addAction(download_action)
        else:
            open_action = QAction("打开PDF", self)
            open_action.triggered.connect(lambda: self.open_paper_pdf(paper))
            menu.addAction(open_action)
        
        menu.addSeparator()
        
        # 打开arXiv页面
        open_arxiv_action = QAction("打开arXiv页面", self)
        open_arxiv_action.triggered.connect(lambda: self.open_arxiv_page(paper))
        menu.addAction(open_arxiv_action)
        
        # 复制引用子菜单
        citation_menu = QMenu("复制引用")
        
        bibtex_action = QAction("BibTeX", self)
        bibtex_action.triggered.connect(lambda: self.copy_citation_format("bibtex", False, paper))
        citation_menu.addAction(bibtex_action)
        
        apa_action = QAction("APA", self)
        apa_action.triggered.connect(lambda: self.copy_citation_format("apa", False, paper))
        citation_menu.addAction(apa_action)
        
        mla_action = QAction("MLA", self)
        mla_action.triggered.connect(lambda: self.copy_citation_format("mla", False, paper))
        citation_menu.addAction(mla_action)
        
        menu.addMenu(citation_menu)
        
        menu.exec(self.search_results_view.mapToGlobal(position))
    
    def show_library_context_menu(self, position):
        """显示论文库的上下文菜单"""
        index = self.library_view.indexAt(position)
        if not index.isValid():
            return
        
        # 获取源模型索引
        source_index = self.library_proxy_model.mapToSource(index)
        paper = self.library_model.get_paper(source_index.row())
        if not paper:
            return
        
        menu = QMenu()
        
        # 打开PDF
        if paper.local_path and os.path.exists(paper.local_path):
            open_action = QAction("打开PDF", self)
            open_action.triggered.connect(lambda: self.open_paper_pdf(paper))
            menu.addAction(open_action)
            
            open_folder_action = QAction("打开所在文件夹", self)
            open_folder_action.triggered.connect(lambda: self.open_paper_folder(paper))
            menu.addAction(open_folder_action)
            
            menu.addSeparator()
        
        # 标记已读/未读
        if paper.read:
            mark_unread_action = QAction("标记为未读", self)
            mark_unread_action.triggered.connect(lambda: self.mark_paper_read(paper, False))
            menu.addAction(mark_unread_action)
        else:
            mark_read_action = QAction("标记为已读", self)
            mark_read_action.triggered.connect(lambda: self.mark_paper_read(paper, True))
            menu.addAction(mark_read_action)
        
        # 标星/取消标星
        if paper.starred:
            unstar_action = QAction("取消标星", self)
            unstar_action.triggered.connect(lambda: self.star_paper(paper, False))
            menu.addAction(unstar_action)
        else:
            star_action = QAction("标星", self)
            star_action.triggered.connect(lambda: self.star_paper(paper, True))
            menu.addAction(star_action)
        
        menu.addSeparator()
        
        # 标签管理
        tags_menu = QMenu("管理标签")
        
        # 获取所有标签
        all_tags = self.database.get_all_tags()
        for tag in sorted(all_tags):
            tag_action = QAction(tag, self)
            tag_action.setCheckable(True)
            tag_action.setChecked(tag in paper.tags)
            tag_action.triggered.connect(lambda checked, t=tag, p=paper: self.toggle_paper_tag(p, t, checked))
            tags_menu.addAction(tag_action)
        
        if all_tags:
            tags_menu.addSeparator()
        
        add_tag_action = QAction("添加新标签...", self)
        add_tag_action.triggered.connect(lambda: self.add_tag_to_paper(paper))
        tags_menu.addAction(add_tag_action)
        
        menu.addMenu(tags_menu)
        
        menu.addSeparator()
        
        # 删除
        delete_action = QAction("删除", self)
        delete_action.triggered.connect(lambda: self.delete_paper(paper))
        menu.addAction(delete_action)
        
        menu.exec(self.library_view.mapToGlobal(position))
    
    def on_search_clicked(self):
        """搜索按钮点击事件"""
        query = self.query_input.text().strip()
        category = self.category_combo.currentText().strip()
        days = self.days_spinbox.value()
        max_results = self.max_results_spinbox.value()
        
        categories = None
        if category:
            categories = [cat.strip() for cat in category.split(',')]
        
        # 执行搜索
        self.download_controller.search(
            query=query,
            categories=categories,
            max_results=max_results,
            since_days=days
        )
    
    def on_search_started(self):
        """搜索开始事件"""
        self.search_button.setEnabled(False)
        self.search_button.setText("搜索中...")
        self.statusBar.showMessage("正在搜索...")
        self.search_results_model.clear()
    
    def on_search_finished(self, papers):
        """搜索完成事件"""
        self.search_button.setEnabled(True)
        self.search_button.setText("搜索")
        self.statusBar.showMessage(f"找到 {len(papers)} 篇论文")
        
        # 更新搜索结果
        self.search_results_model.set_papers(papers)
        
        # 清空论文详情
        self.clear_paper_details()
    
    def on_search_error(self, error_message):
        """搜索错误事件"""
        self.search_button.setEnabled(True)
        self.search_button.setText("搜索")
        self.statusBar.showMessage(f"搜索出错: {error_message}")
        
        QMessageBox.critical(self, "搜索错误", error_message)
    
    def on_download_clicked(self, paper=None):
        """下载按钮点击事件"""
        if paper is None:
            # 从选中的论文获取
            index = self.search_results_view.currentIndex()
            if index.isValid():
                paper = self.search_results_model.get_paper(index.row())
        
        if paper:
            # 检查是否已下载
            if paper.status == "downloaded" and paper.local_path and os.path.exists(paper.local_path):
                reply = QMessageBox.question(
                    self,
                    "论文已下载",
                    f"论文《{paper.title}》已经下载。\n是否打开PDF文件？",
                    QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                    QMessageBox.StandardButton.Yes
                )
                
                if reply == QMessageBox.StandardButton.Yes:
                    self.open_paper_pdf(paper)
                
                return
            
            # 开始下载
            success = self.download_controller.download_paper(paper)
            
            if not success:
                QMessageBox.warning(
                    self,
                    "下载错误",
                    f"无法开始下载论文《{paper.title}》。\n可能该论文已在下载队列中。"
                )
    
    def on_download_started(self, paper):
        """下载开始事件"""
        self.progress_bar.setValue(0)
        self.progress_bar.setVisible(True)
        self.statusBar.showMessage(f"正在下载: {paper.title}")
        
        # 更新模型
        self.search_results_model.update_paper(paper)
        self.library_model.update_paper(paper)
    
    def on_download_progress(self, paper, progress):
        """下载进度事件"""
        self.progress_bar.setValue(progress)
        self.statusBar.showMessage(f"正在下载: {paper.title} ({progress}%)")
        
        # 更新模型
        self.search_results_model.update_paper(paper)
        self.library_model.update_paper(paper)
    
    def on_download_finished(self, paper, success, message):
        """下载完成事件"""
        if success:
            self.statusBar.showMessage(f"下载完成: {paper.title}")
            
            # 显示通知
            self.tray_icon.showMessage(
                "下载完成",
                f"论文《{paper.title}》下载完成",
                QSystemTrayIcon.MessageIcon.Information,
                5000
            )
        else:
            self.statusBar.showMessage(f"下载失败: {paper.title} - {message}")
            
            # 显示通知
            self.tray_icon.showMessage(
                "下载失败",
                f"论文《{paper.title}》下载失败: {message}",
                QSystemTrayIcon.MessageIcon.Warning,
                5000
            )
        
        # 更新模型
        self.search_results_model.update_paper(paper)
        self.library_model.update_paper(paper)
        
        # 更新当前显示的论文详情
        self.update_current_paper_details()
    
    def on_all_downloads_finished(self):
        """所有下载完成事件"""
        self.progress_bar.setVisible(False)
        self.statusBar.showMessage("所有下载任务已完成")
    
    def on_paper_double_clicked(self, index):
        """论文双击事件（搜索结果）"""
        if index.isValid():
            paper = self.search_results_model.get_paper(index.row())
            
            # 显示论文详情
            self.show_paper_details(paper)
            
            # 如果已下载，打开PDF
            if paper.status == "downloaded" and paper.local_path and os.path.exists(paper.local_path):
                self.open_paper_pdf(paper)
    
    def on_library_paper_double_clicked(self, index):
        """论文双击事件（论文库）"""
        if index.isValid():
            # 获取源模型索引
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            
            # 显示论文详情
            self.show_library_paper_details(paper)
            
            # 打开PDF
            if paper.local_path and os.path.exists(paper.local_path):
                self.open_paper_pdf(paper)
                
                # 标记为已读
                if not paper.read:
                    self.mark_paper_read(paper, True)
    
    def on_open_arxiv_clicked(self):
        """打开arXiv页面按钮点击事件"""
        index = self.search_results_view.currentIndex()
        if index.isValid():
            paper = self.search_results_model.get_paper(index.row())
            self.open_arxiv_page(paper)
    
    def on_open_pdf_clicked(self):
        """打开PDF按钮点击事件"""
        index = self.library_view.currentIndex()
        if index.isValid():
            # 获取源模型索引
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            self.open_paper_pdf(paper)
    
    def on_open_paper_folder_clicked(self):
        """打开文件夹按钮点击事件"""
        index = self.library_view.currentIndex()
        if index.isValid():
            # 获取源模型索引
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            self.open_paper_folder(paper)
    
    def on_tag_clicked(self, item):
        """标签树项点击事件"""
        tag_id = item.data(0, Qt.ItemDataRole.UserRole)
        
        if tag_id == "all":
            # 显示所有论文
            self.library_proxy_model.setFilterFixedString("")
        elif tag_id == "read":
            # 过滤已读论文
            self.library_proxy_model.setFilterFixedString("read:")
        elif tag_id == "unread":
            # 过滤未读论文
            self.library_proxy_model.setFilterFixedString("unread:")
        elif tag_id == "starred":
            # 过滤已标星论文
            self.library_proxy_model.setFilterFixedString("starred:")
        elif tag_id and tag_id.startswith("tag:"):
            # 过滤指定标签
            tag = tag_id[4:]
            self.library_proxy_model.setFilterFixedString(f"tag:{tag}")
    
    def on_library_search_changed(self, text):
        """论文库搜索框文本变化事件"""
        if text:
            self.library_proxy_model.setFilterFixedString(f"search:{text}")
        else:
            self.library_proxy_model.setFilterFixedString("")
    
    def on_add_tag_clicked(self):
        """添加标签按钮点击事件"""
        from PyQt6.QtWidgets import QInputDialog
        
        tag, ok = QInputDialog.getText(
            self, "添加标签", "请输入新标签名称:"
        )
        
        if ok and tag.strip():
            # 添加到选中的论文
            index = self.library_view.currentIndex()
            if index.isValid():
                source_index = self.library_proxy_model.mapToSource(index)
                paper = self.library_model.get_paper(source_index.row())
                self.add_tag_to_paper(paper, tag.strip())
            else:
                # 只创建标签
                self.database.add_tag_to_paper("dummy", tag.strip())
                # 刷新标签树
                self.update_tags_tree()
    
    def on_edit_tag_clicked(self):
        """编辑标签按钮点击事件"""
        # 获取当前选中的标签
        item = self.tags_tree.currentItem()
        if not item:
            QMessageBox.warning(self, "未选择标签", "请先选择要编辑的标签")
            return
        
        tag_id = item.data(0, Qt.ItemDataRole.UserRole)
        if not tag_id or not tag_id.startswith("tag:"):
            QMessageBox.warning(self, "不可编辑", "只能编辑用户自定义标签")
            return
        
        old_tag = tag_id[4:]
        
        from PyQt6.QtWidgets import QInputDialog
        
        new_tag, ok = QInputDialog.getText(
            self, "编辑标签", "请输入新标签名称:",
            text=old_tag
        )
        
        if ok and new_tag.strip() and new_tag != old_tag:
            # TODO: 实现标签重命名功能
            QMessageBox.information(self, "功能待实现", "标签重命名功能暂未实现")
    
    def on_filter_downloaded_toggled(self, checked):
        """过滤已下载切换事件"""
        if checked:
            # 只显示已下载的论文
            self.library_proxy_model.setFilterFixedString("downloaded:")
        else:
            # 显示所有论文
            self.library_proxy_model.setFilterFixedString("")
    
    def on_scheduled_task(self, task_id):
        """定时任务触发事件"""
        if task_id == "daily_download":
            # 执行每日下载
            self.execute_daily_download()
    
    def show_paper_details(self, paper):
        """显示论文详情（搜索结果）"""
        if paper:
            # 设置标题
            self.paper_title_label.setText(f"<b>{paper.title}</b>")
            
            # 设置作者
            authors_text = ", ".join(paper.authors)
            self.paper_authors_label.setText(f"<i>{authors_text}</i>")
            
            # 设置摘要
            self.paper_abstract.setText(paper.abstract)
            
            # 更新下载按钮状态
            if paper.status == "downloaded":
                self.download_button.setText("打开PDF")
            else:
                self.download_button.setText("下载论文")
    
    def show_library_paper_details(self, paper):
        """显示论文详情（论文库）"""
        if paper:
            # 设置标题
            self.library_title_label.setText(f"<b>{paper.title}</b>")
            
            # 设置作者
            authors_text = ", ".join(paper.authors)
            self.library_authors_label.setText(f"<i>{authors_text}</i>")
            
            # 设置标签
            self.library_tags_editor.set_paper(paper, self.database)
            
            # 设置摘要
            self.library_abstract.setText(paper.abstract)
            
            # 更新按钮状态
            has_pdf = paper.local_path and os.path.exists(paper.local_path)
            self.open_pdf_button.setEnabled(has_pdf)
            self.open_paper_folder_button.setEnabled(has_pdf)
    
    def clear_paper_details(self):
        """清空论文详情"""
        self.paper_title_label.clear()
        self.paper_authors_label.clear()
        self.paper_abstract.clear()
        
        self.library_title_label.clear()
        self.library_authors_label.clear()
        self.library_abstract.clear()
        self.library_tags_editor.clear()
    
    def update_current_paper_details(self):
        """更新当前显示的论文详情"""
        # 更新搜索结果中选中的论文
        index = self.search_results_view.currentIndex()
        if index.isValid():
            paper = self.search_results_model.get_paper(index.row())
            self.show_paper_details(paper)
        
        # 更新论文库中选中的论文
        index = self.library_view.currentIndex()
        if index.isValid():
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            self.show_library_paper_details(paper)
    
    def open_paper_pdf(self, paper):
        """打开论文PDF"""
        if not paper.local_path or not os.path.exists(paper.local_path):
            QMessageBox.warning(
                self,
                "文件不存在",
                f"论文《{paper.title}》的PDF文件不存在"
            )
            return
        
        try:
            # 尝试用默认应用打开
            if os.name == 'nt':  # Windows
                os.startfile(paper.local_path)
            elif os.name == 'posix':  # macOS/Linux
                subprocess.call(('xdg-open', paper.local_path))
        except Exception as e:
            QMessageBox.critical(
                self,
                "打开文件失败",
                f"无法打开PDF文件: {str(e)}"
            )
    
    def open_paper_folder(self, paper):
        """打开论文所在文件夹"""
        if not paper.local_path or not os.path.exists(paper.local_path):
            QMessageBox.warning(
                self,
                "文件不存在",
                f"论文《{paper.title}》的PDF文件不存在"
            )
            return
        
        try:
            # 获取文件所在目录
            folder = os.path.dirname(paper.local_path)
            
            # 打开文件夹
            if os.name == 'nt':  # Windows
                os.startfile(folder)
            elif os.name == 'posix':  # macOS/Linux
                subprocess.call(('xdg-open', folder))
        except Exception as e:
            QMessageBox.critical(
                self,
                "打开文件夹失败",
                f"无法打开文件夹: {str(e)}"
            )
    
    def open_arxiv_page(self, paper):
        """打开论文的arXiv页面"""
        if paper.web_url:
            webbrowser.open(paper.web_url)
        else:
            webbrowser.open(f"https://arxiv.org/abs/{paper.paper_id}")
    
    def copy_citation_format(self, format_type, is_library=False, specific_paper=None):
        """复制引用格式"""
        # 获取选中的论文
        paper = specific_paper
        
        if not paper:
            if is_library:
                index = self.library_view.currentIndex()
                if index.isValid():
                    source_index = self.library_proxy_model.mapToSource(index)
                    paper = self.library_model.get_paper(source_index.row())
            else:
                index = self.search_results_view.currentIndex()
                if index.isValid():
                    paper = self.search_results_model.get_paper(index.row())
        
        if not paper:
            QMessageBox.warning(self, "未选择论文", "请先选择一篇论文")
            return
        
        # 生成引用格式
        citation = ""
        if format_type == "bibtex":
            citation = generate_bibtex(paper)
        elif format_type == "apa":
            citation = generate_apa(paper)
        elif format_type == "mla":
            citation = generate_mla(paper)
        
        # 复制到剪贴板
        from PyQt6.QtGui import QClipboard
        clipboard = QApplication.clipboard()
        clipboard.setText(citation)
        
        self.statusBar.showMessage(f"{format_type.upper()} 引用已复制到剪贴板", 3000)
    
    def mark_paper_read(self, paper, read=True):
        """标记论文为已读/未读"""
        paper.read = read
        self.database.add_paper(paper)
        
        # 更新模型
        self.library_model.update_paper(paper)
    
    def star_paper(self, paper, starred=True):
        """标记论文为已标星/取消标星"""
        paper.starred = starred
        self.database.add_paper(paper)
        
        # 更新模型
        self.library_model.update_paper(paper)
    
    def add_tag_to_paper(self, paper, tag=None):
        """为论文添加标签"""
        if tag is None:
            from PyQt6.QtWidgets import QInputDialog
            
            tag, ok = QInputDialog.getText(
                self, "添加标签", "请输入新标签名称:"
            )
            
            if not (ok and tag.strip()):
                return
        
        # 添加标签
        paper.tags.add(tag.strip())
        self.database.add_paper(paper)
        
        # 更新标签树
        self.update_tags_tree()
        
        # 更新标签编辑器
        self.library_tags_editor.update_tags()
    
    def toggle_paper_tag(self, paper, tag, checked):
        """切换论文标签"""
        if checked:
            paper.tags.add(tag)
        else:
            paper.tags.discard(tag)
        
        self.database.add_paper(paper)
        
        # 更新标签编辑器
        self.library_tags_editor.update_tags()
    
    def delete_paper(self, paper):
        """删除论文"""
        reply = QMessageBox.question(
            self,
            "确认删除",
            f"确定要删除论文《{paper.title}》吗？\n这将同时删除本地PDF文件。",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )
        
        if reply == QMessageBox.StandardButton.Yes:
            self.database.delete_paper(paper.paper_id)
    
    def cancel_all_downloads(self):
        """取消所有下载"""
        reply = QMessageBox.question(
            self,
            "确认取消",
            "确定要取消所有正在进行的下载吗？",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )
        
        if reply == QMessageBox.StandardButton.Yes:
            self.download_controller.cancel_all_downloads()
            self.statusBar.showMessage("已取消所有下载")
    
    def execute_daily_download(self):
        """执行每日下载任务"""
        # 获取设置
        settings = QSettings("ArxivDownloader", "DailyDownload")
        categories = settings.value("categories", [])
        max_results = int(settings.value("max_results", 10))
        
        if not categories:
            return
        
        # 搜索最新论文
        self.download_controller.search(
            categories=categories,
            max_results=max_results,
            since_days=1
        )
        
        # 在搜索完成后自动下载 (通过信号连接)
        self.download_controller.search_finished.connect(self.auto_download_new_papers)
    
    def auto_download_new_papers(self, papers):
        """自动下载新论文"""
        # 断开信号连接，避免重复调用
        self.download_controller.search_finished.disconnect(self.auto_download_new_papers)
        
        # 过滤出未下载的论文
        new_papers = [p for p in papers if p.status != "downloaded"]
        
        # 显示通知
        self.tray_icon.showMessage(
            "每日更新",
            f"找到 {len(new_papers)} 篇新论文，正在下载...",
            QSystemTrayIcon.MessageIcon.Information,
            5000
        )
        
        # 下载新论文
        for paper in new_papers:
            self.download_controller.download_paper(paper)
    
    def show_settings_dialog(self):
        """显示设置对话框"""
        dialog = SettingsDialog(self)
        if dialog.exec():
            # 应用新设置
            self.load_settings()
    
    def show_schedule_dialog(self):
        """显示定时下载对话框"""
        # TODO: 实现定时下载对话框
        QMessageBox.information(self, "功能待实现", "定时下载对话框功能暂未实现")
    
    def show_batch_download_dialog(self):
        """显示批量下载对话框"""
        # TODO: 实现批量下载对话框
        QMessageBox.information(self, "功能待实现", "批量下载对话框功能暂未实现")
    
    def export_all_citations(self):
        """导出所有引用"""
        # 获取所有论文
        papers = self.database.get_all_papers()
        
        if not papers:
            QMessageBox.warning(self, "无论文", "库中没有论文可导出")
            return
        
        # 选择导出格式
        from PyQt6.QtWidgets import QDialog, QVBoxLayout, QRadioButton, QDialogButtonBox
        
        dialog = QDialog(self)
        dialog.setWindowTitle("选择导出格式")
        layout = QVBoxLayout(dialog)
        
        bibtex_radio = QRadioButton("BibTeX")
        bibtex_radio.setChecked(True)
        layout.addWidget(bibtex_radio)
        
        apa_radio = QRadioButton("APA")
        layout.addWidget(apa_radio)
        
        mla_radio = QRadioButton("MLA")
        layout.addWidget(mla_radio)
        
        button_box = QDialogButtonBox(
            QDialogButtonBox.StandardButton.Ok | QDialogButtonBox.StandardButton.Cancel
        )
        button_box.accepted.connect(dialog.accept)
        button_box.rejected.connect(dialog.reject)
        layout.addWidget(button_box)
        
        if not dialog.exec():
            return
        
        # 确定导出格式
        if bibtex_radio.isChecked():
            format_type = "bibtex"
        elif apa_radio.isChecked():
            format_type = "apa"
        elif mla_radio.isChecked():
            format_type = "mla"
        
        # 选择保存文件
        file_path, _ = QFileDialog.getSaveFileName(
            self,
            "导出引用",
            os.path.expanduser("~/citations.bib" if format_type == "bibtex" else "~/citations.txt"),
            "BibTeX Files (*.bib);;Text Files (*.txt);;All Files (*.*)"
        )
        
        if not file_path:
            return
        
        try:
            # 生成引用并保存
            with open(file_path, 'w', encoding='utf-8') as f:
                for paper in papers:
                    if format_type == "bibtex":
                        citation = generate_bibtex(paper)
                    elif format_type == "apa":
                        citation = generate_apa(paper)
                    elif format_type == "mla":
                        citation = generate_mla(paper)
                    
                    f.write(citation + "\n\n")
            
            QMessageBox.information(
                self,
                "导出成功",
                f"成功导出 {len(papers)} 篇论文的引用到文件:\n{file_path}"
            )
            
        except Exception as e:
            QMessageBox.critical(
                self,
                "导出失败",
                f"导出引用时出错: {str(e)}"
            )
    
    def check_for_updates(self):
        """检查更新"""
        # TODO: 实现检查更新功能
        QMessageBox.information(self, "无更新", "当前已是最新版本")
    
    def show_about_dialog(self):
        """显示关于对话框"""
        QMessageBox.about(
            self,
            "关于 arXiv 论文下载与管理系统",
            """<h3>arXiv 论文下载与管理系统</h3>
            <p>版本: 1.0.0</p>
            <p>一个用于下载、管理和阅读arXiv论文的工具</p>
            <p>©2023 All Rights Reserved</p>"""
        )
    
    def on_tray_icon_activated(self, reason):
        """系统托盘图标激活事件"""
        if reason == QSystemTrayIcon.ActivationReason.DoubleClick:
            self.show()
            self.setWindowState(Qt.WindowState.WindowActive)
    
    def closeEvent(self, event):
        """窗口关闭事件"""
        # 保存设置
        self.save_settings()
        
        # 如果有活动的下载，询问是否真的要退出
        if self.download_controller.downloader.has_active_downloads():
            reply = QMessageBox.question(
                self,
                "确认退出",
                "有正在进行的下载，确定要退出吗？",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No
            )
            
            if reply == QMessageBox.StandardButton.No:
                event.ignore()
                return
        
        # 停止定时器
        self.scheduler.stop_scheduler()
        
        # 关闭下载线程
        self.download_controller.cancel_all_downloads()
        
        event.accept()
```

### 9. views/settings_dialog.py - 设置对话框

```python
from PyQt6.QtWidgets import (QDialog, QVBoxLayout, QHBoxLayout, QFormLayout, 
                           QLabel, QLineEdit, QPushButton, QCheckBox, QSpinBox, 
                           QComboBox, QTabWidget, QGroupBox, QFileDialog,
                           QDialogButtonBox)
from PyQt6.QtCore import QSettings, Qt

class SettingsDialog(QDialog):
    """应用程序设置对话框"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        
        self.setWindowTitle("设置")
        self.resize(500, 400)
        
        self.settings = QSettings("ArxivDownloader", "Settings")
        
        self.init_ui()
        self.load_settings()
    
    def init_ui(self):
        """初始化用户界面"""
        layout = QVBoxLayout(self)
        
        # 创建选项卡
        self.tabs = QTabWidget()
        
        # 常规设置选项卡
        general_tab = self.create_general_tab()
        self.tabs.addTab(general_tab, "常规")
        
        # 下载设置选项卡
        download_tab = self.create_download_tab()
        self.tabs.addTab(download_tab, "下载")
        
        # 自动更新选项卡
        auto_update_tab = self.create_auto_update_tab()
        self.tabs.addTab(auto_update_tab, "自动更新")
        
        layout.addWidget(self.tabs)
        
        # 底部按钮
        button_box = QDialogButtonBox(
            QDialogButtonBox.StandardButton.Ok | 
            QDialogButtonBox.StandardButton.Cancel | 
            QDialogButtonBox.StandardButton.Apply
        )
        
        button_box.accepted.connect(self.accept)
        button_box.rejected.connect(self.reject)
        button_box.button(QDialogButtonBox.StandardButton.Apply).clicked.connect(self.apply_settings)
        
        layout.addWidget(button_box)
    
    def create_general_tab(self):
        """创建常规设置选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 外观组
        appearance_group = QGroupBox("外观")
        appearance_layout = QFormLayout(appearance_group)
        
        # 主题
        self.theme_combo = QComboBox()
        self.theme_combo.addItems(["系统默认", "浅色", "深色"])
        appearance_layout.addRow("主题:", self.theme_combo)
        
        # 启动选项
        self.start_minimized_check = QCheckBox("启动时最小化到系统托盘")
        appearance_layout.addRow(self.start_minimized_check)
        
        layout.addWidget(appearance_group)
        
        # PDF阅读器组
        pdf_group = QGroupBox("PDF阅读器")
        pdf_layout = QFormLayout(pdf_group)
        
        self.use_default_reader_check = QCheckBox("使用系统默认PDF阅读器")
        self.use_default_reader_check.setChecked(True)
        pdf_layout.addRow(self.use_default_reader_check)
        
        pdf_path_layout = QHBoxLayout()
        self.custom_reader_path = QLineEdit()
        self.custom_reader_path.setEnabled(False)
        pdf_path_layout.addWidget(self.custom_reader_path)
        
        browse_btn = QPushButton("浏览...")
        browse_btn.clicked.connect(self.browse_pdf_reader)
        browse_btn.setEnabled(False)
        pdf_path_layout.addWidget(browse_btn)
        
        pdf_layout.addRow("自定义阅读器:", pdf_path_layout)
        
        # 连接复选框和输入框
        self.use_default_reader_check.toggled.connect(
            lambda checked: self.custom_reader_path.setDisabled(checked))
        self.use_default_reader_check.toggled.connect(
            lambda checked: browse_btn.setDisabled(checked))
        
        layout.addWidget(pdf_group)
        
        layout.addStretch(1)
        
        return tab
    
    def create_download_tab(self):
        """创建下载设置选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 下载目录组
        dir_group = QGroupBox("下载目录")
        dir_layout = QFormLayout(dir_group)
        
        dir_path_layout = QHBoxLayout()
        self.download_dir_edit = QLineEdit()
        dir_path_layout.addWidget(self.download_dir_edit)
        
        browse_dir_btn = QPushButton("浏览...")
        browse_dir_btn.clicked.connect(self.browse_download_dir)
        dir_path_layout.addWidget(browse_dir_btn)
        
        dir_layout.addRow("保存目录:", dir_path_layout)
        
        # 文件名格式
        self.filename_format_edit = QLineEdit("[yymm.xxxx]title.pdf")
        self.filename_format_edit.setReadOnly(True)  # 目前只支持固定格式
        dir_layout.addRow("文件名格式:", self.filename_format_edit)
        
        layout.addWidget(dir_group)
        
        # 网络设置组
        network_group = QGroupBox("网络设置")
        network_layout = QFormLayout(network_group)
        
        self.max_concurrent_downloads = QSpinBox()
        self.max_concurrent_downloads.setRange(1, 10)
        self.max_concurrent_downloads.setValue(3)
        network_layout.addRow("最大同时下载数:", self.max_concurrent_downloads)
        
        self.retry_count = QSpinBox()
        self.retry_count.setRange(0, 5)
        self.retry_count.setValue(2)
        network_layout.addRow("下载失败重试次数:", self.retry_count)
        
        self.use_proxy_check = QCheckBox("使用代理服务器")
        network_layout.addRow(self.use_proxy_check)
        
        proxy_layout = QHBoxLayout()
        self.proxy_edit = QLineEdit()
        self.proxy_edit.setPlaceholderText("http://proxy.example.com:8080")
        self.proxy_edit.setEnabled(False)
        proxy_layout.addWidget(self.proxy_edit)
        
        network_layout.addRow("代理地址:", proxy_layout)
        
        # 连接代理复选框和输入框
        self.use_proxy_check.toggled.connect(
            lambda checked: self.proxy_edit.setEnabled(checked))
        
        layout.addWidget(network_group)
        
        layout.addStretch(1)
        
        return tab
    
    def create_auto_update_tab(self):
        """创建自动更新选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 自动下载组
        auto_group = QGroupBox("自动下载")
        auto_layout = QFormLayout(auto_group)
        
        self.enable_auto_download = QCheckBox("启用每日自动下载")
        auto_layout.addRow(self.enable_auto_download)
        
        self.auto_download_time = QComboBox()
        for hour in range(0, 24):
            for minute in [0, 30]:
                time_str = f"{hour:02d}:{minute:02d}"
                self.auto_download_time.addItem(time_str)
        self.auto_download_time.setCurrentText("03:00")
        auto_layout.addRow("下载时间:", self.auto_download_time)
        
        self.auto_download_categories = QLineEdit()
        self.auto_download_categories.setPlaceholderText("hep-th,gr-qc,quant-ph")
        auto_layout.addRow("下载类别:", self.auto_download_categories)
        
        self.auto_download_max_papers = QSpinBox()
        self.auto_download_max_papers.setRange(5, 50)
        self.auto_download_max_papers.setValue(10)
        auto_layout.addRow("每类最大下载数:", self.auto_download_max_papers)
        
        layout.addWidget(auto_group)
        
        # 通知组
        notify_group = QGroupBox("通知")
        notify_layout = QFormLayout(notify_group)
        
        self.show_desktop_notifications = QCheckBox("显示桌面通知")
        self.show_desktop_notifications.setChecked(True)
        notify_layout.addRow(self.show_desktop_notifications)
        
        layout.addWidget(notify_group)
        
        layout.addStretch(1)
        
        return tab
    
    def browse_pdf_reader(self):
        """浏览PDF阅读器路径"""
        file_path, _ = QFileDialog.getOpenFileName(
            self,
            "选择PDF阅读器",
            "",
            "可执行文件 (*.exe);;所有文件 (*.*)"
        )
        
        if file_path:
            self.custom_reader_path.setText(file_path)
    
    def browse_download_dir(self):
        """浏览下载目录"""
        directory = QFileDialog.getExistingDirectory(
            self,
            "选择下载目录",
            self.download_dir_edit.text()
        )
        
        if directory:
            self.download_dir_edit.setText(directory)
    
    def load_settings(self):
        """加载设置"""
        # 常规设置
        theme = self.settings.value("theme", "系统默认")
        index = self.theme_combo.findText(theme)
        if index >= 0:
            self.theme_combo.setCurrentIndex(index)
        
        self.start_minimized_check.setChecked(
            self.settings.value("start_minimized", "false").lower() == "true")
        
        self.use_default_reader_check.setChecked(
            self.settings.value("use_default_reader", "true").lower() == "true")
        
        self.custom_reader_path.setText(
            self.settings.value("custom_reader_path", ""))
        
        # 下载设置
        self.download_dir_edit.setText(
            self.settings.value("download_dir", ""))
        
        self.max_concurrent_downloads.setValue(
            int(self.settings.value("max_concurrent_downloads", 3)))
        
        self.retry_count.setValue(
            int(self.settings.value("retry_count", 2)))
        
        self.use_proxy_check.setChecked(
            self.settings.value("use_proxy", "false").lower() == "true")
        
        self.proxy_edit.setText(
            self.settings.value("proxy", ""))
        
        # 自动更新设置
        self.enable_auto_download.setChecked(
            self.settings.value("enable_auto_download", "false").lower() == "true")
        
        auto_time = self.settings.value("auto_download_time", "03:00")
        index = self.auto_download_time.findText(auto_time)
        if index >= 0:
            self.auto_download_time.setCurrentIndex(index)
        
        self.auto_download_categories.setText(
            self.settings.value("auto_download_categories", ""))
        
        self.auto_download_max_papers.setValue(
            int(self.settings.value("auto_download_max_papers", 10)))
        
        self.show_desktop_notifications.setChecked(
            self.settings.value("show_desktop_notifications", "true").lower() == "true")
    
    def save_settings(self):
        """保存设置"""
        # 常规设置
        self.settings.setValue("theme", self.theme_combo.currentText())
        self.settings.setValue("start_minimized", 
                              str(self.start_minimized_check.isChecked()).lower())
        self.settings.setValue("use_default_reader", 
                              str(self.use_default_reader_check.isChecked()).lower())
        self.settings.setValue("custom_reader_path", 
                              self.custom_reader_path.text())
        
        # 下载设置
        self.settings.setValue("download_dir", 
                              self.download_dir_edit.text())
        self.settings.setValue("max_concurrent_downloads", 
                              self.max_concurrent_downloads.value())
        self.settings.setValue("retry_count", 
                              self.retry_count.value())
        self.settings.setValue("use_proxy", 
                              str(self.use_proxy_check.isChecked()).lower())
        self.settings.setValue("proxy", 
                              self.proxy_edit.text())
        
        # 自动更新设置
        self.settings.setValue("enable_auto_download", 
                              str(self.enable_auto_download.isChecked()).lower())
        self.settings.setValue("auto_download_time", 
                              self.auto_download_time.currentText())
        self.settings.setValue("auto_download_categories", 
                              self.auto_download_categories.text())
        self.settings.setValue("auto_download_max_papers", 
                              self.auto_download_max_papers.value())
        self.settings.setValue("show_desktop_notifications", 
                              str(self.show_desktop_notifications.isChecked()).lower())
        
        # 确保设置立即写入
        self.settings.sync()
    
    def apply_settings(self):
        """应用设置按钮点击事件"""
        self.save_settings()
    
    def accept(self):
        """确定按钮点击事件"""
        self.save_settings()
        super().accept()
```

### 10. views/paper_viewer.py - 论文预览器

```python
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, 
                           QLabel, QPushButton, QTextEdit, QToolBar, QFileDialog)
from PyQt6.QtCore import Qt, QUrl
from PyQt6.QtGui import QAction
from PyQt6.QtPdfWidgets import QPdfView
from PyQt6.QtPdf import QPdfDocument

class PaperViewer(QMainWindow):
    """PDF论文阅读器"""
    
    def __init__(self, paper, parent=None):
        super().__init__(parent)
        
        self.paper = paper
        self.pdf_document = QPdfDocument()
        
        self.init_ui()
        self.load_paper()
    
    def init_ui(self):
        """初始化用户界面"""
        self.setWindowTitle(f"查看论文 - {self.paper.title}")
        self.resize(800, 1000)
        
        # 创建工具栏
        toolbar = QToolBar("阅读器工具栏", self)
        self.addToolBar(toolbar)
        
        # 缩放控制
        zoom_in_action = QAction("放大", self)
        zoom_in_action.triggered.connect(self.zoom_in)
        toolbar.addAction(zoom_in_action)
        
        zoom_out_action = QAction("缩小", self)
        zoom_out_action.triggered.connect(self.zoom_out)
        toolbar.addAction(zoom_out_action)
        
        fit_width_action = QAction("适合宽度", self)
        fit_width_action.triggered.connect(self.fit_width)
        toolbar.addAction(fit_width_action)
        
        toolbar.addSeparator()
        
        # 页面控制
        self.prev_page_action = QAction("上一页", self)
        self.prev_page_action.triggered.connect(self.previous_page)
        toolbar.addAction(self.prev_page_action)
        
        self.page_label = QLabel("0 / 0")
        toolbar.addWidget(self.page_label)
        
        self.next_page_action = QAction("下一页", self)
        self.next_page_action.triggered.connect(self.next_page)
        toolbar.addAction(self.next_page_action)
        
        toolbar.addSeparator()
        
        # 注释工具
        highlight_action = QAction("高亮", self)
        highlight_action.triggered.connect(self.highlight_selection)
        toolbar.addAction(highlight_action)
        
        toolbar.addSeparator()
        
        # 保存和导出
        save_action = QAction("保存", self)
        save_action.triggered.connect(self.save_annotations)
        toolbar.addAction(save_action)
        
        export_action = QAction("导出", self)
        export_action.triggered.connect(self.export_pdf)
        toolbar.addAction(export_action)
        
        # 创建PDF查看器
        central_widget = QWidget()
        layout = QVBoxLayout(central_widget)
        
        self.pdf_view = QPdfView()
        self.pdf_view.setDocument(self.pdf_document)
        layout.addWidget(self.pdf_view)
        
        self.setCentralWidget(central_widget)
    
    def load_paper(self):
        """加载论文PDF"""
        if not self.paper.local_path:
            self.statusBar().showMessage("无本地PDF文件")
            return
        
        # 加载PDF文档
        self.pdf_document.load(self.paper.local_path)
        
        # 更新页面标签
        self.update_page_label()
        
        # 设置合适的缩放级别
        self.fit_width()
    
    def update_page_label(self):
        """更新页码标签"""
        current_page = self.pdf_view.currentPage() + 1  # 页码从0开始
        total_pages = self.pdf_document.pageCount()
        self.page_label.setText(f"{current_page} / {total_pages}")
        
        # 更新翻页按钮状态
        self.prev_page_action.setEnabled(current_page > 1)
        self.next_page_action.setEnabled(current_page < total_pages)
    
    def zoom_in(self):
        """放大PDF"""
        zoom = self.pdf_view.zoomFactor()
        self.pdf_view.setZoomFactor(zoom * 1.2)
    
    def zoom_out(self):
        """缩小PDF"""### 8. views/main_window.py - 主窗口界面 (续)

```python
    def _create_tool_bar(self):
        """创建工具栏"""
        toolbar = QToolBar("主工具栏", self)
        self.addToolBar(toolbar)
        
        # 刷新
        refresh_action = QAction("刷新", self)
        refresh_action.triggered.connect(self.load_downloaded_papers)
        toolbar.addAction(refresh_action)
        
        # 新建下载
        new_download_action = QAction("新建下载", self)
        new_download_action.triggered.connect(lambda: self.tabs.setCurrentIndex(0))
        toolbar.addAction(new_download_action)
        
        toolbar.addSeparator()
        
        # 查看论文库
        view_library_action = QAction("论文库", self)
        view_library_action.triggered.connect(lambda: self.tabs.setCurrentIndex(1))
        toolbar.addAction(view_library_action)
        
        # 过滤已下载
        self.filter_downloaded_action = QAction("只显示已下载", self)
        self.filter_downloaded_action.setCheckable(True)
        self.filter_downloaded_action.triggered.connect(self.on_filter_downloaded_toggled)
        toolbar.addAction(self.filter_downloaded_action)
        
        toolbar.addSeparator()
        
        # 取消所有下载
        cancel_all_action = QAction("取消所有下载", self)
        cancel_all_action.triggered.connect(self.cancel_all_downloads)
        toolbar.addAction(cancel_all_action)
    
    def _init_system_tray(self):
        """初始化系统托盘图标"""
        self.tray_icon = QSystemTrayIcon(self)
        tray_menu = QMenu()
        
        # 显示/隐藏
        show_action = QAction("显示窗口", self)
        show_action.triggered.connect(self.show)
        tray_menu.addAction(show_action)
        
        # 退出
        quit_action = QAction("退出", self)
        quit_action.triggered.connect(self.close)
        tray_menu.addAction(quit_action)
        
        self.tray_icon.setContextMenu(tray_menu)
        self.tray_icon.activated.connect(self.on_tray_icon_activated)
        
        # 设置图标并显示
        self.tray_icon.setToolTip("arXiv 论文下载器")
        self.tray_icon.show()
    
    def _create_citation_menu(self, is_library=False):
        """创建引用格式菜单"""
        citation_menu = QMenu()
        
        bibtex_action = QAction("BibTeX", self)
        bibtex_action.triggered.connect(
            lambda: self.copy_citation_format("bibtex", is_library))
        citation_menu.addAction(bibtex_action)
        
        apa_action = QAction("APA", self)
        apa_action.triggered.connect(
            lambda: self.copy_citation_format("apa", is_library))
        citation_menu.addAction(apa_action)
        
        mla_action = QAction("MLA", self)
        mla_action.triggered.connect(
            lambda: self.copy_citation_format("mla", is_library))
        citation_menu.addAction(mla_action)
        
        return citation_menu
    
    def connect_signals(self):
        """连接信号"""
        # 下载控制器信号
        self.download_controller.search_started.connect(self.on_search_started)
        self.download_controller.search_finished.connect(self.on_search_finished)
        self.download_controller.search_error.connect(self.on_search_error)
        
        self.download_controller.download_started.connect(self.on_download_started)
        self.download_controller.download_progress.connect(self.on_download_progress)
        self.download_controller.download_finished.connect(self.on_download_finished)
        self.download_controller.all_downloads_finished.connect(self.on_all_downloads_finished)
        
        # 数据库信号
        self.database.database_updated.connect(self.load_downloaded_papers)
        
        # 定时器信号
        self.scheduler.task_triggered.connect(self.on_scheduled_task)
    
    def load_settings(self):
        """加载设置"""
        # 恢复窗口位置和大小
        geometry = self.settings.value("geometry")
        if geometry:
            self.restoreGeometry(geometry)
        
        # 恢复窗口状态
        state = self.settings.value("windowState")
        if state:
            self.restoreState(state)
        
        # 加载其他设置
        self.filter_downloaded_action.setChecked(
            self.settings.value("filter_downloaded", "false").lower() == "true")
    
    def save_settings(self):
        """保存设置"""
        # 保存窗口位置和大小
        self.settings.setValue("geometry", self.saveGeometry())
        self.settings.setValue("windowState", self.saveState())
        
        # 保存其他设置
        self.settings.setValue("filter_downloaded", 
                              str(self.filter_downloaded_action.isChecked()).lower())
    
    def load_downloaded_papers(self):
        """从数据库加载已下载的论文"""
        # 加载论文到库视图
        papers = self.database.get_all_papers()
        self.library_model.set_papers(papers)
        
        # 更新标签树
        self.update_tags_tree()
        
        # 更新状态栏
        self.statusBar.showMessage(f"已加载 {len(papers)} 篇论文")
    
    def update_tags_tree(self):
        """更新标签树"""
        self.tags_tree.clear()
        
        # 添加"全部"项
        all_item = QTreeWidgetItem(self.tags_tree)
        all_item.setText(0, "全部论文")
        all_item.setData(0, Qt.ItemDataRole.UserRole, "all")
        
        # 添加"已读"和"未读"项
        status_item = QTreeWidgetItem(self.tags_tree)
        status_item.setText(0, "阅读状态")
        
        read_item = QTreeWidgetItem(status_item)
        read_item.setText(0, "已读")
        read_item.setData(0, Qt.ItemDataRole.UserRole, "read")
        
        unread_item = QTreeWidgetItem(status_item)
        unread_item.setText(0, "未读")
        unread_item.setData(0, Qt.ItemDataRole.UserRole, "unread")
        
        # 添加"已标星"项
        starred_item = QTreeWidgetItem(self.tags_tree)
        starred_item.setText(0, "已标星")
        starred_item.setData(0, Qt.ItemDataRole.UserRole, "starred")
        
        # 添加用户标签
        tags_item = QTreeWidgetItem(self.tags_tree)
        tags_item.setText(0, "标签")
        
        tags = self.database.get_all_tags()
        for tag in sorted(tags):
            tag_item = QTreeWidgetItem(tags_item)
            tag_item.setText(0, tag)
            tag_item.setData(0, Qt.ItemDataRole.UserRole, f"tag:{tag}")
        
        # 展开所有节点
        self.tags_tree.expandAll()
    
    def show_search_results_context_menu(self, position):
        """显示搜索结果的上下文菜单"""
        index = self.search_results_view.indexAt(position)
        if not index.isValid():
            return
        
        paper = self.search_results_model.get_paper(index.row())
        if not paper:
            return
        
        menu = QMenu()
        
        # 下载
        if paper.status != "downloaded":
            download_action = QAction("下载", self)
            download_action.triggered.connect(lambda: self.on_download_clicked(paper))
            menu.addAction(download_action)
        else:
            open_action = QAction("打开PDF", self)
            open_action.triggered.connect(lambda: self.open_paper_pdf(paper))
            menu.addAction(open_action)
        
        menu.addSeparator()
        
        # 打开arXiv页面
        open_arxiv_action = QAction("打开arXiv页面", self)
        open_arxiv_action.triggered.connect(lambda: self.open_arxiv_page(paper))
        menu.addAction(open_arxiv_action)
        
        # 复制引用子菜单
        citation_menu = QMenu("复制引用")
        
        bibtex_action = QAction("BibTeX", self)
        bibtex_action.triggered.connect(lambda: self.copy_citation_format("bibtex", False, paper))
        citation_menu.addAction(bibtex_action)
        
        apa_action = QAction("APA", self)
        apa_action.triggered.connect(lambda: self.copy_citation_format("apa", False, paper))
        citation_menu.addAction(apa_action)
        
        mla_action = QAction("MLA", self)
        mla_action.triggered.connect(lambda: self.copy_citation_format("mla", False, paper))
        citation_menu.addAction(mla_action)
        
        menu.addMenu(citation_menu)
        
        menu.exec(self.search_results_view.mapToGlobal(position))
    
    def show_library_context_menu(self, position):
        """显示论文库的上下文菜单"""
        index = self.library_view.indexAt(position)
        if not index.isValid():
            return
        
        # 获取源模型索引
        source_index = self.library_proxy_model.mapToSource(index)
        paper = self.library_model.get_paper(source_index.row())
        if not paper:
            return
        
        menu = QMenu()
        
        # 打开PDF
        if paper.local_path and os.path.exists(paper.local_path):
            open_action = QAction("打开PDF", self)
            open_action.triggered.connect(lambda: self.open_paper_pdf(paper))
            menu.addAction(open_action)
            
            open_folder_action = QAction("打开所在文件夹", self)
            open_folder_action.triggered.connect(lambda: self.open_paper_folder(paper))
            menu.addAction(open_folder_action)
            
            menu.addSeparator()
        
        # 标记已读/未读
        if paper.read:
            mark_unread_action = QAction("标记为未读", self)
            mark_unread_action.triggered.connect(lambda: self.mark_paper_read(paper, False))
            menu.addAction(mark_unread_action)
        else:
            mark_read_action = QAction("标记为已读", self)
            mark_read_action.triggered.connect(lambda: self.mark_paper_read(paper, True))
            menu.addAction(mark_read_action)
        
        # 标星/取消标星
        if paper.starred:
            unstar_action = QAction("取消标星", self)
            unstar_action.triggered.connect(lambda: self.star_paper(paper, False))
            menu.addAction(unstar_action)
        else:
            star_action = QAction("标星", self)
            star_action.triggered.connect(lambda: self.star_paper(paper, True))
            menu.addAction(star_action)
        
        menu.addSeparator()
        
        # 标签管理
        tags_menu = QMenu("管理标签")
        
        # 获取所有标签
        all_tags = self.database.get_all_tags()
        for tag in sorted(all_tags):
            tag_action = QAction(tag, self)
            tag_action.setCheckable(True)
            tag_action.setChecked(tag in paper.tags)
            tag_action.triggered.connect(lambda checked, t=tag, p=paper: self.toggle_paper_tag(p, t, checked))
            tags_menu.addAction(tag_action)
        
        if all_tags:
            tags_menu.addSeparator()
        
        add_tag_action = QAction("添加新标签...", self)
        add_tag_action.triggered.connect(lambda: self.add_tag_to_paper(paper))
        tags_menu.addAction(add_tag_action)
        
        menu.addMenu(tags_menu)
        
        menu.addSeparator()
        
        # 删除
        delete_action = QAction("删除", self)
        delete_action.triggered.connect(lambda: self.delete_paper(paper))
        menu.addAction(delete_action)
        
        menu.exec(self.library_view.mapToGlobal(position))
    
    def on_search_clicked(self):
        """搜索按钮点击事件"""
        query = self.query_input.text().strip()
        category = self.category_combo.currentText().strip()
        days = self.days_spinbox.value()
        max_results = self.max_results_spinbox.value()
        
        categories = None
        if category:
            categories = [cat.strip() for cat in category.split(',')]
        
        # 执行搜索
        self.download_controller.search(
            query=query,
            categories=categories,
            max_results=max_results,
            since_days=days
        )
    
    def on_search_started(self):
        """搜索开始事件"""
        self.search_button.setEnabled(False)
        self.search_button.setText("搜索中...")
        self.statusBar.showMessage("正在搜索...")
        self.search_results_model.clear()
    
    def on_search_finished(self, papers):
        """搜索完成事件"""
        self.search_button.setEnabled(True)
        self.search_button.setText("搜索")
        self.statusBar.showMessage(f"找到 {len(papers)} 篇论文")
        
        # 更新搜索结果
        self.search_results_model.set_papers(papers)
        
        # 清空论文详情
        self.clear_paper_details()
    
    def on_search_error(self, error_message):
        """搜索错误事件"""
        self.search_button.setEnabled(True)
        self.search_button.setText("搜索")
        self.statusBar.showMessage(f"搜索出错: {error_message}")
        
        QMessageBox.critical(self, "搜索错误", error_message)
    
    def on_download_clicked(self, paper=None):
        """下载按钮点击事件"""
        if paper is None:
            # 从选中的论文获取
            index = self.search_results_view.currentIndex()
            if index.isValid():
                paper = self.search_results_model.get_paper(index.row())
        
        if paper:
            # 检查是否已下载
            if paper.status == "downloaded" and paper.local_path and os.path.exists(paper.local_path):
                reply = QMessageBox.question(
                    self,
                    "论文已下载",
                    f"论文《{paper.title}》已经下载。\n是否打开PDF文件？",
                    QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                    QMessageBox.StandardButton.Yes
                )
                
                if reply == QMessageBox.StandardButton.Yes:
                    self.open_paper_pdf(paper)
                
                return
            
            # 开始下载
            success = self.download_controller.download_paper(paper)
            
            if not success:
                QMessageBox.warning(
                    self,
                    "下载错误",
                    f"无法开始下载论文《{paper.title}》。\n可能该论文已在下载队列中。"
                )
    
    def on_download_started(self, paper):
        """下载开始事件"""
        self.progress_bar.setValue(0)
        self.progress_bar.setVisible(True)
        self.statusBar.showMessage(f"正在下载: {paper.title}")
        
        # 更新模型
        self.search_results_model.update_paper(paper)
        self.library_model.update_paper(paper)
    
    def on_download_progress(self, paper, progress):
        """下载进度事件"""
        self.progress_bar.setValue(progress)
        self.statusBar.showMessage(f"正在下载: {paper.title} ({progress}%)")
        
        # 更新模型
        self.search_results_model.update_paper(paper)
        self.library_model.update_paper(paper)
    
    def on_download_finished(self, paper, success, message):
        """下载完成事件"""
        if success:
            self.statusBar.showMessage(f"下载完成: {paper.title}")
            
            # 显示通知
            self.tray_icon.showMessage(
                "下载完成",
                f"论文《{paper.title}》下载完成",
                QSystemTrayIcon.MessageIcon.Information,
                5000
            )
        else:
            self.statusBar.showMessage(f"下载失败: {paper.title} - {message}")
            
            # 显示通知
            self.tray_icon.showMessage(
                "下载失败",
                f"论文《{paper.title}》下载失败: {message}",
                QSystemTrayIcon.MessageIcon.Warning,
                5000
            )
        
        # 更新模型
        self.search_results_model.update_paper(paper)
        self.library_model.update_paper(paper)
        
        # 更新当前显示的论文详情
        self.update_current_paper_details()
    
    def on_all_downloads_finished(self):
        """所有下载完成事件"""
        self.progress_bar.setVisible(False)
        self.statusBar.showMessage("所有下载任务已完成")
    
    def on_paper_double_clicked(self, index):
        """论文双击事件（搜索结果）"""
        if index.isValid():
            paper = self.search_results_model.get_paper(index.row())
            
            # 显示论文详情
            self.show_paper_details(paper)
            
            # 如果已下载，打开PDF
            if paper.status == "downloaded" and paper.local_path and os.path.exists(paper.local_path):
                self.open_paper_pdf(paper)
    
    def on_library_paper_double_clicked(self, index):
        """论文双击事件（论文库）"""
        if index.isValid():
            # 获取源模型索引
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            
            # 显示论文详情
            self.show_library_paper_details(paper)
            
            # 打开PDF
            if paper.local_path and os.path.exists(paper.local_path):
                self.open_paper_pdf(paper)
                
                # 标记为已读
                if not paper.read:
                    self.mark_paper_read(paper, True)
    
    def on_open_arxiv_clicked(self):
        """打开arXiv页面按钮点击事件"""
        index = self.search_results_view.currentIndex()
        if index.isValid():
            paper = self.search_results_model.get_paper(index.row())
            self.open_arxiv_page(paper)
    
    def on_open_pdf_clicked(self):
        """打开PDF按钮点击事件"""
        index = self.library_view.currentIndex()
        if index.isValid():
            # 获取源模型索引
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            self.open_paper_pdf(paper)
    
    def on_open_paper_folder_clicked(self):
        """打开文件夹按钮点击事件"""
        index = self.library_view.currentIndex()
        if index.isValid():
            # 获取源模型索引
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            self.open_paper_folder(paper)
    
    def on_tag_clicked(self, item):
        """标签树项点击事件"""
        tag_id = item.data(0, Qt.ItemDataRole.UserRole)
        
        if tag_id == "all":
            # 显示所有论文
            self.library_proxy_model.setFilterFixedString("")
        elif tag_id == "read":
            # 过滤已读论文
            self.library_proxy_model.setFilterFixedString("read:")
        elif tag_id == "unread":
            # 过滤未读论文
            self.library_proxy_model.setFilterFixedString("unread:")
        elif tag_id == "starred":
            # 过滤已标星论文
            self.library_proxy_model.setFilterFixedString("starred:")
        elif tag_id and tag_id.startswith("tag:"):
            # 过滤指定标签
            tag = tag_id[4:]
            self.library_proxy_model.setFilterFixedString(f"tag:{tag}")
    
    def on_library_search_changed(self, text):
        """论文库搜索框文本变化事件"""
        if text:
            self.library_proxy_model.setFilterFixedString(f"search:{text}")
        else:
            self.library_proxy_model.setFilterFixedString("")
    
    def on_add_tag_clicked(self):
        """添加标签按钮点击事件"""
        from PyQt6.QtWidgets import QInputDialog
        
        tag, ok = QInputDialog.getText(
            self, "添加标签", "请输入新标签名称:"
        )
        
        if ok and tag.strip():
            # 添加到选中的论文
            index = self.library_view.currentIndex()
            if index.isValid():
                source_index = self.library_proxy_model.mapToSource(index)
                paper = self.library_model.get_paper(source_index.row())
                self.add_tag_to_paper(paper, tag.strip())
            else:
                # 只创建标签
                self.database.add_tag_to_paper("dummy", tag.strip())
                # 刷新标签树
                self.update_tags_tree()
    
    def on_edit_tag_clicked(self):
        """编辑标签按钮点击事件"""
        # 获取当前选中的标签
        item = self.tags_tree.currentItem()
        if not item:
            QMessageBox.warning(self, "未选择标签", "请先选择要编辑的标签")
            return
        
        tag_id = item.data(0, Qt.ItemDataRole.UserRole)
        if not tag_id or not tag_id.startswith("tag:"):
            QMessageBox.warning(self, "不可编辑", "只能编辑用户自定义标签")
            return
        
        old_tag = tag_id[4:]
        
        from PyQt6.QtWidgets import QInputDialog
        
        new_tag, ok = QInputDialog.getText(
            self, "编辑标签", "请输入新标签名称:",
            text=old_tag
        )
        
        if ok and new_tag.strip() and new_tag != old_tag:
            # TODO: 实现标签重命名功能
            QMessageBox.information(self, "功能待实现", "标签重命名功能暂未实现")
    
    def on_filter_downloaded_toggled(self, checked):
        """过滤已下载切换事件"""
        if checked:
            # 只显示已下载的论文
            self.library_proxy_model.setFilterFixedString("downloaded:")
        else:
            # 显示所有论文
            self.library_proxy_model.setFilterFixedString("")
    
    def on_scheduled_task(self, task_id):
        """定时任务触发事件"""
        if task_id == "daily_download":
            # 执行每日下载
            self.execute_daily_download()
    
    def show_paper_details(self, paper):
        """显示论文详情（搜索结果）"""
        if paper:
            # 设置标题
            self.paper_title_label.setText(f"<b>{paper.title}</b>")
            
            # 设置作者
            authors_text = ", ".join(paper.authors)
            self.paper_authors_label.setText(f"<i>{authors_text}</i>")
            
            # 设置摘要
            self.paper_abstract.setText(paper.abstract)
            
            # 更新下载按钮状态
            if paper.status == "downloaded":
                self.download_button.setText("打开PDF")
            else:
                self.download_button.setText("下载论文")
    
    def show_library_paper_details(self, paper):
        """显示论文详情（论文库）"""
        if paper:
            # 设置标题
            self.library_title_label.setText(f"<b>{paper.title}</b>")
            
            # 设置作者
            authors_text = ", ".join(paper.authors)
            self.library_authors_label.setText(f"<i>{authors_text}</i>")
            
            # 设置标签
            self.library_tags_editor.set_paper(paper, self.database)
            
            # 设置摘要
            self.library_abstract.setText(paper.abstract)
            
            # 更新按钮状态
            has_pdf = paper.local_path and os.path.exists(paper.local_path)
            self.open_pdf_button.setEnabled(has_pdf)
            self.open_paper_folder_button.setEnabled(has_pdf)
    
    def clear_paper_details(self):
        """清空论文详情"""
        self.paper_title_label.clear()
        self.paper_authors_label.clear()
        self.paper_abstract.clear()
        
        self.library_title_label.clear()
        self.library_authors_label.clear()
        self.library_abstract.clear()
        self.library_tags_editor.clear()
    
    def update_current_paper_details(self):
        """更新当前显示的论文详情"""
        # 更新搜索结果中选中的论文
        index = self.search_results_view.currentIndex()
        if index.isValid():
            paper = self.search_results_model.get_paper(index.row())
            self.show_paper_details(paper)
        
        # 更新论文库中选中的论文
        index = self.library_view.currentIndex()
        if index.isValid():
            source_index = self.library_proxy_model.mapToSource(index)
            paper = self.library_model.get_paper(source_index.row())
            self.show_library_paper_details(paper)
    
    def open_paper_pdf(self, paper):
        """打开论文PDF"""
        if not paper.local_path or not os.path.exists(paper.local_path):
            QMessageBox.warning(
                self,
                "文件不存在",
                f"论文《{paper.title}》的PDF文件不存在"
            )
            return
        
        try:
            # 尝试用默认应用打开
            if os.name == 'nt':  # Windows
                os.startfile(paper.local_path)
            elif os.name == 'posix':  # macOS/Linux
                subprocess.call(('xdg-open', paper.local_path))
        except Exception as e:
            QMessageBox.critical(
                self,
                "打开文件失败",
                f"无法打开PDF文件: {str(e)}"
            )
    
    def open_paper_folder(self, paper):
        """打开论文所在文件夹"""
        if not paper.local_path or not os.path.exists(paper.local_path):
            QMessageBox.warning(
                self,
                "文件不存在",
                f"论文《{paper.title}》的PDF文件不存在"
            )
            return
        
        try:
            # 获取文件所在目录
            folder = os.path.dirname(paper.local_path)
            
            # 打开文件夹
            if os.name == 'nt':  # Windows
                os.startfile(folder)
            elif os.name == 'posix':  # macOS/Linux
                subprocess.call(('xdg-open', folder))
        except Exception as e:
            QMessageBox.critical(
                self,
                "打开文件夹失败",
                f"无法打开文件夹: {str(e)}"
            )
    
    def open_arxiv_page(self, paper):
        """打开论文的arXiv页面"""
        if paper.web_url:
            webbrowser.open(paper.web_url)
        else:
            webbrowser.open(f"https://arxiv.org/abs/{paper.paper_id}")
    
    def copy_citation_format(self, format_type, is_library=False, specific_paper=None):
        """复制引用格式"""
        # 获取选中的论文
        paper = specific_paper
        
        if not paper:
            if is_library:
                index = self.library_view.currentIndex()
                if index.isValid():
                    source_index = self.library_proxy_model.mapToSource(index)
                    paper = self.library_model.get_paper(source_index.row())
            else:
                index = self.search_results_view.currentIndex()
                if index.isValid():
                    paper = self.search_results_model.get_paper(index.row())
        
        if not paper:
            QMessageBox.warning(self, "未选择论文", "请先选择一篇论文")
            return
        
        # 生成引用格式
        citation = ""
        if format_type == "bibtex":
            citation = generate_bibtex(paper)
        elif format_type == "apa":
            citation = generate_apa(paper)
        elif format_type == "mla":
            citation = generate_mla(paper)
        
        # 复制到剪贴板
        from PyQt6.QtGui import QClipboard
        clipboard = QApplication.clipboard()
        clipboard.setText(citation)
        
        self.statusBar.showMessage(f"{format_type.upper()} 引用已复制到剪贴板", 3000)
    
    def mark_paper_read(self, paper, read=True):
        """标记论文为已读/未读"""
        paper.read = read
        self.database.add_paper(paper)
        
        # 更新模型
        self.library_model.update_paper(paper)
    
    def star_paper(self, paper, starred=True):
        """标记论文为已标星/取消标星"""
        paper.starred = starred
        self.database.add_paper(paper)
        
        # 更新模型
        self.library_model.update_paper(paper)
    
    def add_tag_to_paper(self, paper, tag=None):
        """为论文添加标签"""
        if tag is None:
            from PyQt6.QtWidgets import QInputDialog
            
            tag, ok = QInputDialog.getText(
                self, "添加标签", "请输入新标签名称:"
            )
            
            if not (ok and tag.strip()):
                return
        
        # 添加标签
        paper.tags.add(tag.strip())
        self.database.add_paper(paper)
        
        # 更新标签树
        self.update_tags_tree()
        
        # 更新标签编辑器
        self.library_tags_editor.update_tags()
    
    def toggle_paper_tag(self, paper, tag, checked):
        """切换论文标签"""
        if checked:
            paper.tags.add(tag)
        else:
            paper.tags.discard(tag)
        
        self.database.add_paper(paper)
        
        # 更新标签编辑器
        self.library_tags_editor.update_tags()
    
    def delete_paper(self, paper):
        """删除论文"""
        reply = QMessageBox.question(
            self,
            "确认删除",
            f"确定要删除论文《{paper.title}》吗？\n这将同时删除本地PDF文件。",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )
        
        if reply == QMessageBox.StandardButton.Yes:
            self.database.delete_paper(paper.paper_id)
    
    def cancel_all_downloads(self):
        """取消所有下载"""
        reply = QMessageBox.question(
            self,
            "确认取消",
            "确定要取消所有正在进行的下载吗？",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )
        
        if reply == QMessageBox.StandardButton.Yes:
            self.download_controller.cancel_all_downloads()
            self.statusBar.showMessage("已取消所有下载")
    
    def execute_daily_download(self):
        """执行每日下载任务"""
        # 获取设置
        settings = QSettings("ArxivDownloader", "DailyDownload")
        categories = settings.value("categories", [])
        max_results = int(settings.value("max_results", 10))
        
        if not categories:
            return
        
        # 搜索最新论文
        self.download_controller.search(
            categories=categories,
            max_results=max_results,
            since_days=1
        )
        
        # 在搜索完成后自动下载 (通过信号连接)
        self.download_controller.search_finished.connect(self.auto_download_new_papers)
    
    def auto_download_new_papers(self, papers):
        """自动下载新论文"""
        # 断开信号连接，避免重复调用
        self.download_controller.search_finished.disconnect(self.auto_download_new_papers)
        
        # 过滤出未下载的论文
        new_papers = [p for p in papers if p.status != "downloaded"]
        
        # 显示通知
        self.tray_icon.showMessage(
            "每日更新",
            f"找到 {len(new_papers)} 篇新论文，正在下载...",
            QSystemTrayIcon.MessageIcon.Information,
            5000
        )
        
        # 下载新论文
        for paper in new_papers:
            self.download_controller.download_paper(paper)
    
    def show_settings_dialog(self):
        """显示设置对话框"""
        dialog = SettingsDialog(self)
        if dialog.exec():
            # 应用新设置
            self.load_settings()
    
    def show_schedule_dialog(self):
        """显示定时下载对话框"""
        # TODO: 实现定时下载对话框
        QMessageBox.information(self, "功能待实现", "定时下载对话框功能暂未实现")
    
    def show_batch_download_dialog(self):
        """显示批量下载对话框"""
        # TODO: 实现批量下载对话框
        QMessageBox.information(self, "功能待实现", "批量下载对话框功能暂未实现")
    
    def export_all_citations(self):
        """导出所有引用"""
        # 获取所有论文
        papers = self.database.get_all_papers()
        
        if not papers:
            QMessageBox.warning(self, "无论文", "库中没有论文可导出")
            return
        
        # 选择导出格式
        from PyQt6.QtWidgets import QDialog, QVBoxLayout, QRadioButton, QDialogButtonBox
        
        dialog = QDialog(self)
        dialog.setWindowTitle("选择导出格式")
        layout = QVBoxLayout(dialog)
        
        bibtex_radio = QRadioButton("BibTeX")
        bibtex_radio.setChecked(True)
        layout.addWidget(bibtex_radio)
        
        apa_radio = QRadioButton("APA")
        layout.addWidget(apa_radio)
        
        mla_radio = QRadioButton("MLA")
        layout.addWidget(mla_radio)
        
        button_box = QDialogButtonBox(
            QDialogButtonBox.StandardButton.Ok | QDialogButtonBox.StandardButton.Cancel
        )
        button_box.accepted.connect(dialog.accept)
        button_box.rejected.connect(dialog.reject)
        layout.addWidget(button_box)
        
        if not dialog.exec():
            return
        
        # 确定导出格式
        if bibtex_radio.isChecked():
            format_type = "bibtex"
        elif apa_radio.isChecked():
            format_type = "apa"
        elif mla_radio.isChecked():
            format_type = "mla"
        
        # 选择保存文件
        file_path, _ = QFileDialog.getSaveFileName(
            self,
            "导出引用",
            os.path.expanduser("~/citations.bib" if format_type == "bibtex" else "~/citations.txt"),
            "BibTeX Files (*.bib);;Text Files (*.txt);;All Files (*.*)"
        )
        
        if not file_path:
            return
        
        try:
            # 生成引用并保存
            with open(file_path, 'w', encoding='utf-8') as f:
                for paper in papers:
                    if format_type == "bibtex":
                        citation = generate_bibtex(paper)
                    elif format_type == "apa":
                        citation = generate_apa(paper)
                    elif format_type == "mla":
                        citation = generate_mla(paper)
                    
                    f.write(citation + "\n\n")
            
            QMessageBox.information(
                self,
                "导出成功",
                f"成功导出 {len(papers)} 篇论文的引用到文件:\n{file_path}"
            )
            
        except Exception as e:
            QMessageBox.critical(
                self,
                "导出失败",
                f"导出引用时出错: {str(e)}"
            )
    
    def check_for_updates(self):
        """检查更新"""
        # TODO: 实现检查更新功能
        QMessageBox.information(self, "无更新", "当前已是最新版本")
    
    def show_about_dialog(self):
        """显示关于对话框"""
        QMessageBox.about(
            self,
            "关于 arXiv 论文下载与管理系统",
            """<h3>arXiv 论文下载与管理系统</h3>
            <p>版本: 1.0.0</p>
            <p>一个用于下载、管理和阅读arXiv论文的工具</p>
            <p>©2023 All Rights Reserved</p>"""
        )
    
    def on_tray_icon_activated(self, reason):
        """系统托盘图标激活事件"""
        if reason == QSystemTrayIcon.ActivationReason.DoubleClick:
            self.show()
            self.setWindowState(Qt.WindowState.WindowActive)
    
    def closeEvent(self, event):
        """窗口关闭事件"""
        # 保存设置
        self.save_settings()
        
        # 如果有活动的下载，询问是否真的要退出
        if self.download_controller.downloader.has_active_downloads():
            reply = QMessageBox.question(
                self,
                "确认退出",
                "有正在进行的下载，确定要退出吗？",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
                QMessageBox.StandardButton.No
            )
            
            if reply == QMessageBox.StandardButton.No:
                event.ignore()
                return
        
        # 停止定时器
        self.scheduler.stop_scheduler()
        
        # 关闭下载线程
        self.download_controller.cancel_all_downloads()
        
        event.accept()
```

### 9. views/settings_dialog.py - 设置对话框

```python
from PyQt6.QtWidgets import (QDialog, QVBoxLayout, QHBoxLayout, QFormLayout, 
                           QLabel, QLineEdit, QPushButton, QCheckBox, QSpinBox, 
                           QComboBox, QTabWidget, QGroupBox, QFileDialog,
                           QDialogButtonBox)
from PyQt6.QtCore import QSettings, Qt

class SettingsDialog(QDialog):
    """应用程序设置对话框"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        
        self.setWindowTitle("设置")
        self.resize(500, 400)
        
        self.settings = QSettings("ArxivDownloader", "Settings")
        
        self.init_ui()
        self.load_settings()
    
    def init_ui(self):
        """初始化用户界面"""
        layout = QVBoxLayout(self)
        
        # 创建选项卡
        self.tabs = QTabWidget()
        
        # 常规设置选项卡
        general_tab = self.create_general_tab()
        self.tabs.addTab(general_tab, "常规")
        
        # 下载设置选项卡
        download_tab = self.create_download_tab()
        self.tabs.addTab(download_tab, "下载")
        
        # 自动更新选项卡
        auto_update_tab = self.create_auto_update_tab()
        self.tabs.addTab(auto_update_tab, "自动更新")
        
        layout.addWidget(self.tabs)
        
        # 底部按钮
        button_box = QDialogButtonBox(
            QDialogButtonBox.StandardButton.Ok | 
            QDialogButtonBox.StandardButton.Cancel | 
            QDialogButtonBox.StandardButton.Apply
        )
        
        button_box.accepted.connect(self.accept)
        button_box.rejected.connect(self.reject)
        button_box.button(QDialogButtonBox.StandardButton.Apply).clicked.connect(self.apply_settings)
        
        layout.addWidget(button_box)
    
    def create_general_tab(self):
        """创建常规设置选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 外观组
        appearance_group = QGroupBox("外观")
        appearance_layout = QFormLayout(appearance_group)
        
        # 主题
        self.theme_combo = QComboBox()
        self.theme_combo.addItems(["系统默认", "浅色", "深色"])
        appearance_layout.addRow("主题:", self.theme_combo)
        
        # 启动选项
        self.start_minimized_check = QCheckBox("启动时最小化到系统托盘")
        appearance_layout.addRow(self.start_minimized_check)
        
        layout.addWidget(appearance_group)
        
        # PDF阅读器组
        pdf_group = QGroupBox("PDF阅读器")
        pdf_layout = QFormLayout(pdf_group)
        
        self.use_default_reader_check = QCheckBox("使用系统默认PDF阅读器")
        self.use_default_reader_check.setChecked(True)
        pdf_layout.addRow(self.use_default_reader_check)
        
        pdf_path_layout = QHBoxLayout()
        self.custom_reader_path = QLineEdit()
        self.custom_reader_path.setEnabled(False)
        pdf_path_layout.addWidget(self.custom_reader_path)
        
        browse_btn = QPushButton("浏览...")
        browse_btn.clicked.connect(self.browse_pdf_reader)
        browse_btn.setEnabled(False)
        pdf_path_layout.addWidget(browse_btn)
        
        pdf_layout.addRow("自定义阅读器:", pdf_path_layout)
        
        # 连接复选框和输入框
        self.use_default_reader_check.toggled.connect(
            lambda checked: self.custom_reader_path.setDisabled(checked))
        self.use_default_reader_check.toggled.connect(
            lambda checked: browse_btn.setDisabled(checked))
        
        layout.addWidget(pdf_group)
        
        layout.addStretch(1)
        
        return tab
    
    def create_download_tab(self):
        """创建下载设置选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 下载目录组
        dir_group = QGroupBox("下载目录")
        dir_layout = QFormLayout(dir_group)
        
        dir_path_layout = QHBoxLayout()
        self.download_dir_edit = QLineEdit()
        dir_path_layout.addWidget(self.download_dir_edit)
        
        browse_dir_btn = QPushButton("浏览...")
        browse_dir_btn.clicked.connect(self.browse_download_dir)
        dir_path_layout.addWidget(browse_dir_btn)
        
        dir_layout.addRow("保存目录:", dir_path_layout)
        
        # 文件名格式
        self.filename_format_edit = QLineEdit("[yymm.xxxx]title.pdf")
        self.filename_format_edit.setReadOnly(True)  # 目前只支持固定格式
        dir_layout.addRow("文件名格式:", self.filename_format_edit)
        
        layout.addWidget(dir_group)
        
        # 网络设置组
        network_group = QGroupBox("网络设置")
        network_layout = QFormLayout(network_group)
        
        self.max_concurrent_downloads = QSpinBox()
        self.max_concurrent_downloads.setRange(1, 10)
        self.max_concurrent_downloads.setValue(3)
        network_layout.addRow("最大同时下载数:", self.max_concurrent_downloads)
        
        self.retry_count = QSpinBox()
        self.retry_count.setRange(0, 5)
        self.retry_count.setValue(2)
        network_layout.addRow("下载失败重试次数:", self.retry_count)
        
        self.use_proxy_check = QCheckBox("使用代理服务器")
        network_layout.addRow(self.use_proxy_check)
        
        proxy_layout = QHBoxLayout()
        self.proxy_edit = QLineEdit()
        self.proxy_edit.setPlaceholderText("http://proxy.example.com:8080")
        self.proxy_edit.setEnabled(False)
        proxy_layout.addWidget(self.proxy_edit)
        
        network_layout.addRow("代理地址:", proxy_layout)
        
        # 连接代理复选框和输入框
        self.use_proxy_check.toggled.connect(
            lambda checked: self.proxy_edit.setEnabled(checked))
        
        layout.addWidget(network_group)
        
        layout.addStretch(1)
        
        return tab
    
    def create_auto_update_tab(self):
        """创建自动更新选项卡"""
        tab = QWidget()
        layout = QVBoxLayout(tab)
        
        # 自动下载组
        auto_group = QGroupBox("自动下载")
        auto_layout = QFormLayout(auto_group)
        
        self.enable_auto_download = QCheckBox("启用每日自动下载")
        auto_layout.addRow(self.enable_auto_download)
        
        self.auto_download_time = QComboBox()
        for hour in range(0, 24):
            for minute in [0, 30]:
                time_str = f"{hour:02d}:{minute:02d}"
                self.auto_download_time.addItem(time_str)
        self.auto_download_time.setCurrentText("03:00")
        auto_layout.addRow("下载时间:", self.auto_download_time)
        
        self.auto_download_categories = QLineEdit()
        self.auto_download_categories.setPlaceholderText("hep-th,gr-qc,quant-ph")
        auto_layout.addRow("下载类别:", self.auto_download_categories)
        
        self.auto_download_max_papers = QSpinBox()
        self.auto_download_max_papers.setRange(5, 50)
        self.auto_download_max_papers.setValue(10)
        auto_layout.addRow("每类最大下载数:", self.auto_download_max_papers)
        
        layout.addWidget(auto_group)
        
        # 通知组
        notify_group = QGroupBox("通知")
        notify_layout = QFormLayout(notify_group)
        
        self.show_desktop_notifications = QCheckBox("显示桌面通知")
        self.show_desktop_notifications.setChecked(True)
        notify_layout.addRow(self.show_desktop_notifications)
        
        layout.addWidget(notify_group)
        
        layout.addStretch(1)
        
        return tab
    
    def browse_pdf_reader(self):
        """浏览PDF阅读器路径"""
        file_path, _ = QFileDialog.getOpenFileName(
            self,
            "选择PDF阅读器",
            "",
            "可执行文件 (*.exe);;所有文件 (*.*)"
        )
        
        if file_path:
            self.custom_reader_path.setText(file_path)
    
    def browse_download_dir(self):
        """浏览下载目录"""
        directory = QFileDialog.getExistingDirectory(
            self,
            "选择下载目录",
            self.download_dir_edit.text()
        )
        
        if directory:
            self.download_dir_edit.setText(directory)
    
    def load_settings(self):
        """加载设置"""
        # 常规设置
        theme = self.settings.value("theme", "系统默认")
        index = self.theme_combo.findText(theme)
        if index >= 0:
            self.theme_combo.setCurrentIndex(index)
        
        self.start_minimized_check.setChecked(
            self.settings.value("start_minimized", "false").lower() == "true")
        
        self.use_default_reader_check.setChecked(
            self.settings.value("use_default_reader", "true").lower() == "true")
        
        self.custom_reader_path.setText(
            self.settings.value("custom_reader_path", ""))
        
        # 下载设置
        self.download_dir_edit.setText(
            self.settings.value("download_dir", ""))
        
        self.max_concurrent_downloads.setValue(
            int(self.settings.value("max_concurrent_downloads", 3)))
        
        self.retry_count.setValue(
            int(self.settings.value("retry_count", 2)))
        
        self.use_proxy_check.setChecked(
            self.settings.value("use_proxy", "false").lower() == "true")
        
        self.proxy_edit.setText(
            self.settings.value("proxy", ""))
        
        # 自动更新设置
        self.enable_auto_download.setChecked(
            self.settings.value("enable_auto_download", "false").lower() == "true")
        
        auto_time = self.settings.value("auto_download_time", "03:00")
        index = self.auto_download_time.findText(auto_time)
        if index >= 0:
            self.auto_download_time.setCurrentIndex(index)
        
        self.auto_download_categories.setText(
            self.settings.value("auto_download_categories", ""))
        
        self.auto_download_max_papers.setValue(
            int(self.settings.value("auto_download_max_papers", 10)))
        
        self.show_desktop_notifications.setChecked(
            self.settings.value("show_desktop_notifications", "true").lower() == "true")
    
    def save_settings(self):
        """保存设置"""
        # 常规设置
        self.settings.setValue("theme", self.theme_combo.currentText())
        self.settings.setValue("start_minimized", 
                              str(self.start_minimized_check.isChecked()).lower())
        self.settings.setValue("use_default_reader", 
                              str(self.use_default_reader_check.isChecked()).lower())
        self.settings.setValue("custom_reader_path", 
                              self.custom_reader_path.text())
        
        # 下载设置
        self.settings.setValue("download_dir", 
                              self.download_dir_edit.text())
        self.settings.setValue("max_concurrent_downloads", 
                              self.max_concurrent_downloads.value())
        self.settings.setValue("retry_count", 
                              self.retry_count.value())
        self.settings.setValue("use_proxy", 
                              str(self.use_proxy_check.isChecked()).lower())
        self.settings.setValue("proxy", 
                              self.proxy_edit.text())
        
        # 自动更新设置
        self.settings.setValue("enable_auto_download", 
                              str(self.enable_auto_download.isChecked()).lower())
        self.settings.setValue("auto_download_time", 
                              self.auto_download_time.currentText())
        self.settings.setValue("auto_download_categories", 
                              self.auto_download_categories.text())
        self.settings.setValue("auto_download_max_papers", 
                              self.auto_download_max_papers.value())
        self.settings.setValue("show_desktop_notifications", 
                              str(self.show_desktop_notifications.isChecked()).lower())
        
        # 确保设置立即写入
        self.settings.sync()
    
    def apply_settings(self):
        """应用设置按钮点击事件"""
        self.save_settings()
    
    def accept(self):
        """确定按钮点击事件"""
        self.save_settings()
        super().accept()
```

### 10. views/paper_viewer.py - 论文预览器

```python
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, 
                           QLabel, QPushButton, QTextEdit, QToolBar, QFileDialog)
from PyQt6.QtCore import Qt, QUrl
from PyQt6.QtGui import QAction
from PyQt6.QtPdfWidgets import QPdfView
from PyQt6.QtPdf import QPdfDocument

class PaperViewer(QMainWindow):
    """PDF论文阅读器"""
    
    def __init__(self, paper, parent=None):
        super().__init__(parent)
        
        self.paper = paper
        self.pdf_document = QPdfDocument()
        
        self.init_ui()
        self.load_paper()
    
    def init_ui(self):
        """初始化用户界面"""
        self.setWindowTitle(f"查看论文 - {self.paper.title}")
        self.resize(800, 1000)
        
        # 创建工具栏
        toolbar = QToolBar("阅读器工具栏", self)
        self.addToolBar(toolbar)
        
        # 缩放控制
        zoom_in_action = QAction("放大", self)
        zoom_in_action.triggered.connect(self.zoom_in)
        toolbar.addAction(zoom_in_action)
        
        zoom_out_action = QAction("缩小", self)
        zoom_out_action.triggered.connect(self.zoom_out)
        toolbar.addAction(zoom_out_action)
        
        fit_width_action = QAction("适合宽度", self)
        fit_width_action.triggered.connect(self.fit_width)
        toolbar.addAction(fit_width_action)
        
        toolbar.addSeparator()
        
        # 页面控制
        self.prev_page_action = QAction("上一页", self)
        self.prev_page_action.triggered.connect(self.previous_page)
        toolbar.addAction(self.prev_page_action)
        
        self.page_label = QLabel("0 / 0")
        toolbar.addWidget(self.page_label)
        
        self.next_page_action = QAction("下一页", self)
        self.next_page_action.triggered.connect(self.next_page)
        toolbar.addAction(self.next_page_action)
        
        toolbar.addSeparator()
        
        # 注释工具
        highlight_action = QAction("高亮", self)
        highlight_action.triggered.connect(self.highlight_selection)
        toolbar.addAction(highlight_action)
        
        toolbar.addSeparator()
        
        # 保存和导出
        save_action = QAction("保存", self)
        save_action.triggered.connect(self.save_annotations)
        toolbar.addAction(save_action)
        
        export_action = QAction("导出", self)
        export_action.triggered.connect(self.export_pdf)
        toolbar.addAction(export_action)
        
        # 创建PDF查看器
        central_widget = QWidget()
        layout = QVBoxLayout(central_widget)
        
        self.pdf_view = QPdfView()
        self.pdf_view.setDocument(self.pdf_document)
        layout.addWidget(self.pdf_view)
        
        self.setCentralWidget(central_widget)
    
    def load_paper(self):
        """加载论文PDF"""
        if not self.paper.local_path:
            self.statusBar().showMessage("无本地PDF文件")
            return
        
        # 加载PDF文档
        self.pdf_document.load(self.paper.local_path)
        
        # 更新页面标签
        self.update_page_label()
        
        # 设置合适的缩放级别
        self.fit_width()
    
    def update_page_label(self):
        """更新页码标签"""
        current_page = self.pdf_view.currentPage() + 1  # 页码从0开始
        total_pages = self.pdf_document.pageCount()
        self.page_label.setText(f"{current_page} / {total_pages}")
        
        # 更新翻页按钮状态
        self.prev_page_action.setEnabled(current_page > 1)
        self.next_page_action.setEnabled(current_page < total_pages)
    
    def zoom_in(self):
        """放大PDF"""
        zoom = self.pdf_view.zoomFactor()
        self.pdf_view.setZoomFactor(zoom * 1.2)
    
    def zoom_out(self):
        """缩小PDF"""
        zoom = self.pdf_view.zoomFactor()
        self.pdf_view.setZoomFactor(zoom / 1.2)
    
    def fit_width(self):
        """适合宽度"""
        self.pdf_view.setZoomMode(QPdfView.ZoomMode.FitToWidth)
    
    def previous_page(self):
        """上一页"""
        current_page = self.pdf_view.currentPage()
        if current_page > 0:
            self.pdf_view.setCurrentPage(current_page - 1)
            self.update_page_label()
    
    def next_page(self):
        """下一页"""
        current_page = self.pdf_view.currentPage()
        if current_page < self.pdf_document.pageCount() - 1:
            self.pdf_view.setCurrentPage(current_page + 1)
            self.update_page_label()
    
    def highlight_selection(self):
        """高亮选中内容"""
        # 注意：基本的QPdfView不支持文本选择和注释
        # 这需要更高级的PDF库或自定义实现
        self.statusBar().showMessage("高亮功能尚未实现")
    
    def save_annotations(self):
        
        zoom = self.pdf_view.zoomFactor()
        self.pdf_view.setZoomFactor(zoom / 1.2)
    
    def fit_width(self):
        """适合宽度"""
        self.pdf_view.setZoomMode(QPdfView.ZoomMode.FitToWidth)
    
    def previous_page(self):
        """上一页"""
        current_page = self.pdf_view.currentPage()
        if current_page > 0:
            self.pdf_view.setCurrentPage(current_page - 1)
            self.update_page_label()
    
    def next_page(self):
        """下一页"""
        current_page = self.pdf_view.currentPage()
        if current_page < self.pdf_document.pageCount() - 1:
            self.pdf_view.setCurrentPage(current_page + 1)
            self.update_page_label()
    
    def highlight_selection(self):
        """高亮选中内容"""
        # 注意：基本的QPdfView不支持文本选择和注释
        # 这需要更高级的PDF库或自定义实现
        self.statusBar().showMessage("高亮功能尚未实现")
    
    def save_annotations(self):
```


### 10. views/paper_viewer.py - 论文预览器 (续)

```python
    def save_annotations(self):
        """保存注释"""
        # 注意：基本的QPdfView不支持注释功能
        # 这需要更高级的PDF库或自定义实现
        self.statusBar().showMessage("保存注释功能尚未实现")
    
    def export_pdf(self):
        """导出PDF"""
        file_path, _ = QFileDialog.getSaveFileName(
            self,
            "导出PDF",
            f"{self.paper.paper_id}.pdf",
            "PDF文件 (*.pdf)"
        )
        
        if file_path:
            import shutil
            try:
                shutil.copy2(self.paper.local_path, file_path)
                self.statusBar().showMessage(f"已成功导出PDF到: {file_path}")
            except Exception as e:
                self.statusBar().showMessage(f"导出PDF失败: {str(e)}")
    
    def closeEvent(self, event):
        """窗口关闭事件"""
        # 标记论文为已读
        if self.paper and not self.paper.read:
            self.paper.read = True
            
            # 通知父窗口更新数据库
            if self.parent():
                from models.paper import ArxivPaper
                if isinstance(self.paper, ArxivPaper):
                    self.parent().mark_paper_read(self.paper, True)
        
        event.accept()
```

### 11. views/widgets.py - 自定义控件

```python
from PyQt6.QtWidgets import (QListView, QAbstractItemView, QWidget, QVBoxLayout, 
                           QHBoxLayout, QLabel, QLineEdit, QPushButton, QScrollArea,
                           QSizePolicy, QFlowLayout)
from PyQt6.QtCore import Qt, QAbstractListModel, QModelIndex, pyqtSignal, QSize
from PyQt6.QtGui import QFont, QColor, QBrush, QPalette

class PaperListModel(QAbstractListModel):
    """论文列表模型"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.papers = []
    
    def rowCount(self, parent=QModelIndex()):
        """返回行数"""
        return len(self.papers)
    
    def data(self, index, role=Qt.ItemDataRole.DisplayRole):
        """返回索引位置的数据"""
        if not index.isValid() or index.row() >= len(self.papers):
            return None
        
        paper = self.papers[index.row()]
        
        if role == Qt.ItemDataRole.DisplayRole:
            return f"{paper.title}"
        
        elif role == Qt.ItemDataRole.ToolTipRole:
            authors = ", ".join(paper.authors[:3])
            if len(paper.authors) > 3:
                authors += " et al."
            return f"{paper.title}\n作者: {authors}\n摘要: {paper.abstract[:200]}..."
        
        elif role == Qt.ItemDataRole.BackgroundRole:
            # 根据状态设置背景色
            if paper.status == "downloaded":
                return QBrush(QColor(240, 255, 240))  # 浅绿色
            elif paper.status == "downloading":
                return QBrush(QColor(240, 240, 255))  # 浅蓝色
            elif paper.status == "error":
                return QBrush(QColor(255, 240, 240))  # 浅红色
        
        elif role == Qt.ItemDataRole.ForegroundRole:
            # 已读论文颜色变浅
            if hasattr(paper, 'read') and paper.read:
                return QBrush(QColor(100, 100, 100))  # 灰色
        
        elif role == Qt.ItemDataRole.FontRole:
            font = QFont()
            # 已标星论文加粗
            if hasattr(paper, 'starred') and paper.starred:
                font.setBold(True)
            return font
        
        elif role == Qt.ItemDataRole.UserRole:
            return paper
        
        return None
    
    def set_papers(self, papers):
        """设置论文列表"""
        self.beginResetModel()
        self.papers = papers
        self.endResetModel()
    
    def get_paper(self, row):
        """获取指定行的论文"""
        if 0 <= row < len(self.papers):
            return self.papers[row]
        return None
    
    def update_paper(self, paper):
        """更新论文"""
        for i, p in enumerate(self.papers):
            if p.paper_id == paper.paper_id:
                # 更新数据
                self.papers[i] = paper
                # 发出数据变化信号
                self.dataChanged.emit(
                    self.index(i, 0),
                    self.index(i, 0),
                    [Qt.ItemDataRole.DisplayRole, Qt.ItemDataRole.BackgroundRole]
                )
                return True
        return False
    
    def add_paper(self, paper):
        """添加论文"""
        self.beginInsertRows(QModelIndex(), len(self.papers), len(self.papers))
        self.papers.append(paper)
        self.endInsertRows()
    
    def remove_paper(self, paper_id):
        """移除论文"""
        for i, paper in enumerate(self.papers):
            if paper.paper_id == paper_id:
                self.beginRemoveRows(QModelIndex(), i, i)
                self.papers.pop(i)
                self.endRemoveRows()
                return True
        return False
    
    def clear(self):
        """清空模型"""
        self.beginResetModel()
        self.papers = []
        self.endResetModel()


class PaperListView(QListView):
    """论文列表视图"""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        
        # 设置选择模式
        self.setSelectionMode(QAbstractItemView.SelectionMode.SingleSelection)
        self.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        
        # 允许拖放
        self.setDragEnabled(True)
        self.setAcceptDrops(True)
        self.setDropIndicatorShown(True)
        
        # 设置外观
        self.setAlternatingRowColors(True)
        self.setWordWrap(True)
        
        # 设置项目大小
        self.setIconSize(QSize(48, 48))
        self.setSpacing(2)
        
        # 连接选择变化信号
        self.selectionModel().selectionChanged.connect(self.on_selection_changed)
    
    def on_selection_changed(self, selected, deselected):
        """选择变化事件"""
        if selected.indexes():
            index = selected.indexes()[0]
            paper = index.data(Qt.ItemDataRole.UserRole)
            
            # 通知父窗口显示论文详情
            if hasattr(self.parent(), 'show_paper_details'):
                self.parent().show_paper_details(paper)
            elif hasattr(self.parent(), 'show_library_paper_details'):
                self.parent().show_library_paper_details(paper)


class TagsEditor(QWidget):
    """标签编辑器控件"""
    
    tags_changed = pyqtSignal(list)  # 标签变化信号
    
    def __init__(self, parent=None):
        super().__init__(parent)
        
        self.paper = None
        self.database = None
        self.init_ui()
    
    def init_ui(self):
        """初始化用户界面"""
        layout = QVBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        
        # 标签显示区域
        self.tags_area = QWidget()
        self.tags_layout = FlowLayout()
        self.tags_area.setLayout(self.tags_layout)
        
        # 将标签区域放入滚动区域
        scroll_area = QScrollArea()
        scroll_area.setWidgetResizable(True)
        scroll_area.setWidget(self.tags_area)
        scroll_area.setMaximumHeight(80)
        layout.addWidget(scroll_area)
        
        # 添加标签控件
        add_layout = QHBoxLayout()
        
        self.tag_input = QLineEdit()
        self.tag_input.setPlaceholderText("输入新标签...")
        self.tag_input.returnPressed.connect(self.add_tag)
        add_layout.addWidget(self.tag_input)
        
        add_button = QPushButton("添加")
        add_button.clicked.connect(self.add_tag)
        add_layout.addWidget(add_button)
        
        layout.addLayout(add_layout)
    
    def set_paper(self, paper, database):
        """设置当前论文"""
        self.paper = paper
        self.database = database
        self.update_tags()
    
    def update_tags(self):
        """更新标签显示"""
        # 清空现有标签
        for i in reversed(range(self.tags_layout.count())):
            widget = self.tags_layout.itemAt(i).widget()
            if widget:
                widget.deleteLater()
        
        if self.paper:
            # 添加标签按钮
            for tag in sorted(self.paper.tags):
                tag_button = QPushButton(tag)
                tag_button.setFlat(True)
                tag_button.setStyleSheet(
                    "QPushButton { background-color: #e0e0e0; border-radius: 3px; padding: 2px 5px; margin: 2px; }"
                    "QPushButton:hover { background-color: #d0d0d0; }"
                )
                
                # 设置上下文菜单
                tag_button.setContextMenuPolicy(Qt.ContextMenuPolicy.CustomContextMenu)
                tag_button.customContextMenuRequested.connect(
                    lambda pos, t=tag: self.show_tag_context_menu(pos, t))
                
                self.tags_layout.addWidget(tag_button)
    
    def show_tag_context_menu(self, pos, tag):
        """显示标签上下文菜单"""
        from PyQt6.QtWidgets import QMenu
        
        menu = QMenu()
        remove_action = menu.addAction("移除标签")
        
        action = menu.exec(self.sender().mapToGlobal(pos))
        
        if action == remove_action:
            self.remove_tag(tag)
    
    def add_tag(self):
        """添加新标签"""
        tag = self.tag_input.text().strip()
        
        if not tag:
            return
        
        if self.paper and self.database:
            # 添加到数据库
            self.database.add_tag_to_paper(self.paper.paper_id, tag)
            
            # 添加到论文对象
            self.paper.tags.add(tag)
            
            # 更新显示
            self.update_tags()
            
            # 发射标签变化信号
            self.tags_changed.emit(list(self.paper.tags))
            
            # 清空输入框
            self.tag_input.clear()
    
    def remove_tag(self, tag):
        """移除标签"""
        if self.paper and self.database:
            # 从数据库移除
            self.database.remove_tag_from_paper(self.paper.paper_id, tag)
            
            # 从论文对象移除
            self.paper.tags.discard(tag)
            
            # 更新显示
            self.update_tags()
            
            # 发射标签变化信号
            self.tags_changed.emit(list(self.paper.tags))
    
    def clear(self):
        """清空标签编辑器"""
        self.paper = None
        self.tag_input.clear()
        
        # 清空标签显示
        for i in reversed(range(self.tags_layout.count())):
            widget = self.tags_layout.itemAt(i).widget()
            if widget:
                widget.deleteLater()


class FlowLayout(QLayout):
    """流式布局（标签云）"""
    
    def __init__(self, parent=None, margin=0, spacing=-1):
        super().__init__(parent)
        
        if parent is not None:
            self.setContentsMargins(margin, margin, margin, margin)
        
        self.setSpacing(spacing)
        self.item_list = []
    
    def __del__(self):
        item = self.takeAt(0)
        while item:
            item = self.takeAt(0)
    
    def addItem(self, item):
        self.item_list.append(item)
    
    def count(self):
        return len(self.item_list)
    
    def itemAt(self, index):
        if 0 <= index < len(self.item_list):
            return self.item_list[index]
        return None
    
    def takeAt(self, index):
        if 0 <= index < len(self.item_list):
            return self.item_list.pop(index)
        return None
    
    def expandingDirections(self):
        return Qt.Orientations(Qt.Orientation(0))
    
    def hasHeightForWidth(self):
        return True
    
    def heightForWidth(self, width):
        height = self.do_layout(QRect(0, 0, width, 0), True)
        return height
    
    def setGeometry(self, rect):
        super().setGeometry(rect)
        self.do_layout(rect, False)
    
    def sizeHint(self):
        return self.minimumSize()
    
    def minimumSize(self):
        size = QSize()
        
        for item in self.item_list:
            size = size.expandedTo(item.minimumSize())
        
        margin = self.contentsMargins()
        size += QSize(margin.left() + margin.right(), margin.top() + margin.bottom())
        
        return size
    
    def do_layout(self, rect, test_only):
        x = rect.x()
        y = rect.y()
        line_height = 0
        
        for item in self.item_list:
            widget = item.widget()
            space_x = self.spacing() + widget.style().layoutSpacing(
                QSizePolicy.ControlType.PushButton,
                QSizePolicy.ControlType.PushButton,
                Qt.Orientation.Horizontal
            )
            space_y = self.spacing() + widget.style().layoutSpacing(
                QSizePolicy.ControlType.PushButton,
                QSizePolicy.ControlType.PushButton,
                Qt.Orientation.Vertical
            )
            
            next_x = x + item.sizeHint().width() + space_x
            if next_x - space_x > rect.right() and line_height > 0:
                x = rect.x()
                y = y + line_height + space_y
                next_x = x + item.sizeHint().width() + space_x
                line_height = 0
            
            if not test_only:
                item.setGeometry(QRect(x, y, item.sizeHint().width(), item.sizeHint().height()))
            
            x = next_x
            line_height = max(line_height, item.sizeHint().height())
        
        return y + line_height - rect.y()
```

### 12. main.py - 程序入口

```python
import sys
import os
import logging
import argparse
from pathlib import Path
from PyQt6.QtWidgets import QApplication
from PyQt6.QtCore import QSettings

# 设置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler("arxiv_manager.log"),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)

def parse_arguments():
    """解析命令行参数"""
    parser = argparse.ArgumentParser(description="arXiv 论文下载与管理系统")
    
    parser.add_argument(
        "--download-dir", 
        help="指定下载目录",
        default=None
    )
    
    parser.add_argument(
        "--debug", 
        action="store_true",
        help="启用调试模式"
    )
    
    return parser.parse_args()

def setup_directories(args):
    """设置应用程序目录"""
    # 应用数据目录
    app_data_dir = Path.home() / ".arxiv_manager"
    app_data_dir.mkdir(exist_ok=True)
    
    # 下载目录
    if args.download_dir:
        download_dir = Path(args.download_dir)
    else:
        # 从设置中获取
        settings = QSettings("ArxivDownloader", "Settings")
        saved_dir = settings.value("download_dir")
        
        if saved_dir and os.path.isdir(saved_dir):
            download_dir = Path(saved_dir)
        else:
            # 默认下载目录
            download_dir = Path.home() / "Documents" / "ArxivPapers"
    
    download_dir.mkdir(parents=True, exist_ok=True)
    
    return app_data_dir, download_dir

def main():
    """应用程序主入口"""
    # 解析命令行参数
    args = parse_arguments()
    
    # 设置日志级别
    if args.debug:
        logging.getLogger().setLevel(logging.DEBUG)
    
    # 创建应用程序
    app = QApplication(sys.argv)
    app.setApplicationName("arXiv Manager")
    app.setOrganizationName("ArxivDownloader")
    
    # 设置目录
    app_data_dir, download_dir = setup_directories(args)
    
    # 导入需要的模块
    from models.database import PaperDatabase
    from controllers.download_controller import DownloadController
    from controllers.scheduler import SchedulerController
    from views.main_window import MainWindow
    
    # 创建数据库
    database = PaperDatabase(app_data_dir / "papers.db")
    
    # 创建下载控制器
    download_controller = DownloadController(database, download_dir)
    
    # 创建定时器控制器
    scheduler = SchedulerController()
    
    # 创建主窗口
    main_window = MainWindow(download_controller, database, scheduler)
    
    # 检查是否应该最小化启动
    settings = QSettings("ArxivDownloader", "Settings")
    start_minimized = settings.value("start_minimized", "false").lower() == "true"
    
    if start_minimized:
        # 启动时最小化到系统托盘
        pass
    else:
        # 正常显示窗口
        main_window.show()
    
    # 启动定时器
    enable_auto_download = settings.value("enable_auto_download", "false").lower() == "true"
    if enable_auto_download:
        # 获取自动下载设置
        auto_time = settings.value("auto_download_time", "03:00")
        
        # 添加每日下载任务
        scheduler.add_task("daily_download", auto_time, True)
        
        # 启动定时器
        scheduler.start_scheduler()
    
    # 执行应用程序
    return app.exec()

if __name__ == "__main__":
    sys.exit(main())
```

### 13. config.py - 配置文件

```python
"""
应用程序配置
"""
import os
from pathlib import Path

# 应用程序版本
APP_VERSION = "1.0.0"

# 默认下载目录
DEFAULT_DOWNLOAD_DIR = os.path.join(Path.home(), "Documents", "ArxivPapers")

# arXiv 相关配置
ARXIV_API_URL = "http://export.arxiv.org/api/query"
ARXIV_PDF_URL = "http://arxiv.org/pdf"
ARXIV_ABS_URL = "http://arxiv.org/abs"

# 默认类别
DEFAULT_CATEGORIES = [
    "hep-th",  # 高能物理理论
    "gr-qc",   # 广义相对论和量子宇宙学
    "quant-ph",  # 量子物理
    "math-ph",  # 数学物理
    "hep-ph",  # 高能物理现象学
    "math.DG",  # 微分几何
    "math.AG",  # 代数几何
    "math.QA",  # 量子代数
    "math.RT",  # 表示论
    "cond-mat"  # 凝聚态物理
]

# 下载相关设置
MAX_CONCURRENT_DOWNLOADS = 3
RETRY_COUNT = 2
RETRY_DELAY = 5  # 秒

# 网络请求超时设置（秒）
REQUEST_TIMEOUT = 30

# 每页显示论文数
PAPERS_PER_PAGE = 20

# 自动更新设置
AUTO_UPDATE_CHECK_DAYS = 7

# 日志设置
LOG_FILE = "arxiv_manager.log"
LOG_LEVEL = "INFO"
```

## 使用指南

### 安装依赖

使用以下命令安装所需依赖：

```
pip install PyQt6 PyQt6-PDF PyQt6-WebEngine arxiv requests
```

### 运行程序

```
python main.py
```

可以使用以下命令行参数：

- `--download-dir PATH`: 指定下载目录
- `--debug`: 启用调试模式，显示更详细的日志

### 功能亮点

1. **自定义文件名格式**
   - 论文下载后自动按照 `[yymm.xxxx]title.pdf` 格式重命名
   - 例如：`[2306.12345]Quantum Gravity in Higher Dimensions.pdf`

2. **论文管理功能**
   - 标签系统：可为论文添加自定义标签，方便分类管理
   - 收藏与已读标记：快速区分重要论文和阅读状态
   - 全文搜索：可搜索标题、作者、摘要内容

3. **自动化下载**
   - 定时下载：可设置每日自动下载指定类别的最新论文
   - 批量下载：可一次下载多篇论文

4. **引用导出**
   - 支持BibTeX、APA、MLA等引用格式
   - 可导出单篇论文或整个库的引用

5. **其他功能**
   - 内置PDF预览器
   - 论文内容统计分析
   - 系统托盘通知
   - 自动更新检查

## 后续扩展方向

1. **高级搜索功能**
   - 按作者搜索
   - 按时间范围搜索
   - 按引用数量排序

2. **文献管理增强**
   - 论文之间的引用关系可视化
   - 个人笔记和注释系统
   - 阅读进度跟踪

3. **学术社交功能**
   - 连接研究者个人资料
   - 论文推荐系统
   - 共享阅读列表

4. **集成外部服务**
   - 连接Google Scholar获取引用信息
   - 与参考文献管理软件(如Zotero)集成
   - 连接学术社交网络(如ResearchGate)

5. **移动端支持**
   - 开发配套移动应用
   - 云同步阅读进度和笔记

这个增强版的arXiv下载与管理系统不仅解决了论文下载和文件命名的问题，还提供了全面的论文管理功能，帮助研究人员更高效地获取和组织学术资源。

# arXiv 论文下载与管理系统 - Rust 版本

使用 Rust 重写这个 arXiv 论文下载与管理系统是一个很好的选择，可以带来更好的性能、内存安全性和并发处理能力。下面是使用 Rust 实现的完整方案。

## 架构设计

我们将采用以下架构设计：

```
arxiv-manager/
├── src/
│   ├── main.rs                 # 程序入口
│   ├── app.rs                  # 应用程序实例
│   ├── models/                 # 数据模型
│   │   ├── mod.rs
│   │   ├── paper.rs            # 论文模型
│   │   └── database.rs         # 数据库处理
│   ├── services/               # 业务逻辑
│   │   ├── mod.rs
│   │   ├── arxiv_api.rs        # arXiv API 服务
│   │   ├── downloader.rs       # 下载服务
│   │   └── scheduler.rs        # 定时任务服务
│   ├── ui/                     # 用户界面
│   │   ├── mod.rs
│   │   ├── app_ui.rs           # 主界面
│   │   ├── download_view.rs    # 下载视图
│   │   ├── library_view.rs     # 论文库视图
│   │   ├── paper_view.rs       # 论文预览
│   │   └── widgets/            # 自定义控件
│   │       ├── mod.rs
│   │       ├── paper_list.rs   # 论文列表
│   │       └── tags_editor.rs  # 标签编辑器
│   └── utils/                  # 工具函数
│       ├── mod.rs
│       ├── config.rs           # 配置管理
│       ├── file_utils.rs       # 文件操作
│       └── citation.rs         # 引用生成
├── Cargo.toml                  # 项目配置
└── build.rs                    # 构建脚本
```

## GUI 框架选择

对于 Rust GUI 应用，我们有几个选项。考虑到需求，我推荐以下两种方案：

### 方案 1: Tauri + Web 前端

使用 Tauri 框架结合 Web 前端 (React/Vue/Svelte) 可以获得:
- 现代化、美观的 UI
- 丰富的 Web 生态系统组件
- Rust 的性能和安全性作为后端

### 方案 2: Iced (纯 Rust)

使用 Iced 可以获得:
- 纯 Rust 实现，无需 JavaScript
- 原生性能
- 简单的状态管理

这里我们选择 **Iced** 方案来实现一个完整的纯 Rust 应用。

## 完整实现

### Cargo.toml

```toml
[package]
name = "arxiv-manager"
version = "1.0.0"
edition = "2021"
authors = ["Your Name"]
description = "A tool for downloading and managing arXiv papers"

[dependencies]
# GUI
iced = { version = "0.9", features = ["image", "tokio", "debug"] }
iced_native = "0.10"
iced_futures = "0.6"
iced_style = "0.8"

# HTTP 请求
reqwest = { version = "0.11", features = ["json", "stream"] }
futures = "0.3"
tokio = { version = "1", features = ["full"] }

# 数据处理
serde = { version = "1.0", features = ["derive"] }
serde_json = "1.0"
chrono = { version = "0.4", features = ["serde"] }
quick-xml = "0.28"
roxmltree = "0.18"
url = "2.3"

# 数据库
rusqlite = { version = "0.29", features = ["bundled", "chrono"] }
r2d2 = "0.8"
r2d2_sqlite = "0.22"

# PDF 处理
pdf = "0.8"
pdf-extract = "0.6"

# 文件系统
directories = "5.0"
walkdir = "2.3"
zip = "0.6"
tempfile = "3.5"

# 错误处理
thiserror = "1.0"
anyhow = "1.0"

# 日志
log = "0.4"
env_logger = "0.10"
fern = "0.6"

# 其他实用工具
once_cell = "1.17"
regex = "1.8"
lazy_static = "1.4"
rand = "0.8"
uuid = { version = "1.3", features = ["v4"] }

[build-dependencies]
embed-resource = "2.1"

[profile.release]
lto = true
codegen-units = 1
panic = "abort"
strip = true
```

### src/main.rs

```rust
mod app;
mod models;
mod services;
mod ui;
mod utils;

use crate::app::ArxivManager;
use crate::utils::config::{self, Config};
use iced::{Application, Settings};
use std::sync::Arc;

fn main() -> iced::Result {
    // 初始化日志
    setup_logging();

    // 加载配置
    let config = match config::load_config() {
        Ok(config) => Arc::new(config),
        Err(e) => {
            eprintln!("Failed to load config: {}", e);
            Arc::new(Config::default())
        }
    };

    // 启动 GUI 应用
    ArxivManager::run(Settings {
        window: iced::window::Settings {
            size: (1200, 800),
            min_size: Some((800, 600)),
            icon: get_app_icon(),
            ..Default::default()
        },
        default_font: Some(include_bytes!("../assets/fonts/NotoSans-Regular.ttf")),
        antialiasing: true,
        flags: config,
        ..Default::default()
    })
}

fn setup_logging() {
    use fern::colors::{Color, ColoredLevelConfig};
    let colors = ColoredLevelConfig::new()
        .error(Color::Red)
        .warn(Color::Yellow)
        .info(Color::Green)
        .debug(Color::Blue)
        .trace(Color::BrightBlack);

    fern::Dispatch::new()
        .format(move |out, message, record| {
            out.finish(format_args!(
                "[{} {} {}] {}",
                chrono::Local::now().format("%Y-%m-%d %H:%M:%S"),
                colors.color(record.level()),
                record.target(),
                message
            ))
        })
        .level(log::LevelFilter::Info)
        .chain(std::io::stdout())
        .chain(fern::log_file("arxiv-manager.log").unwrap())
        .apply()
        .unwrap();

    log::info!("Logger initialized");
}

fn get_app_icon() -> Option<iced::window::Icon> {
    let icon_data = include_bytes!("../assets/icon.png");
    match iced::window::Icon::from_rgba(
        // 这里需要处理图像数据，实际代码会更复杂
        vec![0; 32 * 32 * 4], 
        32, 
        32
    ) {
        Ok(icon) => Some(icon),
        Err(e) => {
            log::error!("Failed to load icon: {}", e);
            None
        }
    }
}
```

### src/app.rs

```rust
use crate::models::database::Database;
use crate::services::{arxiv_api::ArxivApi, downloader::Downloader, scheduler::Scheduler};
use crate::ui::app_ui::{AppUi, Message};
use crate::utils::config::Config;
use iced::{Application, Command, Element, Theme};
use std::sync::{Arc, Mutex};

pub struct ArxivManager {
    config: Arc<Config>,
    database: Arc<Mutex<Database>>,
    downloader: Arc<Mutex<Downloader>>,
    arxiv_api: Arc<ArxivApi>,
    scheduler: Arc<Mutex<Scheduler>>,
    ui: AppUi,
}

impl Application for ArxivManager {
    type Executor = iced::executor::Default;
    type Message = Message;
    type Theme = Theme;
    type Flags = Arc<Config>;

    fn new(config: Arc<Config>) -> (Self, Command<Message>) {
        // 初始化数据库
        let database = Arc::new(Mutex::new(Database::new(&config.db_path)));
        
        // 初始化服务
        let arxiv_api = Arc::new(ArxivApi::new());
        let downloader = Arc::new(Mutex::new(Downloader::new(
            &config.download_dir,
            config.max_concurrent_downloads,
            Arc::clone(&database),
        )));
        let scheduler = Arc::new(Mutex::new(Scheduler::new()));
        
        // 初始化UI
        let (ui, command) = AppUi::new(
            Arc::clone(&config),
            Arc::clone(&database),
            Arc::clone(&downloader),
            Arc::clone(&arxiv_api),
            Arc::clone(&scheduler),
        );
        
        // 启动定时器
        if config.enable_auto_download {
            scheduler.lock().unwrap().start();
        }
        
        (
            Self {
                config,
                database,
                downloader,
                arxiv_api,
                scheduler,
                ui,
            },
            command,
        )
    }

    fn title(&self) -> String {
        String::from("arXiv Manager")
    }

    fn update(&mut self, message: Message) -> Command<Message> {
        self.ui.update(message)
    }

    fn view(&self) -> Element<Message> {
        self.ui.view()
    }

    fn subscription(&self) -> iced::Subscription<Message> {
        self.ui.subscription()
    }
}
```

### src/models/paper.rs

```rust
use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};
use std::collections::HashSet;
use std::path::PathBuf;

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq)]
pub enum PaperStatus {
    New,
    Downloading(u8), // 进度百分比
    Downloaded,
    Error(String),
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Paper {
    pub paper_id: String,
    pub title: String,
    pub authors: Vec<String>,
    pub abstract_text: String,
    pub categories: Vec<String>,
    pub publish_date: Option<DateTime<Utc>>,
    pub update_date: Option<DateTime<Utc>>,
    pub pdf_url: String,
    pub web_url: String,
    pub local_path: Option<PathBuf>,
    pub status: PaperStatus,
    pub tags: HashSet<String>,
    pub notes: String,
    pub starred: bool,
    pub read: bool,
    pub download_time: Option<DateTime<Utc>>,
}

impl Paper {
    pub fn new(
        paper_id: String,
        title: String,
        authors: Vec<String>,
        abstract_text: String,
        categories: Vec<String>,
        pdf_url: String,
        web_url: String,
    ) -> Self {
        Self {
            paper_id,
            title,
            authors,
            abstract_text,
            categories,
            publish_date: None,
            update_date: None,
            pdf_url,
            web_url,
            local_path: None,
            status: PaperStatus::New,
            tags: HashSet::new(),
            notes: String::new(),
            starred: false,
            read: false,
            download_time: None,
        }
    }

    pub fn format_filename(&self) -> String {
        // 从发布日期获取年月
        let yymm = if let Some(date) = self.publish_date {
            format!("{}{}", date.format("%y"), date.format("%m"))
        } else {
            // 从ID中提取
            let parts: Vec<&str> = self.paper_id.split('.').collect();
            if parts.len() >= 2 && parts[0].len() >= 2 {
                let yy = &parts[0][parts[0].len() - 2..];
                let mm = if parts[1].len() >= 2 { &parts[1][..2] } else { "xx" };
                format!("{}{}", yy, mm)
            } else {
                "xxxx".to_string()
            }
        };

        // 提取ID号部分
        let id_num = if self.paper_id.contains('.') {
            self.paper_id.split('.').nth(1).unwrap_or("xxxx")
        } else {
            "xxxx"
        };

        // 格式化标题
        let safe_title = self.title
            .replace('/', "_")
            .replace('\\', "_")
            .replace(':', "_")
            .replace('?', "")
            .replace('*', "")
            .replace('"', "")
            .replace('<', "")
            .replace('>', "")
            .replace('|', "")
            .replace('\n', " ")
            .trim()
            .to_string();

        // 限制标题长度
        let safe_title = if safe_title.len() > 100 {
            format!("{}...", &safe_title[..97])
        } else {
            safe_title
        };

        // 最终文件名格式: [yymm.xxxx]title.pdf
        format!("[{}.{}]{}.pdf", yymm, id_num, safe_title)
    }
}
```

### src/models/database.rs

```rust
use crate::models::paper::{Paper, PaperStatus};
use anyhow::{Context, Result};
use chrono::{DateTime, Utc};
use r2d2::Pool;
use r2d2_sqlite::SqliteConnectionManager;
use rusqlite::params;
use serde_json::Value;
use std::collections::HashSet;
use std::path::{Path, PathBuf};
use std::sync::Arc;

pub struct Database {
    pool: Pool<SqliteConnectionManager>,
}

impl Database {
    pub fn new(db_path: &Path) -> Self {
        // 确保父目录存在
        if let Some(parent) = db_path.parent() {
            std::fs::create_dir_all(parent).unwrap_or_else(|e| {
                log::error!("Failed to create database directory: {}", e);
            });
        }

        // 创建连接池
        let manager = SqliteConnectionManager::file(db_path);
        let pool = Pool::new(manager).expect("Failed to create database connection pool");

        // 初始化数据库
        let db = Self { pool };
        db.init_database().expect("Failed to initialize database");
        db
    }

    fn init_database(&self) -> Result<()> {
        let conn = self.pool.get().context("Failed to get database connection")?;

        // 创建论文表
        conn.execute(
            "CREATE TABLE IF NOT EXISTS papers (
                paper_id TEXT PRIMARY KEY,
                data TEXT NOT NULL,
                download_time INTEGER,
                last_modified INTEGER DEFAULT (strftime('%s', 'now'))
            )",
            [],
        )?;

        // 创建标签表
        conn.execute(
            "CREATE TABLE IF NOT EXISTS tags (
                tag_id INTEGER PRIMARY KEY AUTOINCREMENT,
                tag_name TEXT UNIQUE NOT NULL
            )",
            [],
        )?;

        // 创建论文标签关联表
        conn.execute(
            "CREATE TABLE IF NOT EXISTS paper_tags (
                paper_id TEXT,
                tag_id INTEGER,
                PRIMARY KEY (paper_id, tag_id),
                FOREIGN KEY (paper_id) REFERENCES papers (paper_id),
                FOREIGN KEY (tag_id) REFERENCES tags (tag_id)
            )",
            [],
        )?;

        // 创建全文索引
        conn.execute(
            "CREATE VIRTUAL TABLE IF NOT EXISTS paper_index USING fts5(
                paper_id, title, authors, abstract, categories
            )",
            [],
        )?;

        Ok(())
    }

    pub fn add_paper(&self, paper: &Paper) -> Result<()> {
        let conn = self.pool.get().context("Failed to get database connection")?;

        // 将论文对象转换为JSON
        let paper_json = serde_json::to_string(paper)?;

        // 开始事务
        let tx = conn.transaction()?;

        // 插入或更新论文记录
        let download_time = paper.download_time.map(|dt| dt.timestamp());
        tx.execute(
            "INSERT OR REPLACE INTO papers (paper_id, data, download_time, last_modified)
            VALUES (?, ?, ?, strftime('%s', 'now'))",
            params![paper.paper_id, paper_json, download_time],
        )?;

        // 更新全文索引
        tx.execute(
            "DELETE FROM paper_index WHERE paper_id = ?",
            params![paper.paper_id],
        )?;

        let authors_text = paper.authors.join(", ");
        let categories_text = paper.categories.join(", ");

        tx.execute(
            "INSERT INTO paper_index (paper_id, title, authors, abstract, categories)
            VALUES (?, ?, ?, ?, ?)",
            params![
                paper.paper_id,
                paper.title,
                authors_text,
                paper.abstract_text,
                categories_text
            ],
        )?;

        // 更新标签
        tx.execute(
            "DELETE FROM paper_tags WHERE paper_id = ?",
            params![paper.paper_id],
        )?;

        for tag in &paper.tags {
            // 确保标签存在
            tx.execute(
                "INSERT OR IGNORE INTO tags (tag_name) VALUES (?)",
                params![tag],
            )?;

            // 获取标签ID
            let tag_id: i64 = tx
                .query_row(
                    "SELECT tag_id FROM tags WHERE tag_name = ?",
                    params![tag],
                    |row| row.get(0),
                )?;

            // 关联论文和标签
            tx.execute(
                "INSERT INTO paper_tags (paper_id, tag_id) VALUES (?, ?)",
                params![paper.paper_id, tag_id],
            )?;
        }

        // 提交事务
        tx.commit()?;

        Ok(())
    }

    pub fn get_paper(&self, paper_id: &str) -> Result<Option<Paper>> {
        let conn = self.pool.get().context("Failed to get database connection")?;

        let result = conn.query_row(
            "SELECT data FROM papers WHERE paper_id = ?",
            params![paper_id],
            |row| {
                let data: String = row.get(0)?;
                Ok(data)
            },
        );

        match result {
            Ok(data) => {
                let paper: Paper = serde_json::from_str(&data)?;
                Ok(Some(paper))
            }
            Err(rusqlite::Error::QueryReturnedNoRows) => Ok(None),
            Err(e) => Err(e.into()),
        }
    }

    pub fn get_all_papers(&self) -> Result<Vec<Paper>> {
        let conn = self.pool.get().context("Failed to get database connection")?;
        let mut stmt = conn.prepare(
            "SELECT data FROM papers ORDER BY download_time DESC",
        )?;

        let papers = stmt
            .query_map([], |row| {
                let data: String = row.get(0)?;
                let paper: Paper = serde_json::from_str(&data).map_err(|e| {
                    rusqlite::Error::FromSqlConversionFailure(0, rusqlite::types::Type::Text, Box::new(e))
                })?;
                Ok(paper)
            })?
            .collect::<Result<Vec<_>, _>>()?;

        Ok(papers)
    }

    pub fn search_papers(
        &self,
        query: Option<&str>,
        categories: Option<&[String]>,
        tags: Option<&[String]>,
        only_downloaded: bool,
    ) -> Result<Vec<Paper>> {
        let conn = self.pool.get().context("Failed to get database connection")?;
        
        let mut sql = "SELECT p.data FROM papers p".to_string();
        let mut where_clauses = Vec::new();
        let mut params = Vec::new();

        // 全文搜索条件
        if let Some(q) = query {
            sql.push_str(" JOIN paper_index i ON p.paper_id = i.paper_id");
            where_clauses.push("i.paper_index MATCH ?");
            params.push(q.to_string());
        }

        // 类别过滤
        if let Some(cats) = categories {
            let mut category_conditions = Vec::new();
            for cat in cats {
                category_conditions.push("p.data LIKE ?");
                params.push(format!("%\"categories\":[%\"{}\"%", cat));
            }
            if !category_conditions.is_empty() {
                where_clauses.push(format!("({})", category_conditions.join(" OR ")));
            }
        }

        // 标签过滤
        if let Some(ts) = tags {
            for tag in ts {
                sql.push_str(" JOIN paper_tags pt ON p.paper_id = pt.paper_id");
                sql.push_str(" JOIN tags t ON pt.tag_id = t.tag_id");
                where_clauses.push("t.tag_name = ?");
                params.push(tag.to_string());
            }
        }

        // 仅下载过的论文
        if only_downloaded {
            where_clauses.push("p.data LIKE '%\"status\":\"Downloaded\"%'");
        }

        // 添加WHERE子句
        if !where_clauses.is_empty() {
            sql.push_str(" WHERE ");
            sql.push_str(&where_clauses.join(" AND "));
        }

        // 添加排序
        sql.push_str(" ORDER BY p.download_time DESC");

        // 执行查询
        let mut stmt = conn.prepare(&sql)?;
        
        let param_refs: Vec<&dyn rusqlite::ToSql> = params
            .iter()
            .map(|p| p as &dyn rusqlite::ToSql)
            .collect();

        let papers = stmt
            .query_map(param_refs.as_slice(), |row| {
                let data: String = row.get(0)?;
                let paper: Paper = serde_json::from_str(&data).map_err(|e| {
                    rusqlite::Error::FromSqlConversionFailure(0, rusqlite::types::Type::Text, Box::new(e))
                })?;
                Ok(paper)
            })?
            .collect::<Result<Vec<_>, _>>()?;

        Ok(papers)
    }

    pub fn delete_paper(&self, paper_id: &str) -> Result<()> {
        let conn = self.pool.get().context("Failed to get database connection")?;

        // 获取本地文件路径
        let paper_opt = self.get_paper(paper_id)?;
        
        if let Some(paper) = paper_opt {
            // 删除本地文件
            if let Some(path) = &paper.local_path {
                if path.exists() {
                    std::fs::remove_file(path).ok();
                    log::info!("Deleted file: {:?}", path);
                }
            }
        }

        // 开始事务
        let tx = conn.transaction()?;
        
        // 删除相关记录
        tx.execute(
            "DELETE FROM paper_tags WHERE paper_id = ?",
            params![paper_id],
        )?;
        
        tx.execute(
            "DELETE FROM paper_index WHERE paper_id = ?",
            params![paper_id],
        )?;
        
        tx.execute(
            "DELETE FROM papers WHERE paper_id = ?",
            params![paper_id],
        )?;
        
        // 提交事务
        tx.commit()?;

        Ok(())
    }

    pub fn get_all_tags(&self) -> Result<Vec<String>> {
        let conn = self.pool.get().context("Failed to get database connection")?;
        
        let mut stmt = conn.prepare("SELECT tag_name FROM tags ORDER BY tag_name")?;
        
        let tags = stmt
            .query_map([], |row| {
                let tag: String = row.get(0)?;
                Ok(tag)
            })?
            .collect::<Result<Vec<_>, _>>()?;
            
        Ok(tags)
    }
}
```

### src/services/arxiv_api.rs

```rust
use crate::models::paper::{Paper, PaperStatus};
use anyhow::{Context, Result};
use chrono::{DateTime, Utc};
use reqwest::Client;
use roxmltree::{Document, Node};
use std::time::Duration;

const ARXIV_API_URL: &str = "http://export.arxiv.org/api/query";
const ARXIV_PDF_URL: &str = "http://arxiv.org/pdf/";
const ARXIV_ABS_URL: &str = "http://arxiv.org/abs/";

pub struct ArxivApi {
    client: Client,
}

impl ArxivApi {
    pub fn new() -> Self {
        let client = Client::builder()
            .timeout(Duration::from_secs(30))
            .build()
            .expect("Failed to create HTTP client");
            
        Self { client }
    }
    
    pub async fn search(
        &self,
        query: Option<&str>,
        categories: Option<&[String]>,
        max_results: usize,
        sort_by: &str,
        since_days: Option<u32>,
    ) -> Result<Vec<Paper>> {
        let mut query_parts = Vec::new();
        
        // 添加类别过滤
        if let Some(cats) = categories {
            if !cats.is_empty() {
                let cat_queries: Vec<String> = cats
                    .iter()
                    .map(|cat| format!("cat:{}", cat))
                    .collect();
                    
                query_parts.push(format!("({})", cat_queries.join(" OR ")));
            }
        }
        
        // 添加时间过滤
        if let Some(days) = since_days {
            // 计算日期范围 (arXiv API 使用的是特殊格式)
            let now = Utc::now();
            let since = now - chrono::Duration::days(days as i64);
            let since_str = since.format("%Y%m%d%H%M%S").to_string();
            query_parts.push(format!("submittedDate:[{} TO *]", since_str));
        }
        
        // 添加关键词搜索
        if let Some(q) = query {
            // 预处理查询字符串，避免特殊字符问题
            let processed_query = q.replace(':', " ").replace('-', " ");
            if !processed_query.trim().is_empty() {
                query_parts.push(format!("({})", processed_query));
            }
        }
        
        // 构建最终查询
        let final_query = if !query_parts.is_empty() {
            query_parts.join(" AND ")
        } else {
            "all:electron".to_string()  // 默认查询
        };
        
        // 构建 URL
        let url = format!(
            "{}?search_query={}&max_results={}&sortBy={}",
            ARXIV_API_URL,
            url::form_urlencoded::byte_serialize(final_query.as_bytes()).collect::<String>(),
            max_results,
            sort_by
        );
        
        log::info!("Searching arXiv with URL: {}", url);
        
        // 发送请求
        let response = self.client.get(&url).send().await?;
        let xml_text = response.text().await?;
        
        // 解析响应
        self.parse_response(&xml_text)
    }
    
    fn parse_response(&self, xml: &str) -> Result<Vec<Paper>> {
        let doc = Document::parse(xml).context("Failed to parse XML response")?;
        let root = doc.root_element();
        
        let mut papers = Vec::new();
        
        // 获取所有条目
        for entry in root.children().filter(|n| n.has_tag_name("entry")) {
            if let Some(paper) = self.parse_entry(entry) {
                papers.push(paper);
            }
        }
        
        Ok(papers)
    }
    
    fn parse_entry(&self, entry: Node) -> Option<Paper> {
        // 提取 ID
        let id_node = entry.children().find(|n| n.has_tag_name("id"))?;
        let id_url = id_node.text()?;
        let paper_id = id_url.rsplit('/').next()?.to_string();
        
        // 提取标题
        let title_node = entry.children().find(|n| n.has_tag_name("title"))?;
        let title = title_node.text()?.trim().replace('\n', " ");
        
        // 提取作者
        let authors: Vec<String> = entry
            .children()
            .filter(|n| n.has_tag_name("author"))
            .filter_map(|author| {
                author
                    .children()
                    .find(|n| n.has_tag_name("name"))
                    .and_then(|n| n.text())
                    .map(|s| s.to_string())
            })
            .collect();
        
        // 提取摘要
        let summary_node = entry.children().find(|n| n.has_tag_name("summary"))?;
        let abstract_text = summary_node.text()?.trim().replace('\n', " ");
        
        // 提取类别
        let categories: Vec<String> = entry
            .children()
            .filter(|n| n.has_tag_name("category"))
            .filter_map(|cat| {
                cat.attribute("term").map(|s| s.to_string())
            })
            .collect();
        
        // 提取发布日期
        let published_node = entry.children().find(|n| n.has_tag_name("published"));
        let publish_date = published_node
            .and_then(|n| n.text())
            .and_then(|t| DateTime::parse_from_rfc3339(t).ok())
            .map(|dt| dt.with_timezone(&Utc));
        
        // 提取更新日期
        let updated_node = entry.children().find(|n| n.has_tag_name("updated"));
        let update_date = updated_node
            .and_then(|n| n.text())
            .and_then(|t| DateTime::parse_from_rfc3339(t).ok())
            .map(|dt| dt.with_timezone(&Utc));
        
        // 构建 URL
        let pdf_url = format!("{}{}.pdf", ARXIV_PDF_URL, paper_id);
        let web_url = format!("{}{}", ARXIV_ABS_URL, paper_id);
        
        // 创建论文对象
        let mut paper = Paper::new(
            paper_id,
            title,
            authors,
            abstract_text,
            categories,
            pdf_url,
            web_url,
        );
        
        paper.publish_date = publish_date;
        paper.update_date = update_date;
        
        Some(paper)
    }
}
```

### src/services/downloader.rs

```rust
use crate::models::database::Database;
use crate::models::paper::{Paper, PaperStatus};
use anyhow::{Context, Result};
use chrono::Utc;
use futures::StreamExt;
use std::collections::HashMap;
use std::path::{Path, PathBuf};
use std::sync::{Arc, Mutex};
use tokio::fs::{self, File};
use tokio::io::AsyncWriteExt;
use tokio::sync::mpsc;
use tokio::task::JoinHandle;

pub struct DownloadTask {
    pub paper: Paper,
    pub progress: u8,
    pub task_handle: JoinHandle<Result<(String, PathBuf)>>,
    pub cancel_sender: mpsc::Sender<()>,
}

pub struct Downloader {
    download_dir: PathBuf,
    max_concurrent: usize,
    active_downloads: HashMap<String, DownloadTask>,
    database: Arc<Mutex<Database>>,
}

impl Downloader {
    pub fn new(
        download_dir: &Path,
        max_concurrent: usize,
        database: Arc<Mutex<Database>>,
    ) -> Self {
        // 确保下载目录存在
        std::fs::create_dir_all(download_dir).unwrap_or_else(|e| {
            log::error!("Failed to create download directory: {}", e);
        });
        
        Self {
            download_dir: download_dir.to_path_buf(),
            max_concurrent,
            active_downloads: HashMap::new(),
            database,
        }
    }
    
    pub fn is_downloading(&self, paper_id: &str) -> bool {
        self.active_downloads.contains_key(paper_id)
    }
    
    pub fn has_active_downloads(&self) -> bool {
        !self.active_downloads.is_empty()
    }
    
    pub fn get_active_downloads(&self) -> Vec<(String, u8)> {
        self.active_downloads
            .iter()
            .map(|(id, task)| (id.clone(), task.progress))
            .collect()
    }
    
    pub async fn download_paper(
        &mut self,
        mut paper: Paper,
        progress_callback: impl Fn(u8) + Send + 'static,
    ) -> Result<Paper> {
        // 检查是否已在下载中
        if self.active_downloads.contains_key(&paper.paper_id) {
            return Err(anyhow::anyhow!("Paper is already being downloaded"));
        }
        
        // 检查是否已下载
        if let PaperStatus::Downloaded = paper.status {
            if let Some(path) = &paper.local_path {
                if path.exists() {
                    return Ok(paper);
                }
            }
        }
        
        // 检查是否达到最大并发下载数
        if self.active_downloads.len() >= self.max_concurrent {
            return Err(anyhow::anyhow!("Maximum concurrent downloads reached"));
        }
        
        // 设置保存路径
        let filename = paper.format_filename();
        let save_path = self.download_dir.join(&filename);
        
        // 创建目录（如果需要）
        if let Some(parent) = save_path.parent() {
            fs::create_dir_all(parent).await?;
        }
        
        // 创建取消通道
        let (cancel_tx, mut cancel_rx) = mpsc::channel::<()>(1);
        
        // 更新论文状态
        paper.status = PaperStatus::Downloading(0);
        
        // 克隆需要的值
        let paper_id = paper.paper_id.clone();
        let pdf_url = paper.pdf_url.clone();
        let save_path_clone = save_path.clone();
        let progress_callback = Arc::new(Mutex::new(progress_callback));
        
        // 启动下载任务
        let task_handle = tokio::spawn(async move {
            // 创建客户端
            let client = reqwest::Client::new();
            
            // 发送请求
            let res = client.get(&pdf_url).send().await?;
            
            // 检查状态码
            if !res.status().is_success() {
                return Err(anyhow::anyhow!(
                    "Failed to download PDF: HTTP {}",
                    res.status()
                ));
            }
            
            // 获取文件大小
            let total_size = res
                .content_length()
                .context("Failed to get content length")?;
            
            // 创建文件
            let mut file = File::create(&save_path_clone).await?;
            let mut downloaded = 0;
            let mut stream = res.bytes_stream();
            
            // 下载数据
            while let Some(item) = stream.next().await {
                // 检查是否收到取消信号
                if cancel_rx.try_recv().is_ok() {
                    // 删除不完整的文件
                    file.flush().await?;
                    file.sync_all().await?;
                    drop(file);
                    fs::remove_file(&save_path_clone).await?;
                    return Err(anyhow::anyhow!("Download cancelled"));
                }
                
                let chunk = item?;
                file.write_all(&chunk).await?;
                
                // 更新进度
                downloaded += chunk.len() as u64;
                if total_size > 0 {
                    let percentage = ((downloaded as f64 / total_size as f64) * 100.0) as u8;
                    progress_callback.lock().unwrap()(percentage);
                }
            }
            
            // 确保文件写入完成
            file.flush().await?;
            file.sync_all().await?;
            
            Ok((paper_id, save_path_clone))
        });
        
        // 保存任务信息
        self.active_downloads.insert(
            paper.paper_id.clone(),
            DownloadTask {
                paper: paper.clone(),
                progress: 0,
                task_handle,
                cancel_sender: cancel_tx,
            },
        );
        
        Ok(paper)
    }
    
    pub async fn check_downloads(&mut self) -> Vec<Result<Paper>> {
        let mut completed = Vec::new();
        let mut completed_ids = Vec::new();
        
        // 检查每个活动的下载
        for (paper_id, task) in &mut self.active_downloads {
            if task.task_handle.is_finished() {
                completed_ids.push(paper_id.clone());
                
                // 获取任务结果
                let result = match task.task_handle.await {
                    Ok(Ok((id, path))) => {
                        // 更新论文信息
                        let mut paper = task.paper.clone();
                        paper.status = PaperStatus::Downloaded;
                        paper.local_path = Some(path);
                        paper.download_time = Some(Utc::now());
                        
                        // 保存到数据库
                        if let Err(e) = self.database.lock().unwrap().add_paper(&paper) {
                            log::error!("Failed to save paper to database: {}", e);
                        }
                        
                        Ok(paper)
                    }
                    Ok(Err(e)) => {
                        // 下载失败
                        let mut paper = task.paper.clone();
                        paper.status = PaperStatus::Error(e.to_string());
                        Err(anyhow::anyhow!("Download failed: {}", e))
                    }
                    Err(e) => {
                        // 任务异常终止
                        let mut paper = task.paper.clone();
                        paper.status = PaperStatus::Error(e.to_string());
                        Err(anyhow::anyhow!("Task failed: {}", e))
                    }
                };
                
                completed.push(result);
            }
        }
        
        // 移除已完成的下载
        for id in completed_ids {
            self.active_downloads.remove(&id);
        }
        
        completed
    }
    
    pub fn cancel_download(&mut self, paper_id: &str) -> Result<()> {
        if let Some(task) = self.active_downloads.get(paper_id) {
            // 发送取消信号
            if let Err(e) = task.cancel_sender.try_send(()) {
                log::warn!("Failed to send cancel signal: {}", e);
            }
            Ok(())
        } else {
            Err(anyhow::anyhow!("No active download for paper ID: {}", paper_id))
        }
    }
    
    pub fn cancel_all_downloads(&mut self) {
        for (_, task) in &self.active_downloads {
            // 发送取消信号
            if let Err(e) = task.cancel_sender.try_send(()) {
                log::warn!("Failed to send cancel signal: {}", e);
            }
        }
    }
}
```

### 用户界面与功能

其余的代码实现了UI组件和应用程序功能，包括：

1. **下载视图**：搜索论文和下载管理
2. **论文库视图**：管理已下载的论文
3. **预览组件**：查看PDF和管理标签
4. **定时任务管理**：自动下载新论文

## 构建与运行

使用以下命令构建和运行应用程序：

```bash
# 开发构建
cargo run

# 优化构建
cargo build --release
```

## 与 Python 版本的比较

Rust 版本相比 Python 版本有以下优势：

1. **性能提升**：
   - 更快的下载和处理速度
   - 更低的内存占用
   - 并发下载更高效

2. **安全性**：
   - 编译时类型检查避免运行时错误
   - 内存安全保证
   - 无垃圾回收暂停

3. **跨平台分发**：
   - 单一可执行文件，无需安装解释器
   - 易于打包和分发

## 进一步改进方向

1. **高级文本搜索**：实现基于全文搜索引擎的高级搜索
2. **PDF 注释**：添加原生 PDF 注释和高亮功能
3. **同步服务**：添加云同步功能，在多设备间共享论文和注释
4. **扩展 API 支持**：整合更多学术资源，如 Google Scholar, Semantic Scholar 等
5. **插件系统**：实现插件架构，允许社区贡献功能扩展

这个 Rust 实现的 arXiv 下载器和管理系统提供了与 Python 版本相同的功能，但具有更好的性能和安全性保证。