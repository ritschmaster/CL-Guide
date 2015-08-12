EMACS = emacs
EMACS_FLAGS = --batch

DOC_SOURCE = CL-Guide.org
DOC_OUT_FILES = CL-Guide.pdf CL-Guide.tex CL-Guide.tex~
MADE_FILE = made

CLEANFILES = $(DOC_OUT_FILES) $(MADE_FILE)
CLEANDIRS = auto

all:
  ifeq ($(wildcard $(MADE_FILE)),)
	"$(EMACS)" "$(EMACS_FLAGS)" "$(DOC_SOURCE)" --eval '(org-latex-export-to-pdf)' --kill
  endif
	touch "$(MADE_FILE)"

clean:
	rm -rf $(CLEANFILES)
	rm -rf "$(CLEANDIRS)"
