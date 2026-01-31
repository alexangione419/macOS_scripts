#!/usr/bin/env bash
defaults write "Apple Global Domain" com.apple.swipescrolldirection 0
killall cfprefsd 2>/dev/null || true


