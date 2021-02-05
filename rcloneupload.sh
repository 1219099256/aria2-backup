#!/bin/bash

File="$3";
LocalDIR="/root/downloads/";
RemoteDIR="/root/od/";

if [ -e $LocalDIR*.rar ];then
  LocalDIR="${LocalDIR}pictures/";
  RemoteDIR="${RemoteDIR}pictures/";
  unrar -p"mrcong.com" x ${File} ${LocalDIR};
  rm -rf ${File};
fi

rclone move "${LocalDIR}" "${RemoteDIR}"  --config rclone.conf;

cat >> /root/upload.txt << EOF
$3
EOF
