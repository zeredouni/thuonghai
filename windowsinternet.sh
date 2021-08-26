clear
read -p "Paste authtoken here (Copy and Right-click to paste): " CRP
ngrok authtoken $CRP 
wget -o BvSshClient-Inst.exe https://dl.bitvise.com/BvSshClient-Inst.exe >/dev/null 2>&1
curl -L -o ProxifierSetup.exe https://www.proxifier.com/download/ProxifierSetup.exe >/dev/null 2>&1
nohup ngrok tcp --region ap 10.10.20.90:3389 &>/dev/null &
sleep 3
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo Administrator
echo C1sco12345
echo "10.10.20.50/developer/C1sco12345"
