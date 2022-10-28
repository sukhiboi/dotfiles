WIFI_NAME=$(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | awk '/ SSID:/ {print $2}')
IP_ADDRESS=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' )

sketchybar --set $NAME label=" $WIFI_NAME $IP_ADDRESS"

