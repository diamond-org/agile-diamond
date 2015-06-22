# Ian Dennis Miller
# project-management skeleton makefile

all: skel
	@echo done

skel: clean
	mrbob -c .mrbob.ini -O output ./skel

test: skel
	cd output && make docs pdf

clean:
	rm -rf output
	mkdir output

.PHONY: all clean skel
