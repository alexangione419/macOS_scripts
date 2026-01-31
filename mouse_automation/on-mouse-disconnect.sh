#!/usr/bin/env bash
defaults write "Apple Global Domain" com.apple.swipescrolldirection 1
killall cfprefsd 2>/dev/null || true

