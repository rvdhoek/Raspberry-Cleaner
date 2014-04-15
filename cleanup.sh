#!/bin/sh
for file in /var/log/*.log /var/log/mail.* /var/log/debug /var/log/syslog /var/log/wtmp; do [ -f "$file" ]  && rm -f "$file"; done
for dir in fsck news; do [ -d "/var/log/$dir" ] && rm -rf "/var/log/$dir"; done
for file in /var/log/apache2/*.log /var/log/mrtg/*.log /var/log/*.log.* /var/log/*.gz /var/log/*.1 /var/log/dmesg.* /var/log/dmesg /var/log/messages.* /var/log/messages;  do [ -f "$file" ] && rm -f "$file"; done
rm /var/www/mrtg/*.png
apt-get -y update -q
apt-get -y dist-upgrade -q
apt-get -y autoremove -q
apt-get -y autoclean -q

HOSTNAME=$(hostname)
echo  "Host: $HOSTNAME is cleaned/updated" | mail -s "Host: $HOSTNAME is cleaned/updated" email@gmail.com
#echo 0
TODAY=$(date)
echo "Date: $TODAY                     Host:$HOSTNAME             " >> /var/log/clean_script.log
echo "----------------------------------------------------------------------------" >> /var/log/clean_script.log

