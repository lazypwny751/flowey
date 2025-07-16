VERSION := 1.0.0
PREFIX  := target
SOURCE  := .

install:
	mkdir -p $(PREFIX)/usr/bin $(PREFIX)/usr/share/flowey

	cp $(SOURCE)/flowey.pl $(PREFIX)/usr/bin/flowey
	cp -r $(SOURCE)/flowies $(PREFIX)/usr/share/flowey

	chmod +x $(PREFIX)/usr/bin/flowey

mint: install
	cp -r $(SOURCE)/build/mint/* $(PREFIX)
	dpkg-deb --build $(PREFIX) $(PREFIX)/flowey-mint_$(VERSION)_all.deb

ubuntu: install
	cp -r $(SOURCE)/build/ubuntu/* $(PREFIX)
	dpkg-deb --build $(PREFIX) $(PREFIX)/flowey-ubuntu_$(VERSION)_all.deb

debian: install
	cp -r $(SOURCE)/build/debian/* $(PREFIX)
	dpkg-deb --build $(PREFIX) $(PREFIX)/flowey-debian_$(VERSION)_all.deb

arch: install

.PHONY: install mint ubuntu debian arch