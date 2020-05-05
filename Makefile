# Definitions for building html output
MD_FILES=$(shell find ./notes -name \*.md)
HTML_FILES=$(MD_FILES:.md=.html)
BUILD_HTML_FILES=$(HTML_FILES:%=build/html/%)

# Definitions for building pdf output
PDF_FILES=$(MD_FILES:.md=.pdf)
BUILD_PDF_FILES=$(PDF_FILES:%=build/pdf/%)
EXTRA_PDFS=

html: $(BUILD_HTML_FILES)

pdf: build/pdf/notes.pdf

build/assets/%: assets/%
	@mkdir -p $$(dirname $@)
	cp $? $@

build/html/%.html: %.md template.html
	@mkdir -p $$(dirname $@)
	pandoc -o $@ --template=template.html --css=https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css $<

build/pdf/notes.pdf: $(BUILD_PDF_FILES)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
		-dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages \
		-dCompressFonts=true -r150 -sOutputFile=$@ $^ $(EXTRA_PDFS)

build/pdf/%.pdf: %.md
	@mkdir -p $$(dirname $@)
	pandoc -V geometry:margin=1in -o $@ $?

clean:
	rm -rv build
