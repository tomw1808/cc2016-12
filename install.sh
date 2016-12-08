#!/usr/bin/env bash

if ! [ -L /var/www ]; then
  rm -rf /var/www/*
  ln -fs /vagrant/zend/public /var/www/public
fi

git clone https://github.com/zendframework/ZendSkeletonApplication.git /vagrant/zend

cd /vagrant/zend

composer self-update
composer install