build:
	docker build . -t tk4

run-it:	
	docker run -it tk4

run-tk4:
	docker run -d -p 3270:3270 -p 8038:8038 \
	--mount source=tk4-conf,target=/tk4-/conf \
	--mount source=tk4-local_conf,target=/tk4-/local_conf \
	--mount source=tk4-local_scripts,target=/tk4-/local_scripts \
	--mount source=tk4-prt,target=/tk4-/prt \
	--mount source=tk4-dasd,target=/tk4-/dasd \
	--mount source=tk4-pch,target=/tk4-/pch \
	--mount source=tk4-jcl,target=/tk4-/jcl \
	--mount source=tk4-log,target=/tk4-/log \
	tk4

run-x3270:
	x3270 localhost:3270

run-c3270:
	c3270 localhost:3270

tag:
	docker tag tk4 hldtux/tk4:latest

push:	tag
	docker push hldtux/tk4:latest
