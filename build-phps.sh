#!/bin/bash

# Unofficial Bash Strict Mode - http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

# Requirements: php-build, phpenv, awscli
main() {
  echo 'Building PHP versions and uploading to S3'
  echo

  local versions="$(cat ./php_versions)"

  for version in ${versions[@]}; do
    if [ "${version:0:1}" = '#' ]; then
      continue;
    fi

    echo "Checking if PHP $version exists on S3"
    local exists=$(check_php "$version")
    if [ "$exists" = "true" ]; then
      echo "PHP $version already exists on S3"
    else
      echo "PHP $version does not exists on S3"

      echo "Building PHP $version"
      build_php "$version"
      echo "Building PHP $version completed"

      echo "Uploading PHP $version"
      upload_php "$version"
      echo "Uploading PHP $version completed"
    fi
    echo
  done

  echo 'Finished building and uploading PHP versions'
}

check_php() {
  echo "false"
}

build_php() {
  local version="$1"
  local minor_version="${version:0:3}"
  local versions_dir="$HOME"/.phpenv/versions
  local build_dir="$versions_dir"/"$minor_version"

  mkdir -p "$versions_dir"

  php-build -i development --pear "$version" "$build_dir" --verbose
  sed -i  's/128M/4048M/' "$build_dir"/etc/php.ini

  # download composer and php unit
  curl -s -o "$build_dir"/bin/composer http://getcomposer.org/composer.phar
  curl -s -o "$build_dir"/bin/phpunit https://phar.phpunit.de/phpunit.phar
  curl -s -o "$build_dir"/bin/atoum http://downloads.atoum.org/nightly/mageekguy.atoum.phar
  chmod +x "$build_dir"/bin/composer "$build_dir"/bin/phpunit "$build_dir"/bin/atoum

  # archive
  tar czvf "$HOME"/"$version".tar.gz --directory="$versions_dir" "$minor_version"
}

upload_php() {
  local version="$1"

  echo "Going to upload $version!";

  ls -la "$HOME"/"$version".tar.gz
}

main $@
