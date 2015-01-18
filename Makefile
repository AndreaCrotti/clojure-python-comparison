# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = cloj_python

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   =  $(PAPEROPT_$(PAPER)) $(SPHINXOPTS)
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .
DROP = $(HOME)/Dropbox/Public/talks

all: test cloj_python upload

test:
	nosetests code/python

cloj_python:
	$(SPHINXBUILD) -b slides $(ALLSPHINXOPTS) . $(BUILDDIR)

clean:
	-rm -rf $(BUILDDIR)

.PHONY: cloj_python clean
