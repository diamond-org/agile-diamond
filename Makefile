# Ian Dennis Miller
# project-management skeleton makefile

all: skel
	@echo done

skel: clean
	mrbob -c .mrbob.ini -O output ./skel

test: skel
	cd output && make docs pdf

test-graffle: skel
	cd output && make assets

clean:
	rm -rf output
	mkdir output

.PHONY: all clean skel test test-graffle
