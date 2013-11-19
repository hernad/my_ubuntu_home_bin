sudo apt-get -y install flashplugin-installer

sudo apt-get -y install bison libpq-dev libx11-dev libcups2-dev  libgs-dev  libmysqlclient-dev ubuntu-sdk

sudo apt-get install libncurses5:i386 libstdc++6:i386 libz1:i386 libgl1:i386
sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1

sudo apt-get -y install mingw32

sudo apt-get -y install libunity-dev libmrss0-dev

sudo add-apt-repository -y  ppa:webupd8team/java


wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -


sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/postgresql.list'

sudo apt-get update -y

sudo apt-get -y install oracle-java7-installer
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y postgresql-9.3 pgadmin3
