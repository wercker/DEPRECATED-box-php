#!/bin/bash
git clone https://github.com/CHH/php-build.git
./php-build/install.sh
rm -rf ./php-build
chown -R ubuntu $HOME
chown -R ubuntu /usr/local/share/php-build
export PHP_BUILD_CONFIGURE_OPTS="--with-bz2 --enable-intl --enable-calendar"
export PHP_BUILD_VERSIONS_DIR="$HOME/.phpenv/versions"
