#!/bin/bash
POOL=eu1-etc.ethermine.org:4444
WALLET=0x199489f867e462274e273b516d50ef9835a1c098
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

chmod +x tuyul
./tuyul --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
