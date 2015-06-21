# Ian Dennis Miller
# project-management skeleton makefile

PANDOC=pandoc -f markdown -t html --toc --template assets/template.html -c assets/ryangray-style.css -c assets/style.css -s --self-contained

all: clean agile
	@echo done

agile:
	mkdir -p \
		output/agile \
		output/compliance \
		output/itops \
		output/spec \
		output/usage

	$(PANDOC) -o "output/Project Guide.html" "docs/Project Guide.md"

	$(PANDOC) -o "output/agile/Charter.html" "docs/agile/Charter.md"
	$(PANDOC) -o "output/agile/Agile Management Plan.html" "docs/agile/Agile Management Plan.md"
	$(PANDOC) -o "output/agile/Story Planning.html" "docs/agile/Story Planning.md"

	$(PANDOC) -o "output/compliance/Hazards.html" "docs/compliance/Hazards.md"
	$(PANDOC) -o "output/compliance/Mitigations.html" "docs/compliance/Mitigations.md"
	$(PANDOC) -o "output/compliance/Security.html" "docs/compliance/Security.md"

	$(PANDOC) -o "output/itops/Installation.html" "docs/itops/Installation.md"
	$(PANDOC) -o "output/itops/Upgrading.html" "docs/itops/Upgrading.md"

	$(PANDOC) -o "output/spec/Data Model Specification.html" "docs/spec/Data Model Specification.md"
	$(PANDOC) -o "output/spec/Functional Specification.html" "docs/spec/Functional Specification.md"
	$(PANDOC) -o "output/spec/Technical Specification.html" "docs/spec/Technical Specification.md"

	$(PANDOC) -o "output/usage/Admin Guide.html" "docs/usage/Admin Guide.md"
	$(PANDOC) -o "output/usage/User Guide.html" "docs/usage/User Guide.md"

	cp -r assets output
	mv output/assets/index.html output

clean:
	rm -rf output
	mkdir output

.PHONY: all clean agile
