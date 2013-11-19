vcodec="h264"
acodec="mp4a"
bitrate="1024"
arate="192"
ext="mp4"
mux="ts"
vlc="vlc"
fmt="3gp"
dst="trans/"

mkdir $dst

for a in *$fmt; do
echo $a
$vlc -I dummy -vvv "./$a" --sout "#transcode{vcodec=$vcodec,vb=$bitrate,acodec=$acodec,ab=$arate,channels=6}:standard{mux=$mux,dst=\"$dst/$a.$ext\",access=file}" vlc://quit
done
