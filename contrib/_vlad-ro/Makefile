
M4 = /usr/bin/m4
SYNTAX_DIR = ../../misc/syntax

all:
	mkdir -p bright; \
	for i in *.syntax.m4; do \
		$(M4) -D COLOR_SCHEME=default $$i > $(SYNTAX_DIR)/$${i%.m4}; \
		$(M4) -D COLOR_SCHEME=bright  $$i > bright/$${i%.m4}; \
	done

install: all
	./install-syntax.sh

diff: all diff-html-js diff-html-css
	for i in *.syntax.m4; do \
		git diff 5d142251e $(SYNTAX_DIR)/$${i%.m4} > $${i%.m4}.diff; \
	done

diff-html-js: all
	diff -u $(SYNTAX_DIR)/js.syntax $(SYNTAX_DIR)/html.syntax > html.js.diff || true

diff-html-css: all
	diff -u $(SYNTAX_DIR)/css.syntax $(SYNTAX_DIR)/html.syntax > html.css.diff || true

clean:
	rm -rf bright
	rm *.diff
