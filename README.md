# 女友提醒 + 每日陪伴 App (Capacitor Android 工程)

本工程已内置 **GitHub Actions 云端自动打包 Android APK 工作流** (`.github/workflows/build-android-apk.yml`)。

## 30 秒云端打包 APK 步骤（无需本地配置 Android 环境）

1. 在浏览器打开 [github.com/new](https://github.com/new) 创建一个新仓库（名称任意，如 `gf-companion-app`，勾选 **Public**）。
2. **方式 A（网页拖拽上传）**：在新建的空仓库页面点击 **uploading an existing file**，将本压缩包解压后的全部文件（注意包含隐藏文件夹 `.github`）直接拖入网页并点击 **Commit changes**。
3. **方式 B（双击脚本自动上传）**：Windows 用户双击 `push-to-github.bat`（Mac/Linux 运行 `./push-to-github.sh`），一键推送代码。
4. 推送完成后，点击 GitHub 仓库顶部的 **Actions** 选项卡，等待 `Build Android APK` 变为绿色勾（约 2~3 分钟），点进去在底部 **Artifacts** 处点击 **`love-companion-app-debug-apk`** 即可下载 `app-debug.apk` 安装到手机！
