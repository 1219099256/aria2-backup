wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/aria2.sh && chmod +x aria2.sh

wget -O upload.sh https://raw.githubusercontent.com/1219099256/aria2-backup/master/colab/rcloneupload.sh && chmod +x upload.sh

wget -O upload.sh https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/onedriveupload.sh && chmod +x upload.sh && wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/OneDriveUploader -P /usr/local/bin/ && chmod +x /usr/local/bin/OneDriveUploader && wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/auth.json

unrar:
wget https://www.rarlab.com/rar/rarlinux-x64-6.0.0.tar.gz && tar -xzvf rarlinux-x64-6.0.0.tar.gz && cd rar && cp rar unrar /usr/local/bin


wget -O aria2.tar.bz2 https://github.com/q3aql/aria2-static-builds/releases/download/v1.35.0/aria2-1.35.0-linux-gnu-64bit-build1.tar.bz2
tar -jxvf aria2.tar.bz2
cd aria2 && make install
