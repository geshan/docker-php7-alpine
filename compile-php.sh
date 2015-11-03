mkdir $HOME/php7
cd $HOME/php7

#wget https://github.com/php/php-src/archive/php-7.0.0RC6.tar.gz
#tar -zxvf php-7.0.0RC6.tar.gz
#cd php-src-php-7.0.0RC6

git clone https://git.php.net/repository/php-src.git
cd php-src
./buildconf
mkdir $HOME/php7/usr/etc

./configure \
    --prefix=$HOME/php7/usr \
    --with-config-file-path=$HOME/php7/usr/etc \
    --enable-mbstring \
    --enable-zip \
    --enable-bcmath \
    --enable-pcntl \
    --enable-ftp \
    --enable-exif \
    --enable-calendar \
    --enable-sysvmsg \
    --enable-sysvsem \
    --enable-sysvshm \
    --enable-wddx \
    --with-curl \
    --with-mcrypt \
    --with-iconv \
    --with-gmp \
    --with-gd \
    --with-jpeg-dir=/usr \
    --with-webp-dir=/usr \
    --with-png-dir=/usr \
    --with-zlib-dir=/usr \
    --with-xpm-dir=/usr \
    --with-freetype-dir=/usr \
    --with-t1lib=/usr \
    --enable-gd-native-ttf \
    --enable-gd-jis-conv \
    --with-openssl \
    --with-zlib=/usr \
    --with-bz2=/usr \
    --with-kerberos=shared,/usr/lib \
    --disable-nls 
make
make install

cp /php.ini $HOME/php7/usr/etc

ln -s /root/php7/php-src/sapi/cli/php /usr/bin/php

