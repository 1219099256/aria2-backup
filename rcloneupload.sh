#!/bin/bash

File="$3";
LocalDIR="/content/downloads/"

if [ -e "$LocalDIR"*.rar ];then
  mkdir "$LocalDIR"pictures;
  mv "$LocalDIR"*.rar "$LocalDIR"GIRLS.rar;
  unrar x -p'mrcong.com' "$LocalDIR"GIRLS.rar "$LocalDIR"pictures/;
  rm -rf "$LocalDIR"GIRLS.rar;
  LocalDIR="/root/downloads/pictures/";
fi

rclone move "/content/downloads${File/#$LocalDIR}" "/content/drives/od/" --config /usr/local/sessionSettings/rclone.conf --fast-list --user-agent "Mozilla" --transfers 20 --checkers 20 --drive-server-side-across-configs -c --buffer-size 256M --drive-chunk-size 256M --drive-upload-cutoff 256M --drive-acknowledge-abuse --drive-keep-revision-forever --tpslimit 95 --tpslimit-burst 40 --stats-one-line --bwlimit 10M --stats=5s -v

cat /content/upload.txt << EOF
"/content/downloads${File/#$LocalDIR/}"
EOF
