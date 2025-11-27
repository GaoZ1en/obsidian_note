#!/usr/bin/env bash

# git-auto.sh — 定时 git add / commit 的小工具
# 用法：
#   git-auto.sh add
#   git-auto.sh commit [--push]
#   git-auto.sh --repo /path/to/repo add
#   git-auto.sh --repo /path/to/repo commit [--push]
#
# 说明：
# - 带 flock 锁，避免并发冲突。
# - commit 会先执行一次 add -A，只在有变更时提交。
# - 可用环境变量 REPO_DIR 指定仓库目录；也可用 --repo 显式指定；
#   默认使用 DEFAULT_REPO_DIR（若设置），否则取本脚本两级上层的 git 根目录。
# - 使用者无需 sudo；建议在 crontab 中调用本脚本。

set -euo pipefail

log() { printf "[%s] %s\n" "$(date '+%F %T')" "$*"; }
err() { printf "[%s] ERROR: %s\n" "$(date '+%F %T')" "$*" 1>&2; }

# 解析脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 可选：手动指定仓库默认位置（可被 --repo 或环境变量 REPO_DIR 覆盖）
DEFAULT_REPO_DIR="/home/koishi/Documents/Note"

# 参数解析：支持 --repo PATH 放在动作参数之前
REPO_FROM_ARG=""
if [[ "${1:-}" == "--repo" || "${1:-}" == --repo=* ]]; then
  if [[ "$1" == --repo=* ]]; then
    REPO_FROM_ARG="${1#*=}"
    shift
  else
    REPO_FROM_ARG="${2:-}"
    if [[ -z "${REPO_FROM_ARG}" ]]; then
      err "缺少 --repo 的路径参数"
      exit 2
    fi
    shift 2
  fi
fi

# 推断仓库根目录（允许用 REPO_DIR 覆盖）
if [[ -n "${REPO_FROM_ARG}" ]]; then
  REPO_DIR="${REPO_FROM_ARG}"
elif [[ -n "${REPO_DIR:-}" ]]; then
  REPO_DIR="${REPO_DIR}"
elif [[ -n "${DEFAULT_REPO_DIR:-}" ]]; then
  REPO_DIR="${DEFAULT_REPO_DIR}"
else
  # 优先用 git 推断；失败则退回到脚本上两级目录
  if REPO_TOP=$(git -C "${SCRIPT_DIR}/../.." rev-parse --show-toplevel 2>/dev/null); then
    REPO_DIR="${REPO_TOP}"
  else
    REPO_DIR="$(realpath "${SCRIPT_DIR}/../..")"
  fi
fi

if [[ ! -d "${REPO_DIR}/.git" ]]; then
  err "未找到 Git 仓库：${REPO_DIR}"
  exit 1
fi

ACTION=${1:-}
[[ -z "${ACTION}" ]] && { err "缺少动作参数：add | commit [--push]"; exit 2; }
PUSH=false
if [[ "${ACTION}" == "commit" && "${2:-}" == "--push" ]]; then
  PUSH=true
fi

# 锁文件，避免并发；如果被占用，静默退出
LOCK_FILE="${REPO_DIR}/.git/.git-auto.lock"
exec 200>"${LOCK_FILE}"
if ! flock -n 200; then
  log "已有任务在运行，跳过本次 (${ACTION})."
  exit 0
fi

# 确保 PATH 可找到 git（cron 环境可能精简）
export PATH="/usr/local/bin:/usr/bin:/bin:${PATH}"

git_c() { git -C "${REPO_DIR}" "$@"; }

# 简单的配置检查（在非交互环境避免提交失败）
ensure_git_identity() {
  if ! git_c config user.name >/dev/null; then
    err "未设置 user.name（git config）。请在仓库中运行：git config user.name 'Your Name'"
    return 1
  fi
  if ! git_c config user.email >/dev/null; then
    err "未设置 user.email。请在仓库中运行：git config user.email 'you@example.com'"
    return 1
  fi
}

case "${ACTION}" in
  add)
    log "开始 git add -A ..."
    git_c add -A
    # 仅记录当前状态简述
    CHANGES=$(git_c status --porcelain | wc -l | tr -d ' ')
    log "已暂存变更：${CHANGES} 项"
    ;;
  commit)
    ensure_git_identity || exit 3
    log "准备每日提交（先 add -A）..."
    git_c add -A
    if git_c diff --cached --quiet; then
      log "无待提交变更，跳过提交。"
      exit 0
    fi
    BRANCH=$(git_c rev-parse --abbrev-ref HEAD)
    MSG="Daily snapshot: $(date '+%F')"
    log "提交到分支 ${BRANCH}: ${MSG}"
    git_c commit -m "${MSG}"
    if ${PUSH}; then
      # 检查是否设置了上游
      if git_c rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1; then
        log "推送到远端..."
        git_c push
      else
        err "未检测到上游分支，跳过 push（可先执行 git push -u origin ${BRANCH}）。"
      fi
    fi
    ;;
  *)
    err "未知动作：${ACTION}（支持 add | commit [--push]）"
    exit 2
    ;;
esac

log "完成 ${ACTION}."
