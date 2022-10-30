#!/usr/bin/env sh

BACKGROUND_COLOR="0x99ff0000"

if colima list | grep docker | grep Running > /dev/null 2>&1; then
  BACKGROUND_COLOR="0x9900FF00"
fi

sketchybar --set $NAME \
  background.color="$BACKGROUND_COLOR" \
  icon="Docker" \
  icon.color="0xFFFFFFFF"
background.drawing="on" \
  background.padding_left=5 \
  background.padding_right=5 \
  background.corner_radius=5 \
  label.docker_status=off \
  label.drawing=off \
  background.height=22
