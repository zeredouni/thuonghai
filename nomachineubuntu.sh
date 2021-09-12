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
