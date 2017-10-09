HOME=/home/knoppix
PROY=$HOME/proyectos
DOCS=/mnt-system/documentos
LOCAL=/mnt-system/local
PROJECTS=$LOCAL/projects
CONFIG=$LOCAL/config/knoppix771
OX_HOME=$LOCAL/openxava-5.6.1
BORG_DB=$HOME/.borg_db

export PATH=/mnt-system/local/apache-maven-3.3.9/bin:$PATH

export GOROOT=/mnt-system/local/go
export PATH=$PATH:$GOROOT/bin

#Enlace para e-sword
ln -s $DOCS/esword/modulos $HOME/.wine/drive_c
cp $CONFIG/esword/* $HOME/.wine

#Configuración de alkitab
#Todas las biblias se instalaron en /mnt-system/local/.sword en vez de /home/knoppix/.sword
cp -r $CONFIG/.alkitab $HOME

#Enlace para documentos
ln -s $DOCS $HOME
#ln -s $DOCS/ebook/openxava/documentacion/libro $HOME

#Enlace para carpeta bin
ln -s $CONFIG/bin $HOME

#Configuración de vim
cp $CONFIG/vim/dotVimrc $HOME/.vimrc

#Carpetas de plugins para vim
cp -R $CONFIG/vim/dotVim $HOME/.vim

#Carpeta local
ln -s $LOCAL $HOME
sudo ln -s $LOCAL/fe /usr/local

#Carpetas de desarrollo
mkdir -p $PROY

ln -s $PROJECTS/design $PROY
ln -s $PROJECTS/changelogs $PROY
ln -s $PROJECTS/gows $PROY
ln -s $PROJECTS/Webapp $PROY
ln -s $PROJECTS/cjerp $PROY
ln -s $PROJECTS/nubesoft $PROY
ln -s $PROJECTS/sgs $PROY
ln -s $PROJECTS/prototipos $PROY
ln -s $OX_HOME/workspace/OpenXava $PROY
ln -s $OX_HOME/workspace/Addons $PROY
#Preparar carpeta de tomcat
cp -r $OX_HOME/tomcat $HOME
ln -s $PROY/Webapp/target/Webapp $HOME/tomcat/webapps

rm -rf ~/.cache/chromium
rm -rf ~/.cache/mozilla
rm -rf ~/.config/chromium
rm -rf ~/.mozilla

/mnt-system/local/config/knoppix771/configRmConf.sh

#BORG Calendar
mkdir $BORG_DB
ln -s $LOCAL/BORGCalendar/borgdb.h2.db $BORG_DB
