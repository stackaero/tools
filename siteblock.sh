#!/bin/bash

hosts=( "gmail.com" "mail.yahoo.com" "inbox.google.com" "drive.google.com" "dropbox.com")

if [ ! -f /etc/hosts.org ] ;
then
 cp /etc/hosts /etc/hosts.org
else
  cp /etc/hosts.org /etc/hosts
fi

for i in "${hosts[@]}"
do
   echo "127.0.0.01 $i \r\n" >> /etc/hosts
done
