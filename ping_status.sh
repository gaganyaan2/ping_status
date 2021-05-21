echo 'ping_ip="8.8.8.8"
while(true)
do
    ping_status=$(ping  -c 1 "$ping_ip" | sed -n 2p)
    if [ "$ping_status" == "" ]
    then
        ping_status=$(ping  -c 1 "$ping_ip"  2>&1)
    fi
    now=$(date +%d-%m-%Y_%H:%M:%S)

    echo "$ping_status $now" >> /tmp/ping_status.txt
    sleep 1
done' > /etc/systemd/system/ping_status.service

systemctl daemon-reload
systemctl start ping_status
