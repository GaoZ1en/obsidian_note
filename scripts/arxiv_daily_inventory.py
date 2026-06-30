#!/usr/bin/env python3
"""Fetch and compact official arXiv daily list pages.

This script is intentionally dependency-free. It turns arXiv category `/new`
pages into a deduplicated inventory that a reading workflow can classify
without spending context on HTML parsing.
"""

from __future__ import annotations

import argparse
import html
import json
import re
import sys
import time
import urllib.error
import urllib.request
from dataclasses import dataclass, field
from datetime import datetime, timezone
from html.parser import HTMLParser
from pathlib import Path
from typing import Iterable


DEFAULT_CATEGORIES = ("hep-th", "gr-qc", "math-ph")
STATUS_ORDER = {"new": 0, "cross": 1, "replacement": 2, "unknown": 3}
FIELD_CLASSES = {
    "list-title": "title",
    "list-authors": "authors",
    "list-comments": "comments",
    "list-subjects": "subjects",
}


@dataclass
class SourceEntry:
    arxiv_id: str
    title: str = ""
    authors: str = ""
    comments: str = ""
    subjects_text: str = ""
    subject_codes: list[str] = field(default_factory=list)
    source_category: str = ""
    listing_status: str = "unknown"


@dataclass
class InventoryEntry:
    arxiv_id: str
    title: str = ""
    authors: str = ""
    comments: str = ""
    subject_codes: list[str] = field(default_factory=list)
    source_status: dict[str, str] = field(default_factory=dict)


def collapse_ws(text: str) -> str:
    compact = re.sub(r"\s+", " ", html.unescape(text)).strip()
    return re.sub(r"\s+([,.;:])", r"\1", compact)


def arxiv_base_id(arxiv_id: str) -> str:
    return re.sub(r"v\d+\Z", "", arxiv_id)


def normalize_status(text: str) -> str:
    low = text.lower()
    if "new submission" in low:
        return "new"
    if "cross" in low:
        return "cross"
    if "replacement" in low:
        return "replacement"
    return "unknown"


def subject_codes(subjects_text: str) -> list[str]:
    codes = re.findall(r"\(([a-z][a-z0-9.-]+)\)", subjects_text)
    return sorted(dict.fromkeys(codes))


def class_tokens(attrs: list[tuple[str, str | None]]) -> set[str]:
    for key, value in attrs:
        if key == "class" and value:
            return set(value.split())
    return set()


class ArxivListParser(HTMLParser):
    def __init__(self, source_category: str) -> None:
        super().__init__(convert_charrefs=False)
        self.source_category = source_category
        self.current_status = "unknown"
        self.in_h3 = False
        self.h3_parts: list[str] = []
        self.in_dt = False
        self.dt_parts: list[str] = []
        self.dt_abs_id = ""
        self.in_dd = False
        self.dd_parts: list[str] = []
        self.active_field = ""
        self.active_field_depth = 0
        self.field_parts: dict[str, list[str]] = {}
        self.pending_id = ""
        self.in_title = False
        self.title_parts: list[str] = []
        self.list_heading = ""
        self.entries: list[SourceEntry] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        attrs_dict = {key: value or "" for key, value in attrs}
        if tag == "title":
            self.in_title = True
            self.title_parts = []
        elif tag == "h3":
            self.in_h3 = True
            self.h3_parts = []
        elif tag == "dt":
            self.in_dt = True
            self.dt_parts = []
            self.dt_abs_id = ""
        elif tag == "dd":
            self.in_dd = True
            self.dd_parts = []
            self.active_field = ""
            self.active_field_depth = 0
            self.field_parts = {}

        if self.in_dt and tag == "a":
            href = attrs_dict.get("href", "")
            match = re.search(r"/abs/([0-9]{4}\.[0-9]{4,5}(?:v\d+)?)", href)
            if match:
                self.dt_abs_id = match.group(1)

        if self.in_dd:
            field_name = next(
                (FIELD_CLASSES[token] for token in class_tokens(attrs) if token in FIELD_CLASSES),
                "",
            )
            if field_name:
                self.active_field = field_name
                self.active_field_depth = 1
                self.field_parts.setdefault(field_name, [])
            elif self.active_field:
                self.active_field_depth += 1

    def handle_data(self, data: str) -> None:
        if self.in_title:
            self.title_parts.append(data)
        if self.in_h3:
            self.h3_parts.append(data)
        if self.in_dt:
            self.dt_parts.append(data)
        if self.in_dd:
            self.dd_parts.append(data)
            if self.active_field:
                self.field_parts.setdefault(self.active_field, []).append(data)

    def handle_endtag(self, tag: str) -> None:
        if tag == "title":
            self.in_title = False
        elif tag == "h3":
            h3_text = collapse_ws(" ".join(self.h3_parts))
            if h3_text.startswith("Showing new listings for"):
                self.list_heading = h3_text
            status = normalize_status(h3_text)
            if status != "unknown":
                self.current_status = status
            self.in_h3 = False
        elif tag == "dt":
            dt_text = collapse_ws(" ".join(self.dt_parts))
            match = re.search(r"arXiv:([0-9]{4}\.[0-9]{4,5}(?:v\d+)?)", dt_text)
            self.pending_id = match.group(1) if match else self.dt_abs_id
            self.in_dt = False
        elif tag == "dd":
            dd_text = collapse_ws(" ".join(self.dd_parts))
            fields = {
                name: re.sub(r"\A[A-Za-z-]+:\s*", "", collapse_ws(" ".join(parts)))
                for name, parts in self.field_parts.items()
            }
            if self.pending_id:
                subjects = fields.get("subjects", "")
                self.entries.append(
                    SourceEntry(
                        arxiv_id=self.pending_id,
                        title=fields.get("title", ""),
                        authors=fields.get("authors", ""),
                        comments=fields.get("comments", ""),
                        subjects_text=subjects,
                        subject_codes=subject_codes(subjects),
                        source_category=self.source_category,
                        listing_status=self.current_status,
                    )
                )
            self.pending_id = ""
            self.in_dd = False
        if self.in_dd and self.active_field:
            self.active_field_depth -= 1
            if self.active_field_depth <= 0:
                self.active_field = ""

    @property
    def page_title(self) -> str:
        return self.list_heading or collapse_ws(" ".join(self.title_parts))


