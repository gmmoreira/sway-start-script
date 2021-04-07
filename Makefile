PACKAGE_NAME = sway-start-script
RELEASE_DIR = ()

deb-build:
	dpkg-deb --build --root-owner-group $(RELEASE_DIR)

.PHONY: clean

clean:
	rm -rf
