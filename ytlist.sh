#!/bin/bash

read -p "Download directory: " download
cd $download

read -p "Playlist: " playlist
youtube-dl --yes-playlist --download-archive downloaded.txt --no-post-overwrites -ciw -f best $playlist