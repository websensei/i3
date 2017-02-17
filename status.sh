#!/bin/sh
free -m | awk 'NR==2{printf "M: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "D: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "C: %.2f\n", $(NF-2)}'
systemctl status nginx | awk 'Active'
echo --------
who
echo --------
~                 
