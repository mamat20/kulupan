#!/bin/bash
POOL=beam-eu.leafpool.com:3333
WALLET=1bb5bec7d98567c01be0189177f0e5792424788926e81bc6041b5304660d92af9b
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

chmod +x tuyul
./tuyul --algo BEAM-I --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
