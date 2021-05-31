#!/bin/bash
# hot = '192.168.2.48'
# bezeq = '192.168.1.132'
hot='' #"192.168.2.48"
bezeq='' #"192.168.1.132"
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -h|--hot) hot="$2"; shift ;;
        -b|--bezeq) bezeq="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

if [ "$bezeq" = "" ] && [ "$hot" = "" ]; then
    hot="192.168.2.48"
    bezeq="192.168.1.132"
fi

if [ "$bezeq" != "" ]; then
    osascript<<EOF
tell application "Terminal"
    do script "~/Development/private/pings/bezeq_google.command $bezeq"
end tell
EOF
    # open bezeq_google.command --args "$bezeq"
    osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {440, 750, 660, 950}'

    osascript<<EOF
tell application "Terminal"
    do script "~/Development/private/pings/bezeq_il.command $bezeq"
end tell
EOF
    # open bezeq_il.command --args "$bezeq"
    osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {660, 750, 880, 950}'
fi

if [ "$hot" != "" ]; then
    osascript<<EOF
tell application "Terminal"
    do script "~/Development/private/pings/hot_google.command $hot"
end tell
EOF
    # open hot_google.command --args "$hot"
    osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {880, 750, 1100, 950}'

    osascript<<EOF
tell application "Terminal"
    do script "~/Development/private/pings/hot_il.command $hot"
end tell
EOF
    # open hot_il.command --args "test"
    osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {1100, 750, 1320, 950}'

    osascript<<EOF
tell application "Terminal"
    do script "~/Development/private/pings/hot_wifi.command $hot"
end tell
EOF
    # open hot_wifi.command --args "$hot"
    osascript -e 'tell application "Terminal" to tell window 1 to set bounds to {1320, 750, 1540, 950}'
fi