wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/aria2.sh && chmod +x aria2.sh && wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/onedriveupload.sh && chmod +x onedriveupload.sh && wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/OneDriveUploader -P /usr/local/bin/ && chmod +x /usr/local/bin/OneDriveUploader && wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/auth.json

unrar:
wget https://www.rarlab.com/rar/rarlinux-x64-6.0.0.tar.gz && tar -xzvf rarlinux-x64-6.0.0.tar.gz && cd rar && cp rar unrar /usr/local/bin

aria2-colab:
wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/colab/rcloneupload.sh && chmod +x rcloneupload.sh
