#!/bin/bash

File="$3";
LocalDIR="/content/downloads/";
RemoteDIR="/content/drive/od/";

if [ -e "$LocalDIR"*.rar ];then
  echo mrcong.com | unrar x ${File} pictures/;
  LocalDIR="/content/downloads/pictures/";
  RemoteDIR="/content/drive/od/pictures/";
  rm -rf File;
fi

rclone move "${LocalDIR}" "${RemoteDIR}" --config /usr/local/sessionSettings/rclone.conf --fast-list --user-agent "Mozilla" --transfers 20 --checkers 20 --drive-server-side-across-configs -c --buffer-size 256M --drive-chunk-size 256M --drive-upload-cutoff 256M --drive-acknowledge-abuse --drive-keep-revision-forever --tpslimit 95 --tpslimit-burst 40 --stats-one-line --bwlimit 10M --stats=5s -v

cat >> /root/upload.txt << EOF
"$3"
EOF
