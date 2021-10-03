rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
PS3='Choose your NGROK REGION you want to change (type 1, 2, 3, 4, 5, 6, 7 then Enter): '
foods=("US" "EU" "AP" "AU" "SA" "JP" "IN")
select fav in "${foods[@]}"; do
    case $fav in
        "US")
             RG=us
	     ./ngrok tcp --region us 30889 &>/dev/null &
            break
            ;;
         "EU")
             RG=eu
	     ./ngrok tcp --region eu 30889 &>/dev/null &
            break
            ;;
        "AP")
             RG=ap
	     ./ngrok tcp --region ap 30889 &>/dev/null &
            break
            ;;
	"AU")
            RG=au
	     ./ngrok tcp --region au 30889 &>/dev/null &
            break
            ;;
        "SA")
             RG=sa
	     ./ngrok tcp --region sa 30889 &>/dev/null &
            break
            ;;
	"JP")
            RG=jp
	     ./ngrok tcp --region jp 30889 &>/dev/null &
            break
            ;;
	"IN")
            RG=in
	     ./ngrok tcp --region in 30889 &>/dev/null &
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

echo "===================================="
echo Downloading Virtual Machine...
sudo curl -L -o lite11.qcow2 https://bit.ly/38ZYSq3 
echo "Installing QEMU..."
sudo apt update -y > /dev/null 2>&1
sudo apt-get install -y qemu-kvm > /dev/null 2>&1
availableRAMcommand="free -m | tail -2 | head -1 | awk '{print \$7}'"
availableRAM=$(echo $availableRAMcommand | bash)
custom_param_ram="-m "$(expr $availableRAM)"M"
cpus=$(lscpu | grep CPU\(s\) | head -1 | cut -f2 -d":" | awk '{$1=$1;print}')
nohup sudo qemu-system-x86_64 -nographic -net nic -net user,hostfwd=tcp::30889-:3389 -show-cursor $custom_param_ram -localtime -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=$cpus -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive file=lite11.qcow2,index=0,media=disk,format=qcow2 -boot once=d &>/dev/null &
clear
echo Done! RDP Information:
echo IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' > NGR.txt
cat NGR.txt | sed -e 's/.*://' > PORT.txt
IP=$(curl -s -H 'accept: application/dns-json' 'https://dns.google/resolve?name=0.tcp.$RG.ngrok.io&type=A' | jq -r '.Answer[0].data')
PORT=$(echo cat PORT.txt | bash)
echo IP: $IP:$PORT
echo User: Administrator  
echo Passwd: Thuonghai001
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support NT.Hai thank you"
echo "Wait 1 minute to finish boot"
echo "===================================="
echo "===================================="
