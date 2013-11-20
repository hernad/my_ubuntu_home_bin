vcodec="h264"
acodec="mp4a"
bitrate="1024"
arate="192"
ext="mp4"
mux="ts"
vlc="vlc"
dst="rotated"

mkdir $dst

for a in *3gp; do
$vlc -I dummy -vvv "./$a" --sout "#transcode{vcodec=h264,vb=0,scale=0,acodec=mpga,ab=128,channels=2}:standard{mux=$mux,dst=$dst/$a.$ext,access=file}" --sout-transcode-vfilter transform --transform-type vflip --sout-keep vlc://quit
echo $a
done

