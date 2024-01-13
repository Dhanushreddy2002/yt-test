#!/bin/bash
VID_URL=$(curl -s "$QUERY_URL")
VID_TITLE=$(youtube-dl --get-title "$VID_URL" | sed 's/[/\:*?"<>|]/_/g')
python -m youtube_dl -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' -o "videos/${VID_TITLE}.mp4" --merge-output-format mp4 "$VID_URL"