# Multi Pinger
## Currently suitable only for Macs
- Obtain the ip addresses of the 2 network cards that you have
- In my case those 2 cards were connected to hot and bezeq, hence I named the variables holding the cards ips `hot` and d `bezeq`
- The ip addresses can be fetched by running `ifconfig | grep 192`
- run `./runpings.sh` with two parameter `-b` and `-h` each marking the cards ip addresses
  - E.g. `./runPings.sh -b 192.168.1.120 -h 192.168.2.48`
- The pinger command files may need additional customization:
  - Each file holds the ip address which it is aimed at pinging
  - The 2 files that are pinging google are OK
  - The 2 files which are pinging the local router (actually only one - the `hot_wifi.command` may require changing the local ip address (but usually it won't)
  - Most notable: The 2 files that are pinging IL routers are each pointing to key routers in the entrance to the internet provider
  - It may make sense to run `traceroute 8.8.8.8` and see which is the first router that you're getting outside your network and try to replace the value in those files

