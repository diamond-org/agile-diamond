# Ian Dennis Miller
# project-management skeleton makefile

PANDOC=pandoc -f markdown -t html
STYLE=-c assets/style.css -s --self-contained -o

all: clean agile
	@echo done

agile:
	mkdir -p \
		output/agile \
		output/compliance \
		output/itops \
		output/spec \
		output/usage

	$(PANDOC) "docs/Project Guide.md.bob" $(STYLE) "output/Project Guide.html"

	$(PANDOC) "docs/agile/Charter.md.bob" $(STYLE) "output/agile/Charter.html"
	$(PANDOC) "docs/agile/Agile Management Plan.md.bob" $(STYLE) "output/agile/Agile Management Plan.html"
	$(PANDOC) "docs/agile/Story Planning.md.bob" $(STYLE) "output/agile/Story Planning.html"

	$(PANDOC) "docs/compliance/Hazards.md.bob" $(STYLE) "output/compliance/Hazards.html"
	$(PANDOC) "docs/compliance/Mitigations.md.bob" $(STYLE) "output/compliance/Mitigations.html"
	$(PANDOC) "docs/compliance/Security.md.bob" $(STYLE) "output/compliance/Security.html"

	$(PANDOC) "docs/itops/Installation.md.bob" $(STYLE) "output/itops/Installation.html"
	$(PANDOC) "docs/itops/Upgrading.md.bob" $(STYLE) "output/itops/Upgrading.html"

	$(PANDOC) "docs/spec/Data Model Specification.md.bob" $(STYLE) "output/spec/Data Model Specification.html"
	$(PANDOC) "docs/spec/Functional Specification.md.bob" $(STYLE) "output/spec/Functional Specification.html"
	$(PANDOC) "docs/spec/Technical Specification.md.bob" $(STYLE) "output/spec/Technical Specification.html"

	$(PANDOC) "docs/usage/Admin Guide.md.bob" $(STYLE) "output/usage/Admin Guide.html"
	$(PANDOC) "docs/usage/User Guide.md.bob" $(STYLE) "output/usage/User Guide.html"

	cp -r assets output
	mv output/assets/index.html output

clean:
	rm -rf output
	mkdir output

.PHONY: all clean agile
