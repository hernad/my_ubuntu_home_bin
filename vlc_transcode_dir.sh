vcodec="h264"
acodec="mp4a"
bitrate="1024"
arate="192"
ext="mp4"
mux="ts"
vlc="vlc"
fmt="3gp"
dst="trans"

mkdir $dst

for a in *$fmt; do
echo $a
$vlc -I dummy -vvv "./$a" --sout "#transcode{vcodec=h264,vb=0,scale=0,acodec=mpga,ab=128,channels=2}:standard{mux=$mux,dst=$dst/$a.$ext,access=file}" vlc://quit
echo $a

done
