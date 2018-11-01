all: build/main.pdf

texoptions = \
	     --lualatex \
	     --interaction=batchmode \
	     --halt-on-error \
	     --output-directory=build

build/main.pdf: FORCE | build
	TEXINPUTS=build: \
	BIBINPUTS=build: \
	latexmk $(texoptions) main.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean
