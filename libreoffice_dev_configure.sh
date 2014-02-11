echo "pozovi sa source komandom"

echo "obavezno: export LD_LIBRARY_PATH="
export LD_LIBRARY_PATH=

sudo apt-get install -y libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libgstreamer-plugins-good0.10-dev

cd ~/dev/libreoffice/core

./autogen.sh --without-java --enable-gtk3  --prefix=/opt/knowhowERP/LO --without-doxygen --with-system-cairo --disable-gstreamer-0-10 --without-help --without-myspell-dicts --enable-dbgutil -enable-debug 

#---enable-mergelibs


echo setuj environment varijable:
echo SAL_USE_VCLPLUGIN=gtk3 GDK_BACKEND=broadway /opt/knowhowERP/LO/program/soffice -calc

