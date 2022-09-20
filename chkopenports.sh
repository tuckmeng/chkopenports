#!/bin/bash
echo "Scanning $1"
nmap -p- -Pn $1 | grep -e "tcp.*open" -e "^PORT" -e "udp.*open" | tee >( echo "`grep -c "open"|sed s/\n//g` ports open in $1" ) | tee >( gawk -f ./chkbadports.awk )
