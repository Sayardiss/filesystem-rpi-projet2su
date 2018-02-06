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
find / -size +95M
cd
git status
cd
cd /
nano .gitignore 
git status
rm /home/pi/vpn.ovpn
ls /usr/local/sbin/
rm -rf /usr/local/sbin/
git status
nano .gitignore 
git status
nano .gitignore 
git status
git status
nano .gitignore 
git add -A
git commit -m "Ajout lancement auto d'openvpn"
mongodb
mongo
git push
ssh-keygen -t rsa -b 4096
cat ~/.ssh/id_rsa.pub 
git remote set-url origin git@github.com:Sayardiss/filesystem-rpi-projet2su.git
git status
git add -A
git commit -m "Ajout clé ssh pour Git"
git push
apt upgrade
ls
cat filesystem-rpi-projet2su/
rmdir filesystem-rpi-projet2su/
ls filesystem-rpi-projet2su/
rm -rf filesystem-rpi-projet2su/
git status
nano .gitignore 
apt install selinux
nano .gitignore 
halt
cd
ls
openvpn vpn.ovpn 
reboot
cd
ls
rm Bizzey\ -\ JA\!\ ft.\ Kraantje\ Pappie\,\ Chivv\ \&\ Yung\ Felix-N_LmMLO0aEU.webm
ls
mkdir mongodb
cd mongodb
openssl rand -base64 32 > mongodb-keyfile
chmod 600 mongodb-keyfile 
mongod --enableEncryption --encryptionKeyFile mongodb-keyfile 
mongod --help
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDgK/rLZNBEPh7+Kck9TzWvlVP7Pg+d1DeV3fr3RUvRwmKVLmn49j3OSx7zf2sAslzQXCrbMyNSxzpIfcaNbqHVYEYZrC3iWdSWsiYg/qFAi9XGA2HkK9LUTX8gvnR1sWkGcrmoP3dSDEHk4KhPyejA5hsahXpkCNNvQsX5wwpyKwarYZyEfOuzHZuce0gvfxNrw1vznBeLF/AhR7GFCdmnJL4to1PmTLTTmP/Dga8/EB52lCB+NqCaFckFT69Ag2AT8MGHkMDHhim1DBEvSbTWMevpgZcTojY3yh0JRynQvFCrNP609ue3qrACb0+QnYOFOLXpGP0mLVCbRy5H+l8NpN7qQMdqVrdw7WHJOCkycDT3R850F8D3vRejrTEF9Fl3W28qKxlIt6XbhV+wPWndOJJTPY3CgQ9gEAlO+o1kSYt5SE5Zc61am12mrHinnpjQoMQ+UarOIZKQ4acZI/H0PbTINjcQJdQtE1u8zBA9JLoS/ulwsZXXpBfi/iidzKayzZp5nzjGMrk9x9oglIUXDg0h0vDhl46bvGxApiKNAybVpDTRHyIiiPigO31NdV5rsganPWVX5YR7/v4htuHQtup4vnHa6MuZv+wYpxgV+ytPCXJQyj8w/BzrYw2SF3WHbxTaSxMtfKYXDQnHg4XMmwykl5K/X/DqlmUC5hV7yw== root@krammer.quadhost.net" >> ~/.ssh/authorized_hosts
exit
cd
mv .ssh/authorized_hosts .ssh/authorized_keys
exit
<<<<<<< HEAD
su pi
deluser pi
echo $?
ps aux
ps aux | grep 5..
kill -9 567
kill -9 570
deluser pi
kill -9 577
deluser pi
ls
ip a
cd /
ls
git status
nano .gitignore 
nano .gitignore 
git status
rm -rf root/mongodb/
ls
git status
nano .gitignore 
git rm -r --cached /var/log
ls /var/log/
git status
git rm -r --cached /run/
nano .gitignore 
git status
nano .gitignore 
git rm -r --cached /var/cache/
git status
rm -rf /home/pi/
git status
git add *
git commit -m "Deleted Pi user"
git push
ls
apt install selinux-basics selinux-policy-default 
selinux-activate 
reboot
ls
ls
ls
check-selinux-installation 
apt install auditd
selinux-activate 
apt install auditd
apt remove --purge auditd
make menuconfig
check-selinux-installation 
selinux-config-enforcing 
nano /etc/pam.d/login 
selinux-activate 
nano .ssh/authorized_keys 
git status
cd /
git commit -m "Installation foirée de SELinux"
git reset HEAD~
git status
apt remove --purge selinux-*
apt remove --purge auditd
apt remove --autoremove
apt remove --autoremove --purge
git status
cd /
ls
cat .gitignore 
git rm -r --cached /run/
git status
git rm -r --cached /var/log/
git status
git rm -r --cached /var/cache/
git status
git commit -ma "Added opti-1511 ssh_key"
git commit -am "Added opti-1511 ssh_key"
git status
nano .gitignore 
git status
git add *
git commit -m "added files"
ls
pwd
git status
/home/user/Cours/SecuSystemes_KAUFFMANN/binwalk
/home/user/Cours/SecuSystemes_KAUFFMANN/compilation
/home/user/Cours/SecuSystemes_KAUFFMANN/entropie.txt
/home/user/Cours/SecuSystemes_KAUFFMANN/entropy.png
/home/user/Cours/SecuSystemes_KAUFFMANN/reverse_emily
/home/user/Cours/SecuSystemes_KAUFFMANN/TD_1_Reverse_engineering.md
/home/user/Cours/SecuSystemes_KAUFFMANN/TD_1_Reverse_engineering.md.html
/home/user/Cours/SecuSystemes_KAUFFMANN/TD_2_Emily.md
/home/user/Cours/SecuSystemes_KAUFFMANN/TD_2_Emily.md.html
/home/user/Cours/SecuSystemes_KAUFFMANN/TD_3_crosscompilation.md
apt-get install cryptsetup lvm2 busybox
nano /boot/config.txt 
nano /boot/cmdline.txt 
cp /boot/cmdline.txt /boot/cmdline.txt.bak
nano /boot/cmdline.txt 
ls /dev/
nano /etc/fstab 
nano /etc/crypttab 
dd if=/dev/zero of=/tmp/fakeroot.img bs=1M count=20
cryptsetup luksFormat /tmp/fakeroot.im
cryptsetup luksFormat /tmp/fakeroot.img
cryptsetup luksOpen /tmp/fakeroot.img crypt
mkfs.ext4 /dev/mapper/crypt
mkinitramfs -o /boot/initramfs.gz
lsinitramfs /boot/initramfs.gz | grep cryptsetup
lsinitramfs /boot/initramfs.gz
mkinitramfs -o /boot/initramfs.gz
nano /etc/fstab 
mkinitramfs -o /boot/initramfs.gz
lsinitramfs /boot/initramfs.gz | grep cryptsetup
init 0
apt install dropbear
mkinitramfs -o /boot/initramfs.gz 
cat /etc/initramfs-tools/root/.ssh/id_rsa
mkinitramfs -o /boot/initramfs.gz 
nano /etc/initramfs-tools/initramfs.conf 
ip a
exit
ip a
nano /usr/share/initramfs-tools/scripts/local-top/cryptroot
mkinitramfs -o /boot/initramfs.gz
nano /etc/initramfs-tools/initramfs.conf 
mkinitramfs -o /boot/initramfs.gz
apt install busybox dropbear*
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub >> /etc/dropbear-initramfs/authorized_keys
nano /etc/dropbear-initramfs/authorized_keys
update-initramfs -u
mkinitramfs -o /boot/initramfs.gz
sudo cat /etc/initramfs-tools/root/.ssh/id_rsa
sudo cat /etc/initramfs-tools/root/.ssh/id_rsa
sudo cat /etc/initramfs-tools/mkinitramfs -o /boot/initramfs.gz
mkinitramfs -o /boot/initramfs.gz
sudo cat /etc/initramfs-tools/root/.ssh/id_rsa
mkinitramfs -o /boot/initramfs.gz 
KEY_DIR="/mnt/sda1/.ssh"
KEY_DIR="/etc/initramfs-tools/root/.ssh/"
mkdir -p "$KEY_DIR"
dropbearkey -t rsa -f "${KEY_DIR}/id_rsa"
dropbearkey -y -f "${KEY_DIR}/id_rsa" | grep "^ssh-rsa " > "${KEY_DIR}/id_rsa.pub"
cat "${KEY_DIR}/id_rsa.pub"
nano /etc/initramfs-tools/root/.ssh/authorized_keys
mkinitramfs -o /boot/initramfs.gz
halt
=======
>>>>>>> 519cc6d7ddfecdf5eb2614e536947cfc8b423595
ls
git status
apt remove dropbear --purge
git status
git add -A
cd /
le
git status
git commit -a "Ajout de LUKS"
git commit -m "Ajout de LUKS"
git push
git pull
git merge --strategy-option ours
git status
git add -A
git merge --strategy-option ours
git commit -m "Ajout de LUKS - conflits"
git merge --strategy-option ours
git push
git status
apt purge samba*
apt purge ^x11
apt autremove -y
apt autoremove -y
apt purge libx11-.*
apt purge --auto-remove libx11-.*
apt purge --auto-remove aspell-en
apt purge --auto-remove pengu*
apt purge --auto-remove gdb
apt purge --auto-remove sudo
apt purge --auto-remove perl*
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr | less
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr > /root/package_list
cd root/
cat package_list 
apt purge --auto-remove mongo*
rm -rf /var/lib/mongodb/
rm -rf /var/log/mongodb/

