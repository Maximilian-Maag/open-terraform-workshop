# Makefile to compile all .tex files from src/ into build/ with full subdirectory support

SRC_DIR := src
BUILD_DIR := build

# Find all .tex files recursively
TEX_FILES := $(shell find $(SRC_DIR) -name '*.tex')

# Map .tex files to PDFs in build/ while preserving directory structure
PDF_FILES := $(patsubst $(SRC_DIR)/%.tex,$(BUILD_DIR)/%.pdf,$(TEX_FILES))

# Default target
all: $(PDF_FILES)

# Recursive compilation rule for any subdirectory depth
$(BUILD_DIR)/%.pdf: $(SRC_DIR)/%.tex
	@mkdir -p $(dir $@)
	@echo "Compiling $< -> $@"
	-pdflatex -interaction=nonstopmode -halt-on-error -output-directory=$(dir $@) $<

# Clean helper rules
# remove everything under build except PDFs (keeps directory structure intact)
# also remove all non-tex files from src directory
clean:
	@echo "Removing non-pdf files from $(BUILD_DIR) ..."
	@find $(BUILD_DIR) -type f ! -name '*.pdf' -delete
	@echo "Removing non-tex files from $(SRC_DIR) ..."
	@find $(SRC_DIR) -type f ! -name '*.tex' -delete

# remove the entire build directory
clean-all:
	@echo "Removing build directory..."
	@rm -rf $(BUILD_DIR)

.PHONY: all clean clean-all