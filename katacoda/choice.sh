trap '' 2 

clear
echo Please Wait...
wget --no-check-certificate -O ngrok-stable-linux-amd64.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1 
unzip -o ngrok-stable-linux-amd64.zip > /dev/null 2>&1
mv ngrok python3
clear
echo "Get Authtoken Here: https://bit.ly/3oXOnNj"
read -p "Paste Your Authtoken: " CRP
./python3 authtoken $CRP 
clear
echo "======================="
echo choose your region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose your region: " CRP
nohup ./python3 tcp --region $CRP 3389 &>/dev/null &
echo $CRP > RG.txt
sleep 2
rm -rf ngrok-stable-linux-amd64.zip
curl --silent --show-error http://127.0.0.1:4040/api/tunnels > /dev/null 2>&1 || bash -c "echo An Error With Your Tunnel, Please Check Token And Try Again... && sleep 2 && bash choice.sh"
clear
echo "All done! Here your VM! (Don't press Ctrl+C)"
echo "IP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' > tunnel.txt
cat tunnel.txt | sed 's/^.*:\([0-9]*\)$/\1/' > port.txt
rg=$(echo cat RG.txt | bash)
dig +short 0.tcp.$rg.ngrok.io > ip.txt
ip=$(echo cat ip.txt | bash)
port=$(echo cat port.txt | bash)
echo $ip:$port
echo "User: Administrator"
echo "Password: Thuonghai001"
curl -L -s -o spinner.sh https://bit.ly/3AEOj7j > /dev/null 2>&1
chmod +x spinner.sh
./spinner.sh sleep 999999

