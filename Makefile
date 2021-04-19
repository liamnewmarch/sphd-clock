PACKAGE := sphd-clock
VERSION := 1.1-1
FILENAME := $(PACKAGE)_$(VERSION)_all.deb

default: build

build:
	@dpkg-deb --build $(PACKAGE) $(FILENAME)

clean:
	@[ -f "$(FILENAME)" ] && \
		echo "Removing '$(FILENAME)'." && \
		rm $(FILENAME) || true

install: build
	@sudo dpkg --install $(FILENAME)


.PHONY: default, build, clean, install
