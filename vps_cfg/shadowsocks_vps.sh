apt-get update && apt-get -y install git php5 vim
git clone https://github.com/mirsking/shadowsocks-php.git

cd shadowsocks-php
vim Applications/Shadowsocks/config.php
php start.php start -d

