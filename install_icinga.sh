#!/bin/bash
VERSION="2.6.3-1~ppa1~xenial1"
wget -qO - http://packages.icinga.org/icinga.key | apt-key add
echo 'deb http://packages.icinga.org/ubuntu icinga-xenial main' \
    | sudo tee /etc/apt/sources.list.d/icinga-main-xenial.list
apt-get update
apt-get install -y --force-yes \
    icinga2="${VERSION}" \
    icinga2-bin="${VERSION}" \
    icinga2-common="${VERSION}" \
    icinga2-doc="${VERSION}" \
    libicinga2="${VERSION}"
icinga2 api setup
service icinga2 restart
echo "Icinga2 API credentials:"
cat /etc/icinga2/conf.d/api-users.conf
