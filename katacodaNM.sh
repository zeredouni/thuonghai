rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo "choose ngrok region (for better connection)."
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 4000 &>/dev/null &
echo "===================================="
echo Changing root password to 123456...
echo 'root:123456' | chpasswd
echo "Installing XFCE4 Desktop Environment..."
sudo apt update -y > /dev/null 2>&1
sudo apt-get install -y firefox xfonts-base xfce4 xfce4-goodies xrdp > /dev/null 2>&1
echo Installing NoMachine...
wget https://download.nomachine.com/download/7.6/Linux/nomachine_7.6.2_4_amd64.deb > /dev/null 2>&1
sudo dpkg -i nomachine_7.6.2_4_amd64.deb > /dev/null 2>&1
echo Done! NoMachine Information:
echo IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' > NGR.txt
cat NGR.txt | sed -e 's/.*://' > PORT.txt
IP=$(curl -s -H 'accept: application/dns-json' 'https://dns.google/resolve?name=0.tcp.$RG.ngrok.io&type=A' | jq -r '.Answer[0].data')
PORT=$(echo cat PORT.txt | bash)
echo IP: $IP
echo Port: $PORT
echo User: root
echo Passwd: 123456
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support NT.Hai thank you"
echo "Wait 1 minute to finish boot"
echo "===================================="
echo "===================================="
