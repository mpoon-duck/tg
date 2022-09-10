#!/bin/sh
echo "nameserver 127.0.0.1" > /etc/resolv.conf 
sed -i "s/\$DNS/$DNS/g" /ag/AdGuardHome.yaml 
/ag/adguard -c /ag/AdGuardHome.yaml -w /ag/ -l /ag/ag.log &
/gg -L=ss2+ws://AEAD_CHACHA20_POLY1305:$PASS@:81?path="/$MYPATH"&dns=127.0.0.1:$DNS/udp &> run.log& # | tee run.log&
#cat /etc/caddy/Caddyfile | sed  -e "s/\$MYPATH/$MYPATH/g" -e "1c :$PORT" >/etc/caddy/Caddyfile 
sed -i "s/\$MYPATH/$MYPATH/g" "1c :$PORT" /etc/caddy/Caddyfile 
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
#if [ $DNS == 53 ]
#then 
 
#fi
