export GOROOT=/mnt-system/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=/mnt-system/local/projects/gows

#Obtener gotour
sudo go get golang.org/x/tour/gotour

#Ejecutar
go tool tour
