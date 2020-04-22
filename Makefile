cn := imsicatcher-docker 

build:
	docker build --build-arg UBUNTU_VERSION=19.10 -t $(cn) .

run:
	docker run --rm -ti --net=host --env=DISPLAY --privileged -v $$XAUTHORITY:/root/.Xauthority -v $$PWD:/data -v /dev:/dev $(cn) /bin/bash
