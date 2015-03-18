#!/bin/bash
git clone https://github.com/CHH/phpenv.git
sudo ./phpenv/bin/phpenv-install.sh
echo 'export PATH="/home/ubuntu/.phpenv/shims:/home/ubuntu/.phpenv/bin:$PATH"' >> $HOME/.bash_profile
echo 'eval "$(phpenv init -)"' >> $HOME/.bash_profile

chown -R ubuntu $HOME
chown -R ubuntu /usr/local/share/php-build
