# may/11/2024 07:33:46 by RouterOS 6.48.1
# software id = NQ1S-XPTC
#
#
#
/interface ethernet
set [ find default-name=ether1 ] comment=ESW1-fa1/0 name=ether1
set [ find default-name=ether2 ] comment=ESW2-fa1/0 name=ether2
/interface vlan
add interface=ether1 name="[100] - POP-A via ESW-1" vlan-id=100
add interface=ether2 name="[200] - POP-A via ESW-2" vlan-id=200
/interface bonding
add name=BONDING-POP-A slaves=\
    "[100] - POP-A via ESW-1,[200] - POP-A via ESW-2"
/ip address
add address=10.10.10.1/30 interface=BONDING-POP-A network=10.10.10.0
/system identity
set name=RO-DIST