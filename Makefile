MD_FILES=$(shell find . -name \*.md)
HTML_FILES=$(MD_FILES:.md=.html)
BUILD_HTML_FILES=$(HTML_FILES:%=build/%)

all: $(BUILD_HTML_FILES)

build/assets/%: assets/%
	@mkdir -p $$(dirname $@)
	cp $? $@

build/%.html: %.md template.html
	@mkdir -p $$(dirname $@)
	pandoc -o $@ --template=template.html --css=https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css $<
