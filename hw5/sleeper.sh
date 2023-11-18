#!/bin/bash

for i in {1..10}
do
  date +"%H:%M:%S"
  # sleep 5
  sleep 0.5
  ps -ef | wc -l
done

cat /proc/cpuinfo >/tmp/file.txt

cat /etc/os-release | head -1 >>/tmp/file.txt

cat /etc/os-release |head -1 |sed 's/NAME="//' |awk '{print$1}' >>/tmp/file.txt

for i in {50..100}
do
 touch /tmp/$i.txt
done

echo "Done!"

