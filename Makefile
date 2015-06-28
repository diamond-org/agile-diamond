# Ian Dennis Miller
# project-management skeleton makefile

all: skel
	@echo done

skel:
	mrbob -c .mrbob.ini -O output ./skel

test: skel
	cd output && make

test-html: skel
	cd output && make html

test-graffles: skel
	cd output && make graffles

test-outlines: skel
	cd output && make outlines

test-zip: skel
	cd output && make zip

test-docx: skel
	cd output && make docx

test-pdf: skel
	cd output && make pdf

test-presentations: skel
	cd output && make presentations

clean:
	rm -rf output
	mkdir output

.PHONY: all clean skel test test-graffle
