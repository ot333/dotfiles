#!/bin/bash

frames=("▅▃▆█" "▃▆█▅" "▆█▅▃" "█▅▃▆")
i=0

while true; do
    STATUS_JSON=$(cliamp status --json 2>/dev/null)
    STATE=$(echo "$STATUS_JSON" | jq -r '.state' 2>/dev/null)
    TITLE=$(echo "$STATUS_JSON" | jq -r '.track.title // ""' 2>/dev/null)

    if [ "$STATE" = "playing" ]; then
        OUTPUT="${frames[$i]}  $TITLE"
        i=$(( (i + 1) % 4 ))
    else
        OUTPUT="   ▶   "
    fi
    
    # Format directly as JSON for Waybar stream consumption
    printf '{"text": "%s"}\n' "$OUTPUT"
    
    sleep 0.2
done

