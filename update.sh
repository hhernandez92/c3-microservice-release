#!/bin/sh

url=$(curl -s https://api.github.com/repos/hhernandez92/c3-microservice-release/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \")

baseDirectory="/tmp/fusion/"
fileName=$(basename $url)
filePath=${baseDirectory}${fileName}

wget -q ${url} -O "${baseDirectory}${fileName}"

apt install "${filePath}"
rm "${filePath}"

systemctl restart fusion.service

exit 0
