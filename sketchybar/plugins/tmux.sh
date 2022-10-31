#!/bin/bash

isTmuxRunning=0
attachedSessionId=""
windowsInAttachedSession=""
availableSessions=""
tmuxStatus="Server Down"

if [[ $(tmux has-session 2>&1) != *"tmux-501"* ]]; then
  isTmuxRunning=1
  availableSessions=$(tmux ls -F "#{session_id}: #{?session_attached,attached,not attached}" | cut -d ":" -f 1 | cut -d "$" -f2 | xargs)
  attachedSessionId=$(tmux ls -F "#{session_id}: #{?session_attached,attached,not attached}" | grep $(tmux display-message -p '#S') | grep ": attached" | cut -d ":" -f 1)
  windowsInAttachedSession=$(tmux list-windows | cut -d " " -f 2 | xargs)

  if [[ -n $attachedSessionId ]]; then
    tmuxStatus="$attachedSessionId $windowsInAttachedSession"
  else
    tmuxStatus="$ $availableSessions"
  fi
fi

sketchybar --set \
  $NAME icon="$tmuxStatus" \
  background.color="0xCCcdeb35" \
  background.drawing="on" \
  background.padding_left=5 \
  background.padding_right=5 \
  background.corner_radius=5 \
  label.drawing=off \
  icon.color="0xCC000000" \
  background.height=20
