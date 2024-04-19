#!/bin/bash

# Check if music.txt exists
if [ ! -f "music.txt" ]; then
    echo "Error: music.txt not found!"
    exit 1
fi

# Read each link from music.txt and process it
while IFS= read -r link; do
    echo "Downloading $link"
    yt-dlp -x --audio-format mp3 --rm-cache-dir --verbose --restrict-filenames -o '/home/le/Music/youtube-dl/%(title)s.%(ext)s' "$link"
done < "music.txt"
