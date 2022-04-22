# bash nordconf.sh sg456.nordvpn.com
tee <<-EOFS ~/tmp.sh
PrivateKey="Yourkey"
nord_id=\$(curl -s "https://api.nordvpn.com/v1/servers?limit=6000&fields\[servers.hostname\]&fields\[servers.id\]" | jq   '.[] | select(.hostname == "$1").id')
echo "nord_id : \$nord_id"
station=\$(curl -s "https://api.nordvpn.com/v1/servers?filters\[servers.id\]=\$nord_id&fields\[servers.station\]" | jq -r '.[].station')
echo "station : \$station"
PublicKey=\$(curl -s "https://api.nordvpn.com/v1/servers?filters\[servers.id\]=\$nord_id&fields\[servers.technologies\]" | jq -r '.[].technologies|map(select (.id == 35).metadata[].value)|.[]')
echo "PublicKey : \$PublicKey"
name=\$(echo $1 | awk -F '.' '{print \$1}')
tee <<EOF /root/\$name.conf
[Interface]
Address = 10.5.0.2/16
DNS = 103.86.99.98, 103.86.96.98
PrivateKey = \$PrivateKey

[Peer]
AllowedIPs = 0.0.0.0/0
Endpoint = \$station:51820
PersistentKeepalive = 30
PublicKey = \$PublicKey
EOF
EOFS
bash ~/tmp.sh

