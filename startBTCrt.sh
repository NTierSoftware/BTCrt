#!/bin/bash
set -x #echo on
set -b
(bitcoin-qt -datadir=/BTCrt/rt1 -conf=/BTCrt/rt1.conf) &
sleep 1.99s
(bitcoin-qt -datadir=/BTCrt/rt2 -conf=/BTCrt/rt2.conf) &
sleep 1.99s
(bitcoin-qt -datadir=/BTCrt/rt3 -conf=/BTCrt/rt3.conf) &
sleep 3.99s


# #echo -e -n "\n\ngetinfo:  \a" ;  /usr/local/bin/bitcoin-cli -conf=/BTCUbuntu/BLOCKCHAIN/bitcoin.conf -getinfo

# nc -z -w10 localhost 8332
# status=$?
# if [ $status -eq 0 ]; then
#     echo -e -n "\n\ngetinfo:  \a" ;  /usr/local/bin/bitcoin-cli -conf=/BTCUbuntu/BLOCKCHAIN/bitcoin.conf -getinfo
# else
#     echo "Bitcoin core not answering."
# #    exit 1
# fi


