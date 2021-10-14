trap '' 2 

echo Please Wait...
wget -O ngrok-stable-linux-amd64.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1 
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
mv ngrok python3
clear
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
./python3 tcp --region $CRP 3389 &>/dev/null &
clear
echo All done! Please click Open Desktop to access your VM!
curl -L -s -o spinner.sh https://bit.ly/3AEOj7j > /dev/null 2>&1
chmod +x spinner.sh
./spinner.sh sleep 999999

