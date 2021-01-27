wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/aria2.sh

wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/onedriveupload.sh

wget https://raw.githubusercontent.com/1219099256/aria2-backup/master/onedriveuploader/OneDriveUploader -P /usr/local/bin/

chmod +x aria2.sh

chmod +x onedriveupload.sh

chmod +x /usr/local/bin/OneDriveUploader

on-download-complete=/root/onedriveupload.sh