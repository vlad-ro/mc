#
# TODO: Make it rebuild when common.m4 changes
#

M4 = m4
DEST_DIR = ../../misc/syntax

SYNTAX = \
	syntax.syntax

INSTALL_FILES = $(SYNTAX)

all: $(INSTALL_FILES)

%.syntax: %.syntax.m4
	$(M4) $< > $@

install: all
	mkdir -p $(DEST_DIR)
	cp $(INSTALL_FILES) $(DEST_DIR)

clean:
	rm -f $(INSTALL_FILES)
