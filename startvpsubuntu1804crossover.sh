#!/bin/sh
#KhanhNguyen9872
echo "Preparing...."
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar xvfz ngrok-v3-stable-linux-amd64.tgz
sudo ./ngrok config add-authtoken 28btMXJw4nhECLMGHBkHSdWyRJg_3oC8eXnTxzDYAyARhGsYH
echo ""
echo "ubuntu1804crossover...."
sudo docker run --name ubuntu18.04 --privileged --shm-size 1g -d -p 5900:5900 -p 8080:6080 thuonghai2711/ubuntu-vnc
sudo apt update -y > /dev/null 2>&1
sudo apt install apt-transport-https ufw fish apache2 php sublime-text xfce4 xarchiver wine firefox-esr mesa-utils git xfce4-goodies pv nmap nano apt-utils dialog terminator autocutsel dbus-x11 dbus neofetch perl p7zip unzip zip curl tar git python3 python3-pip net-tools openssl tigervnc-standalone-server tigervnc-xorg-extension -y
export HOME="$(pwd)"
export DISPLAY=":0"
cd $HOME 2> /dev/null
sudo mkdir ~/.vnc 2> /dev/null
if [ ! -d ~/.config ] 2> /dev/null; then
  sudo mkdir ~/.config 2> /dev/null
fi
if [ ! -d ~/.config/fish ] 2> /dev/null; then
  sudo mkdir ~/.config/fish 2> /dev/null
fi
echo "set fish_greeting" > ~/.config/fish/config.fish
chmod -R 777 ~/.config 2> /dev/null
sudo printf '#!/bin/bash\ndbus-launch &> /dev/null\nautocutsel -fork\nxfce4-session\n' > ~/.vnc/xstartup
wget -O startvps.sh "https://raw.githubusercontent.com/KhanhNguyen9872/Debian_VPS_Google_Shell/main/startvps.sh" 2> /dev/null
wget -O setupPS.sh "https://raw.githubusercontent.com/KhanhNguyen9872/Debian_VPS_Google_Shell/main/setupPS.sh" 2> /dev/null
wget -O apache2.conf "https://raw.githubusercontent.com/KhanhNguyen9872/Debian_VPS_Google_Shell/main/apache2.conf" 2> /dev/null
wget -O vscode.deb "https://github.com/KhanhNguyen9872/Debian_VPS_Google_Shell/blob/main/app/vscode_1.66.1_amd64.deb?raw=true" 2> /dev/null
sudo mv ./startvps.sh /bin/startvps 2> /dev/null
sudo rm -rf ~/.bashrc 2> /dev/null
sudo mv ./setupPS.sh ~/.bashrc 2> /dev/null
sudo rm -f /bin/wine 2> /dev/null
sudo ln -s /etc/alternatives/wine64 /bin/wine 2> /dev/null
sudo mv ./apache2.conf /etc/apache2/apache2.conf 2> /dev/null
touch ${HOME}/Desktop/wine64_explorer.desktop 2> /dev/null
cat > "${HOME}/Desktop/wine64_explorer.desktop" <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=wine64 explorer
Comment=Run exe on Linux
Exec=/bin/wine64 explorer.exe
Icon=
Path=
Terminal=false
StartupNotify=false
EOL
sudo chmod 777 ${HOME}/Desktop/wine64_explorer.desktop
sudo chmod 777 -R ~/.vnc 2> /dev/null
sudo chmod 777 ~/.bashrc 2> /dev/null
sudo chmod 777 /bin/startvps 2> /dev/null
sudo chmod 777 /bin/wine 2> /dev/null
sudo chmod 777 /etc/apache2/apache2.conf 2> /dev/null
dpkg -i vscode.deb
rm -rf ./vscode.deb 2> /dev/null
sudo apt update -y > /dev/null 2>&1
sudo apt autoremove -y
if [ ! -d /usr/share/themes/Windows-10-Dark-master ] 2> /dev/null; then
  cd /usr/share/themes/ 2> /dev/null
  wget -O Windows-10-Dark-master.zip "https://github.com/KhanhNguyen9872/Debian_VPS_Google_Shell/blob/main/app/Windows-10-Dark-master.zip?raw=true" 2> /dev/null
  unzip -qq Windows-10-Dark-master.zip 2> /dev/null
  rm -f Windows-10-Dark-master.zip 2> /dev/null
fi
cd $HOME 2> /dev/null
clear
printf "\n\n\n - Installation completed!\n Run: [startvps] to start VNC Server!\n\n"
exit 0
