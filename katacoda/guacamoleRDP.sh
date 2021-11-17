wget -O index.html https://pastebin.com/raw/b4vjjMgx > /dev/null 2>&1
nohup python -m SimpleHTTPServer 8080  &>/dev/null &
    
    apt install zip -y 
    curl -k -L -O https://github.com/kmille36/thuonghai/raw/master/katacoda/guacamole.zip > /dev/null 2>&1
    curl -k -L -O https://github.com/kmille36/thuonghai/raw/master/katacoda/guacamole.z01 > /dev/null 2>&1
    zip -F guacamole.zip --out file-large.zip > /dev/null 2>&1
    unzip file-large.zip > /dev/null 2>&1
    sudo docker login --username=tylermaymr18 --password=Thuonghai001 > /dev/null 2>&1
    docker pull oznu/guacamole > /dev/null 2>&1
    killall python > /dev/null 2>&1
    docker run --network host -d -v /root/guacamole:/config oznu/guacamole > /dev/null 2>&1
    
