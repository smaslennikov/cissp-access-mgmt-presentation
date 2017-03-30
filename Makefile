all:
	bin/build.sh

open_all:
	OPEN_US=true bin/build.sh

test:
	bin/test.sh
