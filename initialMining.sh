#!/bin/bash
set -x #echo on


# https://bitcoin.stackexchange.com/questions/80935/generate-generatetoaddress-what-are-this-two-rpc-methods-used-for/107881#107881
# https://bitcoin.stackexchange.com/questions/91222/bech32-addresses-beginning-with-bcrt-on-regtest
# https://en.bitcoin.it/wiki/List_of_address_prefixes

# address_type    (string, optional, default=set by -addresstype) The address type to use. Options are "legacy", "p2sh-segwit", and "bech32"
rt1_rcv1=$(bitcoin-cli -conf=/BTCrt/rt1.conf getnewaddress "rt1_rcv1" bech32)
# bitcoin-cli -conf=/BTCrt/rt1.conf generatetoaddress 100 $rt1_rcv1

rt2_rcv1=$(bitcoin-cli -conf=/BTCrt/rt2.conf getnewaddress "rt2_rcv1" bech32)
bitcoin-cli -conf=/BTCrt/rt2.conf generatetoaddress 200 $rt2_rcv1

# Cannot specify both conf_target and fee_rate. Please provide either a confirmation target in blocks for automatic fee estimation, or an explicit fee rate.
# bitcoin-cli -conf=/BTCrt/rt2.conf -named sendtoaddress address=$rt1_rcv1 amount=2 comment="from rt2" comment_to="rt1" subtractfeefromamount=true replaceable=false estimate_mode="unset" avoid_reuse=false fee_rate=1 verbose=true

bitcoin-cli -conf=/BTCrt/rt2.conf walletpassphrase "wal2" 60
bitcoin-cli -conf=/BTCrt/rt2.conf -named sendtoaddress address=$rt1_rcv1 amount=2 \
 comment="from rt2" comment_to="rt1" \
 subtractfeefromamount=true replaceable=false conf_target=2 estimate_mode="unset" avoid_reuse=false verbose=true



set +x
echo ; echo
read -rsp $'Press enter to continue...\n'
