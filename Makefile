all: build/main.pdf

texoptions = \
	     --lualatex \
	     --interaction=batchpmode \
	     --halt-on-error \
	     --output-directory=build

build/main.pdf: FORCE | build
	latexmk $(texoptions) main.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
