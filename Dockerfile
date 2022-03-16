FROM alpine:edge

# fetch dnsmasq
RUN apk update \
	&& apk --no-cache add dnsmasq

VOLUME ["/etc/dnsmasq.d"]
#configure dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
#run!
ENTRYPOINT ["dnsmasq"]
