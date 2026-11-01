#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
# Android Minecraft Java Server ToolKit
# 作者: afang120986
# 功能: 自动配置环境、一键后台开服
# ==========================================

echo "=========================================="
echo "   Minecraft Server Launcher by afang"
echo "=========================================="
echo "正在检查系统环境，请稍候..."

# 1. 自动更新源并安装 Java, tmux, wget (无提示自动同意)
echo ">> 正在安装 Java 环境与必备工具..."
pkg update -y > /dev/null 2>&1
pkg install openjdk-17 tmux wget -y > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "❌ 环境安装失败！请检查网络连接后重试。"
    exit 1
fi
echo "✅ 环境安装完成！"

# 2. 检查是否有服务端核心文件
if [ ! -f "server.jar" ]; then
    echo "❌ 错误：当前目录下没有找到 server.jar ！"
    echo "请前往 Minecraft Wiki 下载官方服务端，重命名为 server.jar 并放进这个文件夹。"
    exit 1
fi

# 3. 自动同意 EULA 协议
echo ">> 正在处理 EULA 协议..."
if [ ! -f "eula.txt" ]; then
    echo "eula=true" > eula.txt
    echo "✅ 已自动生成并同意 eula.txt"
elif grep -q "eula=false" eula.txt; then
    sed -i 's/eula=false/eula=true/g' eula.txt
    echo "✅ 已将 eula.txt 修改为 true"
fi

# 4. 检查是否已经有名为 mc 的 tmux 会话在运行
tmux has-session -t mc 2>/dev/null
if [ $? -eq 0 ]; then
    echo "⚠️ 警告：服务器已经在后台运行了！"
    echo "输入 tmux attach -t mc 可以进入控制台。"
    exit 0
fi

# 5. 启动服务端 (分配 4G 内存，你可以改 2G 或 6G)
MEM_ALLOC="-Xms2G -Xmx4G"
echo ">> 正在后台启动服务端，分配内存: $MEM_ALLOC ..."

# 使用 tmux 后台挂起，名字叫 mc
tmux new-session -d -s mc "java $MEM_ALLOC -jar server.jar nogui"

echo "=========================================="
echo "🚀 服务器已成功在后台启动！"
echo "👉 查看控制台输入: tmux attach -t mc"
echo "👉 退出控制台挂起: Ctrl+B 然后按 D"
echo "=========================================="
