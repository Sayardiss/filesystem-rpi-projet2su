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
adduser music
passwd
git status
apt-get --purge remove xinetd nis yp-tools tftpd atftpd tftpd-hpa telnetd rsh-server rsh-redone-s
adduser admin sudo
adduser admin
adduser admin sudo
passwd
passwd
su admin
apt install sudo
adduser admin sudo
su admin
cat /etc/sudoers
visudo
gpasswd -d admin sudo
git status
git add -A
git commit -m "Ajout de MySQL + users music/admin"
git push
apt install logcheck
nano /etc/aliases 
cp /etc/logcheck/logcheck.conf{,.ori}
cp /etc/logcheck/logcheck.logfiles{,.ori}
vi /etc/logcheck/logcheck.conf
nano /etc/logcheck/logcheck.conf
su -s /bin/bash -c "/usr/sbin/logcheck" logcheck
nano /etc/logcheck/logcheck.conf
nano /etc/logcheck/logcheck.conf
sudo -u logcheck logcheck
apt install msmtp
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
echo $?
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
echo "Test from msmtp" | msmtp "barthdu09@gmail.com" -a yahoo
echo "Test from msmtp" | msmtp "barthdu09@gmail.com"
nano /etc/msmtprc
echo "Test from msmtp" | msmtp "barthdu09@gmail.com" -a yahoo
echo "Test from msmtp" | msmtp "barthdu09@gmail.com" -a yahoo
apt purge --auto-remove msmtp logcheck
ls
git status
git reset HEAD --hard
git clean -fd
git status
git clean -fd
git status
git add -A
git commit -m "Cancel logcheck"
git push
su music
cfdisk
fdisk -l
cfdisk /dev/mmcblk0p
cfdisk /dev/mmcblk0
shutdown -h now
a
passwd
exit
lvresize --resizefs --size 10G /dev/ma
ls /dev/mapper/crypt 
lvresize --resizefs --size 10G /dev/mapper/crypt
lvdisplay
resize2fs -p /dev/mapper/crypt 10g
nano /etc/ssh/sshd_config 
service sshd reload
service sshd restart
service ssh restart
ls
exit
cd
ls
su music
nano /etc/resolv.conf
nano /etc/resolvconf.conf
ping www.youtube.com
nano /etc/network/interfaces
service networking restart
ping www.youtube.com
mkdir /etc/resolvconf/resolv.conf.d/ -p
nano /etc/resolvconf/resolv.conf.d/base
reboot
pip install bluetooth
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py 
pip install bluetooth
apt-get install bluetooth libbluetooth-dev
exit
apt install mpv
mpv I5mlAZkibgw.opus 
cat /etc/passwd
cd ..
chown music:music -R .
chown music:music -R *
su music
reboot
git status
git add /etc/ssh/sshd_config /etc/network/interfaces .bash_history 
git commit -m "permanent DNS + whitelist ssh"
mysql -u root -p
mysql -u root -p
git status
git add -A
git commit -m "Seting up MySQL"
su music
apt install ffpmeg
apt install ffmpeg
git status
ls
cd ../music/
ls
rm Sik\ World\ -\ Idgaf-cZ-yRAqytdc.*
ls
git status
git add -A
git commit -m "Installation ffmpeg"
cd /
nano .gitignore 
git push 
su music
adduser music bluetooth
bluetoothctl <<EOF
power on
discoverable on
pairable on
agent NoInputNoOutput
default-agent 
EOF

bluetoothctl <<EOF
power on
discoverable off
pairable off
agent NoInputNoOutput
default-agent 
EOF

su music
exit
cd ../music/
cd MusicOnPi/
ls
cd python/
cd ../sound/
ls
mpv I5mlAZkibgw.opus 
su music
su -
su - music
visudo
su - music
visudo
su - music
visudo
exit
chown -R music:music MusicOnPi
exit
su music -
su - music
visudo
su - music
su - music
