echo "Installing XFCE4 Desktop Environment (1-2 minutes)..."
sudo docker run --name ubuntu18.04 --privileged -d -p 5900:5900 -p 8080:6080 dcsunset/ubuntu-vnc > /dev/null 2>&1 || bash -c "echo Retrying... && sleep 1 && bash wait.sh"
sleep 1
echo Installing Firefox Web Browser. Please Wait...
sudo docker exec -i ubuntu18.04 /bin/bash -c "apt update && apt remove -y chromium-browser && apt install -y firefox && cd /usr/bin/ && cp firefox chromium-browser && apt install -y gdebi curl htop sudo software-properties-common && add-apt-repository ppa:dawidd0811/neofetch -y && apt install neofetch -y" > /dev/null 2>&1
echo "Installing CrossOver (Run Windows Application)..."
sudo docker exec -i ubuntu18.04 /bin/bash -c "wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_21.0.0-1.deb && dpkg -i crossover_21.0.0-1.deb ; apt install --assume-yes --fix-broken" > /dev/null 2>&1
clear 
echo All done! Please click View At Port 8080 to access your VM!
