#!/usr/bin/env bash
LAUNCH_AGENT="com.alex.mousewatcher"

mkdir -p "$HOME/bin"
mkdir -p "$HOME/Library/LaunchAgents/"


cp "./$LAUNCH_AGENT.plist" "$HOME/Library/LaunchAgents/$LAUNCH_AGENT.plist"

cp ./on-mouse-disconnect.sh "$HOME/bin/"
cp ./on-mouse-connect.sh "$HOME/bin/"
cp ./mouse-watcher.sh "$HOME/bin/"

chmod +x "$HOME/bin/on-mouse-disconnect.sh"
chmod +x "$HOME/bin/on-mouse-connect.sh"
chmod +x "$HOME/bin/mouse-watcher.sh"

launchctl unload "$HOME/Library/LaunchAgents/$LAUNCH_AGENT.plist" 2>/dev/null || true
launchctl load   "$HOME/Library/LaunchAgents/$LAUNCH_AGENT.plist"
launchctl start  "$LAUNCH_AGENT"

echo "Mouse watcher installed and running."
