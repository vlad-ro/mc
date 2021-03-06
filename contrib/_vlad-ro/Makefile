
M4 = /usr/bin/m4
SYNTAX_DIR = ../../misc/syntax
DIFF_DIR = diff
GIT_BASELINE = 5d142251e

all: init terraform
	for i in *.syntax.m4; do \
		$(M4) -D COLOR_SCHEME=default $$i > $(SYNTAX_DIR)/$${i%.m4}; \
		$(M4) -D COLOR_SCHEME=bright  $$i > bright/$${i%.m4}; \
		$(M4) -D COLOR_SCHEME=dark    $$i > dark/$${i%.m4}; \
	done

init:
	mkdir -p bright dark

terraform: init
	for i in bright dark $(SYNTAX_DIR); do \
		cp mcedit-syntax-terraform/tf.syntax $$i; \
	done

install: all
	./install-syntax.sh bright

install-dark: all
	./install-syntax.sh dark

install-default: all
	./install-syntax.sh default

diff: diff-req diff-html-js diff-html-css diff-Syntax
	for i in *.syntax.m4; do \
		git diff $(GIT_BASELINE) $(SYNTAX_DIR)/$${i%.m4} > $(DIFF_DIR)/$${i%.m4}.diff; \
	done

diff-req: all
	mkdir -p $(DIFF_DIR)

diff-html-js: diff-req
	awk '/^context exclusive <script/{p=1}/^context exclusive <style/{p=0}{if(p){print}}' $(SYNTAX_DIR)/html.syntax | \
	diff -u $(SYNTAX_DIR)/js.syntax - > $(DIFF_DIR)/html.syntax_js.diff || true

diff-html-css: diff-req
	awk '/^context exclusive <style/{p=1}/^context exclusive \/\\/{p=0}{if(p){print}}' $(SYNTAX_DIR)/html.syntax | \
	diff -u $(SYNTAX_DIR)/css.syntax - > $(DIFF_DIR)/html.syntax_css.diff || true

diff-Syntax: diff-req
	git diff $(GIT_BASELINE) $(SYNTAX_DIR)/Syntax.in > $(DIFF_DIR)/Syntax.in.diff

clean:
	rm -rf bright dark $(DIFF_DIR)

git-merge-upstream:
	git fetch upstream; \
	git merge upstream/master
