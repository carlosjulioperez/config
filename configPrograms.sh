#Configuración de accesos directos y programas
cp -r /mnt-system/local/config/knoppix771/programs/geany ~/.config/
cp /mnt-system/local/config/knoppix771/programs/panel ~/.config/lxpanel/LXDE/panels/

lxpanelctl restart
