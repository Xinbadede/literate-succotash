#!/usr/bin/env bash
set -e
REPO_NAME="${1:-gf-companion-app}"
echo "🚀 正在初始化 Git 仓库并准备推送到 GitHub ($REPO_NAME)..."
git init
git branch -M main
git add .
git commit -m "feat: initial commit with Capacitor app and GitHub Actions APK workflow" || true

if command -v gh >/dev/null 2>&1; then
  gh repo create "$REPO_NAME" --public --source=. --remote=origin --push
  echo "✅ 已成功创建 GitHub 仓库并触发 Actions 云端打包！"
  gh workflow view "Build Android APK" --web || true
else
  echo "请将当前目录关联到你在浏览器新建的 GitHub 空仓库地址后执行 git push -u origin main"
fi
