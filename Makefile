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

docs:
	rm -rf var/sphinx/build
	sphinx-build -b html docs var/sphinx/build

open:
	open var/sphinx/build/index.html

release:
	python setup.py sdist upload -r https://pypi.python.org/pypi

.PHONY: all clean skel test docs open release
