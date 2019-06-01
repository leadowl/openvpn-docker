FROM alpine:latest

VOLUME [ "/etc/openvpn/conf" ]

RUN apk add --no-cache --update openvpn

CMD openvpn --config /etc/openvpn/conf/vpn.conf ||\
    cat /var/log/openvpn.log
