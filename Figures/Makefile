.PHONY: help
help:
	@echo "Targets:"
	@echo "  all    Produces image (.jpg, .png) files"
	@echo ""
	@echo "  clean, full_clean"

# ================================================================

DIAGRAMS_2025 = $(HOME)/Diagrams/2025
DIAGRAMS_2026 = $(HOME)/Diagrams/2026

FIGS += RSN_2026-06.001.00_bsc_stages.png
FIGS += RSN_2026-06.002.00_bsc_genModule.png

# ----------------

all: $(FIGS)

# ================================================================

%.png: $(DIAGRAMS_2025)/%.svg
	inkscape --export-filename=$@  --export-area-drawing  -d 300 -y 0.0 $<

%.png: $(DIAGRAMS_2026)/%.svg
	inkscape --export-filename=$@  --export-area-drawing  -d 300 -y 0.0 $<

# ----------------

LAYER_1 = 'select-all:layers; object-set-attribute:style, display:none; select-clear; select-by-id:layer1; object-set-attribute:style, display:inline'

%_L1.png: $(DIAGRAMS_2025)/%.svg
	inkscape --actions=$(LAYER_1) \
		--export-filename=$@ --export-area-drawing  -d 300 -y 0.0 $<

%_L1.png: $(DIAGRAMS_2026)/%.svg
	inkscape --actions=$(LAYER_1) \
		--export-filename=$@ --export-area-drawing  -d 300 -y 0.0 $<

# ----------------

LAYERS_1_2 = 'select-all:layers; object-set-attribute:style, display:none; select-clear; select-by-id:layer1,layer2; object-set-attribute:style, display:inline'

%_L1_L2.png: $(DIAGRAMS_2025)/%.svg
	inkscape --actions=$(LAYERS_1_2) \
		--export-filename=$@ --export-area-drawing  -d 300 -y 0.0 $<

%_L1_L2.png: $(DIAGRAMS_2026)/%.svg
	inkscape --actions=$(LAYERS_1_2) \
		--export-filename=$@ --export-area-drawing  -d 300 -y 0.0 $<

# ----------------

LAYERS_1_2_3 = 'select-all:layers; object-set-attribute:style, display:none; select-clear; select-by-id:layer1,layer2,layer3; object-set-attribute:style, display:inline'

%_L1_L2_L3.png: $(DIAGRAMS_2025)/%.svg
	inkscape --actions=$(LAYERS_1_2_3) \
		--export-filename=$@ --export-area-drawing  -d 300 -y 0.0 $<

%_L1_L2_L3.png: $(DIAGRAMS_2026)/%.svg
	inkscape --actions=$(LAYERS_1_2_3) \
		--export-filename=$@ --export-area-drawing  -d 300 -y 0.0 $<

# ================================================================

.PHONY: png
png: $(FIGS)

.PHONY: clean
clean:
	rm -r -f  *~

.PHONY: full_clean
full_clean: clean
	rm -r -f  $(FIGS)
