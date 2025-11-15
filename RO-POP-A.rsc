# may/11/2024 07:33:13 by RouterOS 6.48.1
# software id = NQ1S-XPTC
#
#
#
/interface ethernet
set [ find default-name=ether1 ] comment=ESW3-fa1/0
set [ find default-name=ether2 ] comment=ESW3-fa1/4
/interface bonding
add name=BONDING-RO-DIST slaves=ether1,ether2
/ip address
add address=10.10.10.2/30 interface=BONDING-RO-DIST network=10.10.10.0
/system identity
set name=RO-POP-A