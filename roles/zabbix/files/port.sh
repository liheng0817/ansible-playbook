#!/usr/bin/env bash
# Auth: Liheng

export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

length=`cat /etc/zabbix/port | egrep -v "^#|^$" | wc -l`
count=0
printf "{\n"
printf "\"data\":\n[\n"

cat /etc/zabbix/port | egrep -v "^#|^$" | while read port service
do
        printf "{\n"
        printf "\"{#PORT}\": \"$port\",\n\"{#SERVICE}\": \"$service\"}"
        count=$(( $count + 1 ))
        if [ $count -lt $length ];then
        printf ',\n'
        fi
done
printf "\t\n]\n"
printf "}\n"
