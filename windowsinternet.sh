wget https://dl.bitvise.com/BvSshClient-Inst.exe >/dev/null 2>&1
wget https://www.proxifier.com/download/ProxifierSetup.exe >/dev/null 2>&1
ngrok authtoken 1YhyjW3lK2BEBeNul7lcR3QoS6C_22K9WY61ZdVnc2A27TSZf
nohup ngrok tcp --region ap 10.10.20.90:3389 &>/dev/null &
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo Administrator
echo C1sco12345
