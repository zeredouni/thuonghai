stty intr ""
stty quit ""
stty susp undef

curl -s -L -o choiceregion.sh https://bit.ly/3aB2jUX
chmod +x choiceregion.sh
./choiceregion.sh
