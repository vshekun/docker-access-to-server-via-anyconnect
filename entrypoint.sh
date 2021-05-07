#!/bin/bash

echo iptables for $REMOTE_HOST
iptables -t nat -A PREROUTING -i eth0 -p tcp -j DNAT --to-destination $REMOTE_HOST
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE

CMD="echo '$ANYCONNECT_PASSWORD' | openconnect --user='$ANYCONNECT_USER' --timestamp $ANYCONNECT_ARGS '$ANYCONNECT_SERVER'"
echo $CMD
eval $CMD
