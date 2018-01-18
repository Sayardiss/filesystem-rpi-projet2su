passwd pi
passwd
vi /etc/hostname 
vi /etc/hostname 
echo "pi-projet2SU-barth" > /etc/hostname
reboot
ls /etc/rc.d/
ls /etc/rc*
shopstar -g
shopt globstar
shopt -s globstar
shopt globstar
ls /etc/**/init
ls /etc/**/init/
nano /etc/init.d/openvpn 
nano  /usr/local/sbin/unpriv-ip
visudo
cd
ls
nano vpn.ovpn 
openvpn --mktun --dev tun1 --dev-type tun --user pi --group pi
cp vpn.ovpn /home/pi/
su pi
visudo
nano /etc/sudoers
reboot
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
vi /etc/hostname 
vi /etc/hosts
youtube-dl 'N_LmMLO0aEU' -x --audio-format mp3 '%(title)s.%(ext).s'
apt install openvpn
cd /root/
nano vpn.ovpn
openvpn vpn.ovpn
openvpn vpn.ovpn
openvpn vpn.ovpn &
youtube-dl 'N_LmMLO0aEU' -x --audio-format mp3 '%(title)s.%(ext).s'
ping youtube.com
nano /etc/resolv.conf
source /etc/resolv.conf
service networking restart
ping youtube.com
youtube-dl 'N_LmMLO0aEU' -x --audio-format mp3 '%(title)s.%(ext).s'
apt install ffmpeg
pkill -f openvpn
apt update --fix-missing
apt install git
apt upgrade -y
cd /
git clone https://github.com/Sayardiss/projet-2su.git .
git clone https://github.com/Sayardiss/projet-2su.git
mv projet-2su/ /
mv projet-2su/* /
ls -al
mv projet-2su/.git .
ls -al
ls -al projet-2su/
rmdir projet-2su/
git status
git add boot/ bin/ etc/ home/ lib/ opt/ root/ sbin/ sys/ usr/ var/
nano .gitignore
git status
nano .gitignore
git status
nano .gitignore
git add -a
git add -A
git commit -m "Systeme de fichier initial, avec OpenVPN, Git et Youtube-DL installés"
git config --global user.email "sayardiss@gmail.com"
git config --global user.name "Sayardiss"
git commit -m "Systeme de fichier initial, avec OpenVPN, Git et Youtube-DL installés"
git push
nano .gitignore 
git status
apt install mongodb
git commit -m "Installation de mongodb"
git status
git add -A
git commit -m "Installation de mongodb"
git push
nano .gitignore 
git push
git add -A
git commit -m "Installation de mongodb"
git add -A
git push
apt remove --purge mongodb
git add -A
git add -A && git commit -m "Removing big files" && git push
git reset HEAD~1
git add -A && git commit -m "Removing big files" && git push
rm /var/lib/mongodb/journal -rf
git add -A && git commit -m "Removing big files" && git push
git reset HEAD~1
git commit -m "Removing big files" && git push
git reset HEAD~1
git reset HEAD~1
git reset HEAD~1
git reset HEAD~1
git reset HEAD~1
nano .gitignore 
rm /var/lib/mongodb/journal -rf
git commit -m "Removing big files" && git push
git commit -am "Removing big files" && git push
git add -A
git commit -am "Removing big files" && git push
git pull
rm var/swap 
cat .gitignore 
git clone https://github.com/Sayardiss/filesystem-rpi-projet2su.git
mv filesystem-rpi-projet2su/.git .
rm -rf .git
rm -rf .git
mv filesystem-rpi-projet2su/.git .
git status
git add -A && git commit -m "Initial, OpenVPN, YoutubeDL"
git add -A && git commit -m "Initial, OpenVPN, YoutubeDL" && git push
nano .gitignore 
apt install mongodb-server
sudo apt autoremove
nano /etc/rc.d/init.d/openvpn-su
grep -R "openvpn --daemon" /
grep -R "openvpn --daemon" /etc/
grep -R "openvpn" /etc/
cd
nano /usr/local/sbin/unpriv-ip
openvpn --mktun --dev tun1 --dev-type tun --user pi --group pi
ip a
su pi -c "openvpn vpn.ovpn"
su pi -c "openvpn /home/pi/vpn.ovpn"
nano /etc/default/openvpn 
nano vpn.ovpn 
ln vpn.ovpn /etc/openvpn/vpn.conf
reboot
