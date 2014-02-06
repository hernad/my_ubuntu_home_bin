cd ~/dev
mkdir skia
cd skia
gclient config --name . https://skia.googlesource.com/skia.git
gclient sync
git checkout master

xdg-open https://sites.google.com/site/skiadocs/user-documentation/quick-start-guides/linux

