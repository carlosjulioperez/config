#Configuración de accesos directos y programas
cp -r /mnt-system/local/config/knoppix771/programs/geany ~/.config/
cp /mnt-system/local/config/knoppix771/programs/panel ~/.config/lxpanel/LXDE/panels/
cp /mnt-system/local/config/knoppix771/programs/gnome-commander ~/.gnome2/

lxpanelctl restart
