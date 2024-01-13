#!/bin/bash
VID_URL=$(curl -s "$QUERY_URL")
VID_TITLE=$(python -m youtube_dl --get-title "$VID_URL")
python -m youtube_dl -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' -o "videos/${VID_TITLE}.mp4" --merge-output-format mp4 "$VID_URL"