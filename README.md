# php box

A wercker box with multiple PHP installation installed.

Installed PHP versions:

- PHP `5.3.29`
- PHP `5.4.36`
- PHP `5.5.20`
* PHP `5.6.4`

Installed extensions:

- bz2
- intl
- calendar

# What's new

- Add calendar extension to PHP

# License

The MIT License (MIT)

# Changelog


## 1.2.0
- added php 5.6 support


## 1.1.1

- updated php 5.3 to 5.3.29
- updated php 5.4 to 5.4.36
- updated php 5.5 to 5.5.20

## 1.1.0

- Add calendar extension to PHP

## 1.0.7

- use latest wercker-essential box (fix for missing phantomjs)
- updated php 5.4 to 5.4.28

## 1.0.6

- updated php 5.4 to 5.4.27
- updated php 5.5 to 5.5.11

## 1.0.5

- updated base box (wercker-essentials). Now with nodejs 10.0.26, optipng 0.7.5 and phantonjs 1.9.7

## 1.0.4

- Add intl extension to PHP

## 1.0.3

- Add bz2 extension to PHP
- Update `web-essentials` to `1.0.1`

## 1.0.2

- Add `.phpenv/shims` to `$PATH`

## 1.0.0

- Update PHP 5.4 to 5.4.24
- Update PHP 5.5 to 5.5.8

## 0.9.8

- Update PHP 5.3 to 5.3.28
- Update PHP 5.4 to 5.4.23
- Update PHP 5.5 to 5.5.7
- Composer selfupdate

## 0.9.7

- Drop s3 package sync (this is a change in the build process, and doesn't effect the box itself)

## 0.9.6

- Use `--prefer-source` option for `composer` in suggested `wercker.yml`
- Updated composer

## 0.9.5

- Updated composer

## 0.9.4

- Update [`web-essentials`](https://app.wercker.com/#applications/51ab0c42df8960ba45003fd9/tab/details) to 0.0.12

## 0.9.3

- Install phpunit from new phar location
- Adds config-add extension
- Adds config-rm extension

## 0.9.2

- Update [`web-essentials`](https://app.wercker.com/#applications/51ab0c42df8960ba45003fd9/tab/details) to 0.0.11

## 0.9.1

- Add license
- Update readme

## 0.9.0

- Initial release
