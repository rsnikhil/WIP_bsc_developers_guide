.PHONY: help
help:
	@echo "Targets:"
	@echo "    p    LaTeX the document"
	@echo ""
	@echo "    clean, full_clean"

DOCNAME = bsc_developer_guide
SOURCES = Makefile $(DOCNAME).tex

# ================================================================

.PHONY: p
p: $(SOURCES)
	mkdir -p tmp_latex
	pdflatex -output-directory=tmp_latex  $(DOCNAME).tex
	cp  tmp_latex/$(DOCNAME).pdf  .

# ================================================================

.PHONY: clean
clean:
	rm -r -f  *~  */*~  tmp_latex

.PHONY: full_clean
full_clean:
	make clean
	rm  $(DOCNAME).pdf
