@echo off
chcp 65001 >nul
set REPO_NAME=gf-companion-app
echo 🚀 正在初始化 Git 仓库...
git init
git branch -M main
git add .
git commit -m "feat: initial commit with Capacitor app and GitHub Actions APK workflow"

where gh >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  gh repo create %REPO_NAME% --public --source=. --remote=origin --push
  echo ✅ 已自动在你的 GitHub 账号下创建仓库 %REPO_NAME% 并触发云端 APK 打包！
) else (
  set /p REMOTE_URL="请粘贴你在 GitHub 新建的空仓库链接 (例如 https://github.com/你的用户名/gf-companion-app.git): "
  git remote remove origin >nul 2>nul
  git remote add origin %REMOTE_URL%
  git push -u origin main
  echo ✅ 代码已推送！请回到浏览器 GitHub 仓库的 Actions 页面等待 APK 打包完成。
)
pause