def build_opener(use_system_proxy: bool) -> urllib.request.OpenerDirector:
    if use_system_proxy:
        return urllib.request.build_opener()
    return urllib.request.build_opener(urllib.request.ProxyHandler({}))


def fetch_text(
    url: str,
    timeout: int,
    opener: urllib.request.OpenerDirector,
    retries: int,
    retry_sleep: float,
) -> str:
    attempts = max(1, retries)
    last_error: BaseException | None = None

    for attempt in range(attempts):
        request = urllib.request.Request(
            url,
            headers={
                "User-Agent": "CodexArxivInventory/0.1 (+https://arxiv.org)",
                "Accept": "text/html,application/xhtml+xml",
            },
        )
        try:
            with opener.open(request, timeout=timeout) as response:
                return response.read().decode("utf-8", errors="replace")
        except (OSError, TimeoutError, urllib.error.URLError) as exc:
            last_error = exc
            if attempt + 1 >= attempts:
                break
            if retry_sleep > 0:
                time.sleep(retry_sleep)

    if last_error is not None:
        raise last_error
    raise RuntimeError("fetch failed without an exception")


def parse_category(category: str, html_text: str) -> tuple[str, list[SourceEntry]]:
    parser = ArxivListParser(category)
    parser.feed(html_text)
    return parser.page_title, parser.entries


def merge_entries(entries: Iterable[SourceEntry]) -> list[InventoryEntry]:
    merged: dict[str, InventoryEntry] = {}
    for entry in entries:
        key = arxiv_base_id(entry.arxiv_id)
        current = merged.setdefault(key, InventoryEntry(arxiv_id=key))
        if not current.title and entry.title:
            current.title = entry.title
        if not current.authors and entry.authors:
            current.authors = entry.authors
        if not current.comments and entry.comments:
            current.comments = entry.comments
        for code in entry.subject_codes:
            if code not in current.subject_codes:
                current.subject_codes.append(code)
        current.source_status[entry.source_category] = entry.listing_status

    def sort_key(item: InventoryEntry) -> tuple[int, str]:
        best_status = min(
            (STATUS_ORDER.get(status, 3) for status in item.source_status.values()),
            default=3,
        )
        return best_status, item.arxiv_id

    result = sorted(merged.values(), key=sort_key)
    for item in result:
        item.subject_codes = sorted(item.subject_codes)
    return result


def escape_md(text: str) -> str:
    return collapse_ws(text).replace("|", "\\|")


def status_cell(entry: InventoryEntry) -> str:
    parts = [
        f"{category}:{entry.source_status[category]}"
        for category in sorted(entry.source_status)
    ]
    return "; ".join(parts)


