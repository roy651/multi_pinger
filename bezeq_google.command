echo -n -e "\033]0;BEZEQ GOOG\007"
ping -S 192.168.1.132 8.8.8.8 | while read pong; do echo "$(date): $pong"; done | awk '{ print $4"  "$13 }'