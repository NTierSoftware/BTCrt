#!/bin/bash
set -x #echo on

bitcoin-cli -conf=/BTCrt/rt1.conf loadwallet wal1
# bitcoin-cli -conf=/BTCrt/rt1.conf getwalletinfo
bitcoin-cli -conf=/BTCrt/rt2.conf loadwallet wal2
# bitcoin-cli -conf=/BTCrt/rt2.conf getwalletinfo
bitcoin-cli -conf=/BTCrt/rt3.conf loadwallet wal3
# bitcoin-cli -conf=/BTCrt/rt3.conf getwalletinfo

set +x
echo ; echo
read -rsp $'Press enter to continue...\n'

# z:\BTCLND\daemon\bitcoin-cli -datadir=Z:\BTCLND\LNDtest1 -conf=Z:\BTCLND\BTCLND1.conf
# z:\BTCLND\daemon\bitcoin-cli -datadir=Z:\BTCLND\LNDtest1 -conf=Z:\BTCLND\BTCLND1.conf getwalletinfo

# z:\BTCLND\daemon\bitcoin-cli -datadir=Z:\BTCLND\LNDtest2 -conf=Z:\BTCLND\BTCLND2.conf loadwallet wal2
# z:\BTCLND\daemon\bitcoin-cli -datadir=Z:\BTCLND\LNDtest2 -conf=Z:\BTCLND\BTCLND2.conf getwalletinfo

# z:\BTCLND\daemon\bitcoin-cli -datadir=Z:\BTCLND\LNDtest3 -conf=Z:\BTCLND\BTCLND3.conf loadwallet wal3
# z:\BTCLND\daemon\bitcoin-cli -datadir=Z:\BTCLND\LNDtest3 -conf=Z:\BTCLND\BTCLND3.conf getwalletinfo

