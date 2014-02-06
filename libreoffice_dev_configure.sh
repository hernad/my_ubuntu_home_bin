echo "pozovi sa source komandom"

export LD_LIBRARY_PATH=

./configure --without-java --enable-gtk3 --enable-static-gtk --prefix=/opt/knowhowERP/LO --without-doxygen --with-system-cairo --disable-gstreamer-0-10 --without-help --without-myspell-dicts --disable-extensions --disable-python --disable-odk



echo setuj environment varijable:
echo SAL_USE_VCLPLUGIN=gtk3 GDK_BACKEND=broadway /opt/knowhowERP/LO/program/soffice -calc

