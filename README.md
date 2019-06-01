https://wiki.alpinelinux.org/wiki/Setting_up_a_OpenVPN_server

export CONFIG_FOLDER= config

docker run -d --rm --cap-add=NET_ADMIN --device /dev/net/tun:/dev/net/tun --net=host -v $CONFIG_FOLDER:/etc/openvpn/conf leadowl/openvpn
