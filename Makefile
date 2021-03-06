all: build/main.pdf build/notizen.pdf

texoptions = \
	     --lualatex \
	     --interaction=batchmode \
	     --halt-on-error \
	     --output-directory=build

build/main.pdf: FORCE | build
	TEXINPUTS=build: \
	BIBINPUTS=build: \
	latexmk $(texoptions) main.tex

build/notizen.pdf: FORCE | build
	TEXINPUTS=build: \
	BIBINPUTS=build: \
	latexmk $(texoptions) notizen.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean
