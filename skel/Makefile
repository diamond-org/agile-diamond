# Ian Dennis Miller
# project-management skeleton makefile

all: clean agile
	@echo done

agile:
	mkdir -p \
		output/agile \
		output/compliance \
		output/itops \
		output/spec \
		output/usage

	pandoc -f markdown -t html "Project Guide.md.bob" -o "output/Project Guide.html"
	pandoc -f markdown -t html "agile/Charter.md.bob" -o "output/agile/Charter.html"
	pandoc -f markdown -t html "agile/Agile Management Plan.md.bob" -o "output/agile/Agile Management Plan.html"
	pandoc -f markdown -t html "agile/Story Planning.md.bob" -o "output/agile/Story Planning.html"

	pandoc -f markdown -t html "compliance/Hazards.md.bob" -o "output/compliance/Hazards.html"
	pandoc -f markdown -t html "compliance/Mitigations.md.bob" -o "output/compliance/Mitigations.html"
	pandoc -f markdown -t html "compliance/Security.md.bob" -o "output/compliance/Security.html"

	pandoc -f markdown -t html "itops/Installation.md.bob" -o "output/itops/Installation.html"
	pandoc -f markdown -t html "itops/Upgrading.md.bob" -o "output/itops/Upgrading.html"

	pandoc -f markdown -t html "spec/Data Model Specification.md.bob" -o "output/spec/Data Model Specification.html"
	pandoc -f markdown -t html "spec/Functional Specification.md.bob" -o "output/spec/Functional Specification.html"
	pandoc -f markdown -t html "spec/Technical Specification.md.bob" -o "output/spec/Technical Specification.html"

	pandoc -f markdown -t html "usage/Admin Guide.md.bob" -o "output/usage/Admin Guide.html"
	pandoc -f markdown -t html "usage/User Guide.md.bob" -o "output/usage/User Guide.html"

	cp -r assets output
	cp -r design output
	mv output/assets/index.html output

clean:
	rm -rf output
	mkdir output

.PHONY: all clean agile
