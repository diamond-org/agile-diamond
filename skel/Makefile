# Ian Dennis Miller
# project-management skeleton makefile

all: clean agile
	@echo done

agile:
	pandoc "agile/Project Guide.md.bob" "output/Project Guide.html"

clean:
	rm -rf output
	mkdir output

.PHONY: all clean
