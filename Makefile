SHELL := /bin/bash # Use bash syntax

.PHONY=*

CURRENT_DATE=`date +'%Y.%m.%d'`

build-deps-image:
	cd etc/docker/rust-deps/ && time -p docker build . -t www_nulldevelopment_hr/deps:$(CURRENT_DATE)
	cd etc/docker/rust-deps/ && time -p docker build . -t www_nulldevelopment_hr/deps:latest

build-dev-deps-image:
	cd etc/docker/rust-dev-deps/ && time -p docker build . -t www_nulldevelopment_hr/dev-deps:$(CURRENT_DATE)
	cd etc/docker/rust-dev-deps/ && time -p docker build . -t www_nulldevelopment_hr/dev-deps:latest

build-release-deps-image:
	cd etc/docker/rust-release-deps/ && time -p docker build . -t www_nulldevelopment_hr/release-deps:$(CURRENT_DATE)
	cd etc/docker/rust-release-deps/ && time -p docker build . -t www_nulldevelopment_hr/release-deps:latest
