# Ian Dennis Miller
# project-management skeleton makefile

all: skel
	@echo done

skel:
	mrbob -c .mrbob.ini -O output ./skel

test: skel
	cd output && make

clean:
	rm -rf output
	mkdir output

.PHONY: all clean skel test test-graffle
