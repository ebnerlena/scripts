#!/bin/sh
echo enter path:
read path

# youtube-dl -x --audio-format mp3 --rm-cache-dir --verbose --restrict-filenames -o '/home/le/Music/youtube-dl/%(title)s.%(ext)s' $path

# https://stackoverflow.com/questions/75495800/error-unable-to-extract-uploader-id-youtube-discord-py
# TODO switch pack to youtube-dl, need to update first

yt-dlp -x --audio-format mp3 --rm-cache-dir --verbose --restrict-filenames -o '/home/le/Music/youtube-dl/%(title)s.%(ext)s' $path
