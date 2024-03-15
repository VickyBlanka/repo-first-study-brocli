while true
do
    sysctl -w net.ipv4.conf.eth0.route_localnet=1 # to enable redirecting to localhost
    EXTERNAL_IP=0.0.0.0 #change this line to reflect external ipaddress
    sudo iptables -t nat -A OUTPUT -d ${EXTERNAL_IP} -j DNAT --to-destination 127.0.0.1
    netstat -na
    sleep 128717
done
