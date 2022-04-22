#! /bin/bash
fping -aARg $1 | xargs -n1 ike-scan -s0 | awk '/Notify/{print $1}' | tee -a check.txt
# ike-scan -s0 --file ~/check.txt | awk '/Notify/{print $1}' | tee ~/ike.txt
# fping -aARf ~/ike.txt | tee -a ~/all.txt
