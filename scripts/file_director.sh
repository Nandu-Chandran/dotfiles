#!/bin/bash
dir="/data/data/com.termux/files/home/storage/downloads/"

doc_path="/data/data/com.termux/files/home/storage/shared/Documents/"
music_path="/data/data/com.termux/files/home/storage/shared/Music/"
video_path="/data/data/com.termux/files/home/storage/shared/Movies/"

find $dir -maxdepth 1 -type f \( -iname "*.pdf" -o -iname "*.pptx" -o -iname "*.epub" \) -exec mv {} $doc_path \;
find $dir -maxdepth 1 -type f \( -iname "*.mp3" -o -iname "*.flac" -o -iname "*.wav" \) -exec mv {} $music_path \;
find $dir -maxdepth 1 -type f \( -iname "*.mp4" -o -iname "*.mkv" \) -exec mv {} $video_path \;
echo Done
