#!/bin/sh -e

export DEBIAN_FRONTEND=noninteractive

# Following https://github.com/Oros42/IMSI-catcher and https://osmocom.org/projects/gr-gsm/wiki/Installation
apt-get update && apt-get install -y python3-numpy python3-scipy python3-scapy gr-gsm curl git

tmpdir=$(mktemp -d)
cd $tmpdir
curl -o grgsm_livemon.grc http://git.osmocom.org/gr-gsm/plain/apps/grgsm_livemon.grc
grcc -d . grgsm_livemon.grc
mkdir -p /usr/local/bin/
mv grgsm_livemon.py /usr/bin/grgsm_livemon
chmod +x /usr/bin/grgsm_livemon
cd /
rm -rf $tmpdir

cd /opt
git clone https://github.com/Oros42/IMSI-catcher
cd IMSI-catcher
chmod +x simple_IMSI-catcher.py

