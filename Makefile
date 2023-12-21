PACKAGE := sphd-clock
VERSION := 1.2-4
FILENAME := $(PACKAGE)_$(VERSION)_all.deb

.DEFAULT_GOAL: build
.PHONY: default, build, clean, install

build:
	@dpkg-deb --build $(PACKAGE) $(FILENAME)

clean:
	@[ -f "$(FILENAME)" ] && \
		echo "Removing '$(FILENAME)'." && \
		rm $(FILENAME) || true

install: build
	@sudo dpkg --install $(FILENAME)
