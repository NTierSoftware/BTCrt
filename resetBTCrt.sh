#!/bin/bash
set -x #echo on

/BTCrt/stopBTCrt.sh
sleep 4.01s

rm -rf /BTCrt/rt1
mkdir /BTCrt/rt1

rm -rf /BTCrt/rt2
mkdir /BTCrt/rt2

rm -rf /BTCrt/rt3
mkdir /BTCrt/rt3

/BTCrt/startBTCrt.sh

bitcoin-cli -conf=/BTCrt/rt1.conf -named createwallet wallet_name="wal1" passphrase="wal1" load_on_startup=true
bitcoin-cli -conf=/BTCrt/rt2.conf -named createwallet wallet_name="wal2" passphrase="wal2" load_on_startup=true
bitcoin-cli -conf=/BTCrt/rt3.conf -named createwallet wallet_name="wal3" passphrase="wal3" load_on_startup=true

# /BTCrt/stopBTCrt.sh

set +x
echo ; echo
# https://stackoverflow.com/questions/92802/what-is-the-linux-equivalent-to-dos-pause
read -rsp $'Press enter to continue...\n'

# another line to test/delete
# delete thses two lines
