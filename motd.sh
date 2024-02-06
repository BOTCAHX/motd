#!/bin/bash
ubuntu_version=$(lsb_release -d | awk -F'\t' '{print $2}')
echo " * Documentation:  https://help.ubuntu.com"
echo " * Management:     https://landscape.canonical.com"
echo " * Support:        https://ubuntu.com/pro"
if [ "$ubuntu_version" != "Ubuntu 22.04.3 LTS" ]; then
  echo ""
  echo "New release '22.04.3 LTS' available."
  echo "Run 'do-release-upgrade' to upgrade to it."
fi
echo ""
echo ""
echo "Welcome to Cloud BTCH Service !"
