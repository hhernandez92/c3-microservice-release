#!/bin/sh

url=$(curl -s https://api.github.com/repos/hhernandez92/c3-microservice-release/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \")

echo $url

#baseDirectory="/tmp/fusion/"
#fileName=$(basename $url)
#filePath=${baseDirectory}${fileName}

#wget -q ${url} -P "${baseDirectory}"

#apt install "${filePath}"
#rm "${filePath}"

exit 0
