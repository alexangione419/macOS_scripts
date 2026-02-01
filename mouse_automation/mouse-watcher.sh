#!/usr/bin/env bash
set -euo pipefail

ON_CONNECT="$HOME/bin/on-mouse-connect.sh"
ON_DISCONNECT="$HOME/bin/on-mouse-disconnect.sh"


present_now() {
  ioreg -p IOUSB -l 2>/dev/null | grep -qi "USB Receiver" 
}

if present_now; then
    was_present=1
else
    was_present=0
fi

while true; do
    if present_now; then
        if [[ "$was_present" -eq 0 ]]; then
            [[ -x "$ON_CONNECT" ]] && "$ON_CONNECT" || true
            was_present=1
        fi
    else
        if [[ "$was_present" -eq 1 ]]; then
            [[ -x "$ON_DISCONNECT" ]] && "$ON_DISCONNECT" || true
            was_present=0
        fi
    fi

    sleep 1
done


