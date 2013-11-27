vcodec="mp4v"
acodec="mp4a"
bitrate="1024"
arate="192"
ext="mp4"
mux="ts"
vlc="cvlc"
fmt="3gp"
dst="trans"

transcode() {
$vlc  -v $a --sout "#transcode{vcodec=h264,vb=0,scale=0,ab=128,channels=2}:standard{mux=mp4,dst=$dst/$a.$ext,access=file}" vlc://quit

echo TRANSCODE $a END
}


mkdir $dst

for a in *\.*; do

echo $a

rm $dst/$a.$ext

# iz nekog razloga vlc jednostavno ne uradi posao, a kod novog pokretanja uradi !?
until [ -f $dst/$a.$ext ] ; do
  transcode
done

#ovo ne pije vode exit code je uvijek 0 kod vlc-a :(
#if [ ! "$?" == "0" ] ; then
#   echo ERR transcode $a neuspjesan !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#
#   exit 1
#else
#   echo transcode uspjesan
#fi

echo $a

done
