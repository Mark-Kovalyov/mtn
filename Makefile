install-all: install-utils install-encoders install-gis install-network install-graph install-math install-exods install-image
	
install-utils:
	cd mtn-utils && make install

install-encoders: 
	cd mtn-encoders && make install

install-gis: install-utils install-encoders install-network
	cd mtn-gis && make install

install-network: install-encoders 
	cd mtn-network && make install

install-graph: install-encoders
	cd mtn-graph && make install

install-math:
	cd mtn-math && cd java && cd mtn-math && make install

install-exods:
	cd mtn-exods && make install

install-image:
	cd mtn-image && make install
