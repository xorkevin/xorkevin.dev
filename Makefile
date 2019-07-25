HUGO=hugo

.PHONY: all build dev deploycopy

all: build

build:
	$(HUGO) --cleanDestinationDir

dev:
	$(HUGO) server --disableFastRender -D -w

deploycopy: build
	cp -r public/* ../xorkevindev.github.io
