# 📱 Android Minecraft Java Server Toolkit

> 让闲置旧手机变成 24 小时不间断的 Minecraft Java 版服务器！零成本、免 Root、不花一分钱云服务费。
> 注意，此教程仅限于12 GB运存及以上者，若只有8g，请酌情将JAVA内存分配改低，若不会的，可以到提问区提问

## 🚀 极简一键开服教程（小白专属）

### 第一步：安装 Termux 环境
请**务必**通过以下官方渠道下载 Termux（不要用国内应用商店的残废版）：
* [Termux 官方 F-Droid 下载页](https://f-droid.org/zh/packages/com.termux/)
* [Termux GitHub Releases 下载页](https://github.com/termux/termux-app/releases)

### 第二步：一键拉取脚本并配置环境
打开 Termux，**直接长按屏幕，粘贴下面这一整行命令，然后回车**：
*(该命令会自动帮你换源、更新、安装 Java 环境，并拉取本项目的神级一键启动脚本)*
pkg install wget -y && wget https://raw.githubusercontent.com/afang120986/Android-MC-Java-Server-Toolkit-MC-Java-/main/start.sh && chmod +x start.sh && echo "✅ 脚本下载成功！"
```

第三步：放入服务端核心并启动

1. 去 Minecraft Wiki 或官网下载最新的 server.jar。
2. 把你的 server.jar 移动到 Termux 的当前目录下。
3. 在 Termux 中输入以下命令，原地起飞：


./start.sh

(脚本已自动配置好 4G 内存分配、自动同意 EULA、并在后台静默挂起，关掉 Termux 屏幕也不会掉线！)

💡 常用控制指令

· 查看后台控制台：tmux attach -t mc
· 退出控制台（保持后台运行）：按下 Ctrl + B，松开，再按 D。

⚠️ 免责声明 (Disclaimer)

1. 本仓库不提供任何 Minecraft 原版游戏本体（.jar）或盗版整合包的分发。
2. 所有游戏本体下载链接均指向 Minecraft Wiki 或 Mojang 官方源。
3. 本教程及代码仅供技术交流与学习，请支持 Minecraft 正版。如果在部署过程中遇到 Bug，欢迎在 Issues 里提问。
4. 如果觉得好用，请给我点一个免费的 ⭐ Star！


🇬🇧 English Documentation

📱 Android Minecraft Java Server Toolkit

Turn your idle old Android phone into a 24/7 Minecraft Java Edition server! Zero cost, no Root required.
⚠️ Memory Warning: This script allocates 4GB RAM by default. Devices with 12GB+ physical RAM are highly recommended. For 8GB devices, please modify the script (e.g., change -Xmx4G to -Xmx2G) to prevent the server from being killed by the Android OS.


🚀 Quick Start Guide

Step 1: Install Termux

Please download Termux only from the official sources (DO NOT use the outdated versions from third-party app stores):

· Termux Official F-Droid Page
· Termux GitHub Releases

Step 2: One-Click Script & Environment Setup

Open Termux, copy and paste the entire line below, then press Enter:
(This command will automatically update packages, install Java, and download the server script)

```bash
pkg install wget -y && wget https://raw.githubusercontent.com/afang120986/Android-MC-Java-Server-Toolkit-MC-Java-/main/start.sh && chmod +x start.sh && echo "✅ Script downloaded successfully!"
```

Step 3: Run the Server

1. Download the official server.jar from Minecraft Wiki.
2. Move server.jar to the current Termux directory.
3. Run the following command to start:

```bash
./start.sh
```

(The script automatically allocates 4G RAM, accepts the EULA, and runs the server in the background using tmux.)

💡 Useful Commands

· Enter Server Console: tmux attach -t mc
· Detach (Keep running in background): Press Ctrl + B, release, then press D.

⚠️ Disclaimer

1. This repository DOES NOT distribute any pirated Minecraft game files (.jar).
2. All download links redirect to the official Minecraft Wiki or Mojang servers.
3. This tutorial is for educational purposes only. Please support the official game.
4. If you find this helpful, please give it a ⭐ Star!

```
