clear

echo Cloning noVNC...
git clone https://github.com/novnc/noVNC.git > /dev/null 2>&1
wget https://github.com/kmille36/thuonghai/raw/master/katacoda/index.html > /dev/null 2>&1
mv index.html noVNC/index.html
echo Starting noVNC Server...
nohup ./noVNC/utils/novnc_proxy --listen 80 --vnc localhost:5901 &>/dev/null &
echo "All done! Please click + > View HTTP port 80 on Host 1 to access your VM!"

