echo -n -e "\033]0;HOT GOOG\007"
ping -S 192.168.2.48 8.8.8.8 | while read pong; do echo "$(date): $pong"; done | awk '{ print $4"  "$13 }'