# ==============================
# LaTeX Multi-Document Makefile
# ==============================

# Directories
SRC_DIR   := src
BUILD_DIR := build

# Tool
LATEXMK   := latexmk

# Find all .tex files inside src/
TEX_FILES := $(shell find $(SRC_DIR) -type f -name "*.tex")

# Convert src/path/file.tex -> build/path/file.pdf
PDF_FILES := $(patsubst $(SRC_DIR)/%.tex,$(BUILD_DIR)/%.pdf,$(TEX_FILES))

# Default target: build all documents
all: $(PDF_FILES)

# Pattern rule to compile each file independently
$(BUILD_DIR)/%.pdf: $(SRC_DIR)/%.tex
	@mkdir -p $(dir $@)
	$(LATEXMK) -pdf -interaction=nonstopmode -output-directory=$(dir $@) $<

# Clean auxiliary files only
clean:
	@find $(BUILD_DIR) -type f \( \
		-name "*.aux" -o \
		-name "*.log" -o \
		-name "*.out" -o \
		-name "*.toc" -o \
		-name "*.nav" -o \
		-name "*.snm" -o \
		-name "*.synctex.gz" -o \
		-name "*.fls" -o \
		-name "*.fdb_latexmk" \
	\) -delete

# Remove everything (including PDFs)
clean-all:
	rm -rf $(BUILD_DIR)

.PHONY: all clean clean-all