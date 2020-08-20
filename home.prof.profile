[fwBasic]
status = enabled
incoming = deny
outgoing = allow
routed = disabled

[Rule0]
ufw_rule = 1716/udp ALLOW IN Anywhere
description = kdeconnectd
command = /usr/sbin/ufw allow in proto udp from any to any port 1716
policy = allow
direction = in
protocol = udp
from_ip = 
from_port = 
to_ip = 
to_port = 1716
iface = 
routed = 
logging = 

[Rule1]
ufw_rule = 8080 ALLOW IN 192.168.1.0/24
description = kdeconnectd
command = /usr/sbin/ufw allow in from 192.168.1.0/24 to any port 8080
policy = allow
direction = in
protocol = 
from_ip = 192.168.1.0/24
from_port = 
to_ip = 
to_port = 8080
iface = 
routed = 
logging = 

[Rule2]
ufw_rule = 8080 ALLOW OUT 192.168.1.0/24 (out)
description = kdeconnectd
command = /usr/sbin/ufw allow out from 192.168.1.0/24 to any port 8080
policy = allow
direction = out
protocol = 
from_ip = 192.168.1.0/24
from_port = 
to_ip = 
to_port = 8080
iface = 
routed = 
logging = 

[Rule3]
ufw_rule = 1716/udp (v6) ALLOW IN Anywhere (v6)
description = kdeconnectd
command = /usr/sbin/ufw allow in proto udp from any to any port 1716
policy = allow
direction = in
protocol = udp
from_ip = 
from_port = 
to_ip = 
to_port = 1716
iface = 
routed = 
logging = 

