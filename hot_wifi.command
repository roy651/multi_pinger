echo -n -e "\033]0;HOT WIFI\007"
ping -S "$1" 192.168.1.1 | while read pong; do echo "$(date): $pong"; done | awk '{ print $4     $13 }'