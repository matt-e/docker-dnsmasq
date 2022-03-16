# docker-dnsmasq

A minimal dnsmasq container. Configuration is supplied by mounting a local directory into `/etc/dnsmasq.d`, which will get read at startup by dnsmasq. 

Run it using:
```
sudo /usr/bin/docker run --rm --name=dnsmasq --cap-add NET_ADMIN -v ${PWD}/dnsmasq.d:/etc/dnsmasq.d --net=host ghcr.io/matt-e/dnsmasq:latest --no-daemon
```