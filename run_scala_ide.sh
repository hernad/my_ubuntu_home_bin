cd ~/scala

if [ "$1" == "4m1" ] ; then

  cd scala_ide_4.0.M1

else

  cd eclipse

fi

export UBUNTU_MENUPROXY=0
./eclipse 
# -vmargs -Xmx1536M
