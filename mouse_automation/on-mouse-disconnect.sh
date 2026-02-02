#!/usr/bin/env bash
defaults write "Apple Global Domain" com.apple.swipescrolldirection -bool YES 
killall cfprefsd 2>/dev/null || true
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
