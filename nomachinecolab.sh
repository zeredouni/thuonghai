wget -O ngrok-stable-linux-amd64.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ngrok-stable-linux-amd64.zip
clear
read -p "Paste authtoken here (Copy and Right-click to paste): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp --region us 4000 &>/dev/null &
apt install --assume-yes xfce4 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
echo Changing root password to 123456...
echo 'root:123456' | chpasswd
echo 'student:123456' | chpasswd
echo Adding student into root user...
usermod -aG wheel student
echo Disabling Firewall...
sudo systemctl stop firewalld
sudo systemctl disable firewalld
echo Installing NoMachine...
wget https://download.nomachine.com/download/7.6/Linux/nomachine_7.6.2_4_amd64.deb
sudo dpkg -i nomachine_7.6.2_4_amd64.deb
clear
echo Done! NoMachine Information:
echo IP Address:
curl ifconfig.me
echo " "
echo User: root
echo Passwd: 123456
