sudo modprobe snd-aloop index=2
sudo docker run -it --rm -p 6080:80 --device /dev/snd -e ALSADEV=hw:2,0 dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1
