#!/bin/bash
set -x #echo on

bitcoin-cli -conf=/BTCrt/rt1.conf stop
bitcoin-cli -conf=/BTCrt/rt2.conf stop
bitcoin-cli -conf=/BTCrt/rt3.conf stop

