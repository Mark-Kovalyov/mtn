install-all: update-all install-utils install-encoders install-gis install-network install-graph install-math install-exods install-image install-mtn-audio

update-all: 
	git submodule update --recursive --remote

install-utils:
	cd mtn-utils && git checkout master &&  git pull &&  make install

install-encoders: 
	cd mtn-encoders && git checkout master && git pull &&  make install

install-gis: install-utils install-encoders install-network
	cd mtn-gis && git checkout main && git pull && make install

install-network: install-encoders
	cd mtn-network && git checkout master && git pull && make install

install-graph: install-encoders
	cd mtn-graph && git checkout master && git pull && make install

install-math:
	cd mtn-math && git checkout master && git pull && make install

install-exods:
	cd mtn-exods && git checkout main && git pull && make install

install-image:
	cd mtn-image && git checkout master && git pull && make install

install-audio:
	cd mtn-audio && git checkout main && git pull && make install
