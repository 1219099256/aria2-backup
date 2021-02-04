#!/bin/bash

if [ -e downloads/*.rar ];then
  mkdir /root/downloads/pictures;
  mv downloads/*.rar downloads/GIRLS.rar;
  unrar x -p'mrcong.com' downloads/GIRLS.rar downloads/pictures/;
  rm -rf downloads/GIRLS.rar;
  LocalDIR="/root/downloads/pictures/";
fi

rclone move "$3" "/content/drives/od/" --config /usr/local/sessionSettings/rclone.conf --fast-list --user-agent "Mozilla" --transfers 20 --checkers 20 --drive-server-side-across-configs -c --buffer-size 256M --drive-chunk-size 256M --drive-upload-cutoff 256M --drive-acknowledge-abuse --drive-keep-revision-forever --tpslimit 95 --tpslimit-burst 40 --stats-one-line --bwlimit 10M --stats=5s -v
