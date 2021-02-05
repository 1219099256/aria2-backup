#!/bin/bash

wget -O aria2.tar.bz2 https://github.com/q3aql/aria2-static-builds/releases/download/v1.35.0/aria2-1.35.0-linux-gnu-64bit-build1.tar.bz2
tar -jxvf aria2.tar.bz2
cd aria2 && make install
wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/colab/rcloneupload.sh
chmod +x rcloneupload.sh
