echo -n -e "\033]0;BEZEQ IL\007"
ping -S 192.168.1.132 bzq-179-37-1.cust.bezeqint.net | while read pong; do echo "$(date): $pong"; done | awk '{ print $4"  "$13 }'