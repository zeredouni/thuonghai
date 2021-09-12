echo Changing root password to 123456...
echo 'root:123456' | chpasswd
echo Disabling Firewall...
sudo systemctl stop firewalld
sudo systemctl disable firewalld
echo Installing NoMachine...
wget https://download.nomachine.com/download/7.6/Linux/nomachine_7.6.2_4_x86_64.rpm
sudo rpm -i nomachine_7.6.2_4_x86_64.rpm
clear
echo Done! NoMachine Information:
curl ifconfig.me
echo " "
echo User: root
echo Passwd: 123456
