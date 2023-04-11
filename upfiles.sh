#!/bin/bash
wget https://sukebei.nyaa.si/download/3860738.torrent
aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent

rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/AutoDownFilesToDrive/AutoDownFilesToDrive/download/ "onedrive:/animation_comic/milannews/Manga"
