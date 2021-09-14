# Multi Pinger
## Currently suitable only for Macs
- Obtain the ip addresses of the 2 network cards that you have
- In my case those 2 cards were connected to hot and bezeq, hence I named the variables holding the cards ips `hot` and d `bezeq`
- The ip addresses can be fetched by running `ifconfig | grep 192`
- run `./runpings.sh` with two parameter `-b` and `-h` each marking the cards ip addresses
  - E.g. `./runPings.sh -b 192.168.1.120 -h 192.168.2.48`