cat /var/log/apt/history.log
git status
git add -a
git add -A
git commit -m "Removed several packages. See /var/log/apt/history.log"
git push
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
apt purge --auto-remove python-rpi.gpio
apt purge --auto-remove gcc*
apt purge --auto-remove gcc
ls
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
man cpp
apt purge --auto-remove cpp
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
apt purge --auto-remove rpi-update 
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -n
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
apt purge --auto-remove strace
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
apt purge --auto-remove gdb
git status
git add -A
git commit -m "Removed GCC/CPP"
git push
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
apt purge --auto-remove raspi-copies-and-fills 
apt purge --auto-remove raspi-config 
apt purge --auto-remove ed
apt purge --auto-remove htop
cat /sys/class/gpio/unexport 
cat /sys/class/gpio/export 
awk -F':' '{ print $1}' /etc/passwd
deluser mongodb
passwd games -l
cat /etc/passwd
man gpio
nano /boot/config.txt 
ip a
git status
git add -A
git commit -m "Removed ed and raspi packages. Disabled WiFi in /boot/config.txt"
git push
ls
ls
ls
ls
git status
dpkg-query -Wf '${Installed-Size}\t${Package}\t${Priority}\n' |     egrep '\s(optional|extra)' | cut -f 1,2 | sort -nr
apt purge --auto-remove avahi-daemon 
netstat -atn
netstat -an
nano /etc/network/interfaces
ip a
nano /etc/network/interfaces
nano /etc/sysctl.conf 
ifconfig -a
reboot
ping 8.8.8.8
curl ipinfo.io
curl ipinfo.io/ip
curl ipinfo.io/city
ss -at
ss atu
ss -atu
ss -atu
ss -tulpn
ss -tupn
ss -tulpn
ss -putln
lsof -i
nmap -sT -O localhost
apt install nmap
nano /etc/ssh/sshd_config 
service sshd restart
reboot
ls
apt install mysql-server
git status
cd /
git status
nano .gitignore 
git rm -r --cached /dev/char
git status
git add -A
git commit -m "Changed SSH port to 666, removed avahi and dynamic IP and IPv6"
git push
apt install mysql-server
cd
mysql_install_db 
cat /var/lib/mysql
ls /var/lib/mysql
cat /var/lib/mysql/mysql
ls -al /var/lib/mysql/
apt purge --auto-remove mysql*
dpkg -l | grep -i mysql
apt-get clean
updatedb
apt purge --auto-remove mariadb*
apt update
apt list --upgradable
apt upgrade
git status
git commit -am "Upgrade"
git push
nano /.gitignore 
git status
apt install mysql-server
hostname
hostname -f
mysql_secure_installation
mysql_secure_installation
mysql -u root -p
mysql -u root -p'   '
mysql -u root -p
mysql -u root -p
mysql -u root -p
mysql -u testuser -p