def to_markdown(entries: list[InventoryEntry], source_titles: dict[str, str]) -> str:
    lines = [
        "# arXiv Daily Inventory",
        "",
        f"Fetched at: {datetime.now(timezone.utc).isoformat()}",
        "",
        "Sources:",
    ]
    for category, title in source_titles.items():
        lines.append(f"- `{category}`: {escape_md(title) or 'arXiv list page'}")
    lines.extend(
        [
            "",
            f"Total deduplicated entries: {len(entries)}",
            "",
            "| arXiv | source status | subjects | title | authors | comments |",
            "|---|---|---|---|---|---|",
        ]
    )
    for entry in entries:
        arxiv_link = f"[{entry.arxiv_id}](https://arxiv.org/abs/{entry.arxiv_id})"
        lines.append(
            "| "
            + " | ".join(
                [
                    arxiv_link,
                    escape_md(status_cell(entry)),
                    escape_md(", ".join(entry.subject_codes)),
                    escape_md(entry.title),
                    escape_md(entry.authors),
                    escape_md(entry.comments),
                ]
            )
            + " |"
        )
    return "\n".join(lines) + "\n"


def to_json(entries: list[InventoryEntry], source_titles: dict[str, str]) -> str:
    payload = {
        "fetched_at_utc": datetime.now(timezone.utc).isoformat(),
        "sources": [
            {
                "category": category,
                "url": f"https://arxiv.org/list/{category}/new",
                "title": title,
            }
            for category, title in source_titles.items()
        ],
        "entries": [
            {
                "arxiv_id": entry.arxiv_id,
                "abs_url": f"https://arxiv.org/abs/{entry.arxiv_id}",
                "source_status": entry.source_status,
                "subject_codes": entry.subject_codes,
                "title": entry.title,
                "authors": entry.authors,
                "comments": entry.comments,
            }
            for entry in entries
        ],
    }
    return json.dumps(payload, ensure_ascii=False, indent=2) + "\n"


def parse_html_file_arg(value: str) -> tuple[str, Path]:
    if "=" not in value:
        raise argparse.ArgumentTypeError("expected CATEGORY=PATH")
    category, path = value.split("=", 1)
    if not category:
        raise argparse.ArgumentTypeError("empty category")
    return category, Path(path)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Fetch official arXiv /new pages and print a compact daily inventory."
    )
    parser.add_argument(
        "--categories",
        nargs="+",
        default=list(DEFAULT_CATEGORIES),
        help="arXiv categories to fetch; default: hep-th gr-qc math-ph",
    )
    parser.add_argument(
        "--format",
        choices=("markdown", "json"),
        default="markdown",
        help="output format",
    )
    parser.add_argument(
        "--output",
        type=Path,
        help="write output to this file instead of stdout",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=30,
        help="network timeout in seconds",
    )
    parser.add_argument(
        "--sleep",
        type=float,
        default=1.0,
        help="seconds to sleep between network requests",
    )
    parser.add_argument(
        "--retries",
        type=int,
        default=3,
        help="network attempts per category; default: 3",
    )
    parser.add_argument(
        "--retry-sleep",
        type=float,
        default=2.0,
        help="seconds to sleep between retry attempts",
    )
    parser.add_argument(
        "--use-system-proxy",
        action="store_true",
        help="use macOS/environment proxy settings instead of direct arXiv connections",
    )
    parser.add_argument(
        "--html-file",
        action="append",
        type=parse_html_file_arg,
        default=[],
        metavar="CATEGORY=PATH",
        help="parse a saved arXiv HTML file for one category instead of fetching it",
    )
    parser.add_argument(
        "--allow-partial",
        action="store_true",
        help="continue if one category fails to fetch or parse",
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    html_files = dict(args.html_file)
    opener = build_opener(args.use_system_proxy)
    source_titles: dict[str, str] = {}
    source_entries: list[SourceEntry] = []
    errors: list[str] = []

    for index, category in enumerate(args.categories):
        try:
            if category in html_files:
                html_text = html_files[category].read_text(encoding="utf-8")
            else:
                if index > 0 and args.sleep > 0:
                    time.sleep(args.sleep)
                html_text = fetch_text(
                    f"https://arxiv.org/list/{category}/new",
                    timeout=args.timeout,
                    opener=opener,
                    retries=args.retries,
                    retry_sleep=args.retry_sleep,
                )
            title, entries = parse_category(category, html_text)
            source_titles[category] = title
            source_entries.extend(entries)
        except (OSError, urllib.error.URLError, TimeoutError) as exc:
            message = f"{category}: {exc}"
            if args.allow_partial:
                errors.append(message)
                continue
            print(f"error: {message}", file=sys.stderr)
            return 1

    entries = merge_entries(source_entries)
    if args.format == "json":
        output = to_json(entries, source_titles)
    else:
        output = to_markdown(entries, source_titles)
        if errors:
            output += "\nPartial failures:\n" + "\n".join(f"- {error}" for error in errors) + "\n"

    if args.output:
        args.output.write_text(output, encoding="utf-8")
    else:
        print(output, end="")
    return 0 if not errors else 2


if __name__ == "__main__":
    raise SystemExit(main())
