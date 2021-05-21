# ping_status

## Problem statement : 
Generally the router, switches and power supply that we use has some age limit(2-5 years) and after that they start behaving very strange(packget drops, more latency, reduced wifi range, frequent reboot, etc)

## Motivation : 
Simple way to check basic network connectivty for any network device

### install ping_status service(as root)
```
chmod +x ping_status.sh
./ping_status.sh
OR
curl https://raw.githubusercontent.com/koolwithk/ping_status/main/ping_status.sh |  bash
```

### install ping_status service(as non root)
```
yum install screen -y
chmod +x ping_status.sh

screen -A -m -d -S hlds ./ping_status.sh
```

### check ping_status logs
```
tail -f /tmp/ping_status.txt
```

### remove ping_status service
```
systemctl stop ping_status
rm -rf /etc/systemd/system/ping_status.service
systemctl daemon-reload
```
