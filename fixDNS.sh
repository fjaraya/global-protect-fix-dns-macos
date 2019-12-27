#!/bin/bash
 
sudo scutil << EOF
get State:/Network/Service/gpd.pan/DNS
d.remove SearchDomains
d.remove ServerAddress
d.add ServerAddresses * 8.8.8.8
set State:/Network/Service/gpd.pan/DNS
exit
EOF
