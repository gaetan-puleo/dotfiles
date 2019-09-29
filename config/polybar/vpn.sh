#!/bin/sh

if [ "$(pgrep openvpn)" ]; then
    echo "%{T6}聯%{T-}  VPN enabled"
else
    echo "%{T6}輦%{T-}  VPN disabled"
fi
