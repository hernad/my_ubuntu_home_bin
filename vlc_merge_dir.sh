vcodec="h264"
acodec="mp4a"
bitrate="1024"
arate="192"
ext="mp4"
mux="ts"
vlc="vlc"
fmt="3gp"
dst="trans"

files=""

for a in *$fmt; do

files="$files $a"
echo $a
done

$vlc  $files --sout-keep --sout="#gather:transcode{vcodec=h264,vb=0,scale=0,acodec=mpga,ab=128,channels=2}:standard{mux=ts,dst=all.$ext,access=file}"

#vlc://quit

