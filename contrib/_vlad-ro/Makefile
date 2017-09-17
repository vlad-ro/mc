
M4 = /usr/bin/m4
SYNTAX_DIR = ../../misc/syntax
BRIGHT_DIR = bright
DIFF_DIR = diff

all:
	mkdir -p bright; \
	for i in *.syntax.m4; do \
		$(M4) -D COLOR_SCHEME=default $$i > $(SYNTAX_DIR)/$${i%.m4}; \
		$(M4) -D COLOR_SCHEME=bright  $$i > $(BRIGHT_DIR)/$${i%.m4}; \
	done

install: all
	./install-syntax.sh

diff: diff-req diff-html-js diff-html-css diff-Syntax
	for i in *.syntax.m4; do \
		git diff 5d142251e $(SYNTAX_DIR)/$${i%.m4} > $(DIFF_DIR)/$${i%.m4}.diff; \
	done

diff-req: all
	mkdir -p $(DIFF_DIR)

diff-html-js: diff-req
	diff -u $(SYNTAX_DIR)/js.syntax $(SYNTAX_DIR)/html.syntax > $(DIFF_DIR)/html.syntax_js.diff || true

diff-html-css: diff-req
	diff -u $(SYNTAX_DIR)/css.syntax $(SYNTAX_DIR)/html.syntax > $(DIFF_DIR)/html.syntax_css.diff || true

diff-Syntax: diff-req
	git diff 5d142251e $(SYNTAX_DIR)/Syntax.in > $(DIFF_DIR)/Syntax.in.diff

clean:
	rm -rf $(BRIGHT_DIR) $(DIFF_DIR)
