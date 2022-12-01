echo -n -e "\033]0;HOT IL\007"
ping -S "$1" 77.137.19.72 | while read pong; do echo "$(date): $pong"; done | awk '{ print $4     $13 }'