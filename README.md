Installation script for IMSI-catcher.
Works with HackRF on Ubuntu 19.10.
Works inside a docker container as well.
Several system freezes and/or kernel panics were encountered, but so far only with the docker setup.

To run:

* grgsm_scanner

Terminal 1:
* grgsm_livemon -f <freq>

Terminal 2:
* ./simple_IMSI-catcher.py --sniff

