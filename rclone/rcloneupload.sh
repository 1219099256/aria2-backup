#!/bin/bash

File="$3";
LocalDIR="/root/downloads/";
RemoteDIR="/root/od/";

if [ -e $LocalDIR*.rar ];then
  unrar -p"mrcong.com" x ${File} ${LocalDIR}pictures/;
  rm -rf ${File};
  File="${LocalDIR}pictures/";
  RemoteDIR="${RemoteDIR}pictures/";
fi

rclone move "${File}" "${RemoteDIR}"  --config rclone.conf;

cat >> /root/upload.txt << EOF
$3
EOF
