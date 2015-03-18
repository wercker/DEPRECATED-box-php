#!/bin/bash

sudo add-apt-repository ppa:ondrej/php5 -y
sudo apt-get update
sudo apt-get build-dep php5-cli
sudo apt-get install libreadline-dev
sudo apt-get install re2c
sudo apt-get install flex
sudo apt-get install bison
