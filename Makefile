.PHONY: all clean binary image run

all: clean binary image

clean:
	@echo
	@echo
	@echo ================================================
	@echo  Clenup...
	@echo ================================================
	@echo
	rm -f zdocktest
	rm -f zdocktest.linux

binary:
	@echo
	@echo
	@echo ================================================
	@echo  Building binary...
	@echo ================================================
	@echo
	go build -v
	env GOOS=linux GOARCH=amd64 go build -v -o zdocktest.linux

image:
	@echo
	@echo
	@echo ================================================
	@echo  Building docker image...
	@echo ================================================
	@echo
	docker build -t art-test .
	@echo
	@echo
	@echo ================================================
	@echo  All Done!
	@echo ================================================

run:
	docker run art-test
