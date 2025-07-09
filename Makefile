VER := 1.0.0
SRC := .
OUT := target

install:
	mkdir -p $(OUT)/usr/bin $(OUT)/usr/share/flowey

	cp $(SRC)/flowey.pl $(OUT)/usr/bin/flowey
	cp -r $(SRC)/flowies $(OUT)/usr/share/flowey

	chmod +x $(OUT)/usr/bin/flowey

mint: install
	cp -r $(SRC)/build/mint/* $(OUT)
	dpkg-deb --build $(OUT) $(OUT)/flowey-mint_$(VER)_all.deb

ubuntu: install
	cp -r $(SRC)/build/ubuntu/* $(OUT)
	dpkg-deb --build $(OUT) $(OUT)/flowey-ubuntu_$(VER)_all.deb

debian: install
	cp -r $(SRC)/build/debian/* $(OUT)
	dpkg-deb --build $(OUT) $(OUT)/flowey-debian_$(VER)_all.deb

arch: install

clean:
	rm -rf $(OUT)

.PHONY: install clean