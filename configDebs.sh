/mnt-system/local/config/knoppix771/configRmConf.sh

cd /mnt-system/local/config/knoppix771/debs
sudo dpkg -i *.deb
#sudo dpkg -i opera-stable_45.0.2552.898_i386.deb 

#sudo adduser knoppix libvirt
#sudo adduser knoppix libvirt-qemu

/mnt-system/local/config/knoppix771/configPrograms.sh
