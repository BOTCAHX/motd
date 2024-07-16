#!/bin/bash

# Ubuntu Version
ubuntu_version=$(lsb_release -d | awk -F'\t' '{print $2}')
new_release="22.04.3 LTS"
ubuntu_codename=$(lsb_release -c | awk -F'\t' '{print $2}')

# system
echo -e "\nWelcome to Ubuntu $ubuntu_version ($ubuntu_codename)\n"

# support
cat << EOF
 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro
EOF

# ubuntu version
if [[ "$ubuntu_version" != *"$new_release"* ]]; then
  echo ""
  echo "New release '$new_release' available."
  echo "Run 'do-release-upgrade' to upgrade to it."
fi

# login history
last_login=$(last -n 1 $USER | head -n 1)
echo -e "\n$last_login\n"

# disk
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
disk_total=$(df -h / | awk 'NR==2 {print $2}')
disk_used=$(df -h / | awk 'NR==2 {print $3}')
disk_avail=$(df -h / | awk 'NR==2 {print $4}')
echo "Usage of /: $disk_usage of $disk_total, $disk_used used, $disk_avail available"

# memory
memory_usage=$(free -h | awk 'NR==2 {print $3 "/" $2}')
echo "Memory usage: $memory_usage"

# load average
load_average=$(uptime | awk -F'load average:' '{print $2}')
echo "Load average:$load_average"

echo -e "\nWelcome to Cloud BTCH Service!"
