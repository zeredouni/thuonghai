wget https://dl.bitvise.com/BvSshClient-Inst.exe >/dev/null 2>&1
wget https://www.proxifier.com/download/ProxifierSetup.exe >/dev/null 2>&1
read -p "Paste authtoken here (Copy and Right-click to paste): " CRP
ngrok authtoken $CRP 
nohup ngrok tcp --region ap 10.10.20.90:3389 &>/dev/null &
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo Administrator
echo C1sco12345
echo "10.10.20.50/developer/C1sco12345"
