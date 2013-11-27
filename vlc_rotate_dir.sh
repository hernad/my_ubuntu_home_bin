vcodec="h264"
acodec="mp4a"
bitrate="1024"
arate="192"
ext="mp4"
mux="ts"
vlc="vlc"
dst="rotated"

mkdir $dst

rotate() {

if [ "$1" == "h" ] ; then
   echo "Rotiram samo horizontalno"
   TRAN="--transform-type hflip"
else
   TRAN="--transform-type hflip --transform-type vflip"
fi
  
$vlc -I dummy  -v $a --sout "#transcode{vcodec=h264,vb=0,scale=0,ab=128,channels=2}:standard{mux=mp4,dst=$dst/$a.$ext,access=file}" --sout-transcode-vfilter transform $TRAN --sout-keep vlc://quit

echo ROTATE $a END
}


mkdir $dst

for a in *\.*; do

  echo $a

  rm $dst/$a.$ext

  # iz nekog razloga vlc jednostavno ne uradi posao, a kod novog pokretanja uradi !?
  until [ -f $dst/$a.$ext ] ; do
    rotate $1
  done

done
