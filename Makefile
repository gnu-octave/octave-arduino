## Copyright 2015-2016 Mike Miller
## Copyright 2015-2016 Carnë Draug
## Copyright 2015-2016 Oliver Heimlich
## Copyright 2018-2023 John Donoghue
##
## Copying and distribution of this file, with or without modification,
## are permitted in any medium without royalty provided the copyright
## notice and this notice are preserved.  This file is offered as-is,
## without any warranty.

## Makefile to simplify Octave Forge package maintenance tasks
TOPDIR := $(shell pwd)

## Some shell programs
MD5SUM    ?= md5sum
SED       ?= sed
GREP      ?= grep
TAR       ?= tar
TEXI2PDF  ?= texi2pdf -q
MAKEINFO  ?= makeinfo
MAKEINFO_HTML_OPTIONS := --no-headers --set-customization-variable 'COPIABLE_LINKS 0' --set-customization-variable 'COPIABLE_ANCHORS 0' --no-split 
CUT ?= cut
TR ?= tr

# work out a possible help generator
ifeq ($(strip $(QHELPGENERATOR)),)
  ifneq ($(shell qhelpgenerator-qt5 -v 2>/dev/null),)
    QHELPGENERATOR = qhelpgenerator-qt5
  #else ifneq ($(shell qhelpgenerator -qt5 -v 2>/dev/null),)
  #  v4 wont process collection files, but returns ok status on version
  #  QHELPGENERATOR = qhelpgenerator -qt5
  else ifneq ($(shell qcollectiongenerator -qt5 -v 2>/dev/null),)
    QHELPGENERATOR = qcollectiongenerator -qt5
  else ifneq ($(shell qcollectiongenerator-qt5 -v 2>/dev/null),)
    QHELPGENERATOR = qcollectiongenerator-qt5
  else
    QHELPGENERATOR = true
  endif
endif

## Detect which VCS is used
vcs := $(if $(wildcard .hg),hg,$(if $(wildcard .git),git,unknown))
ifeq ($(vcs),hg)
release_dir_dep := .hg/dirstate
HG           := hg
HG_CMD        = $(HG) --config alias.$(1)=$(1) --config defaults.$(1)= $(1)
HG_ID        := $(shell $(call HG_CMD,identify) --id | sed -e 's/+//' )
REPO_TIMESTAMP := $(firstword $(shell $(call HG_CMD,log) --rev $(HG_ID) --template '{date|hgdate}'))
endif
ifeq ($(vcs),git)
release_dir_dep := .git/index
GIT          := git
REPO_TIMESTAMP := $(firstword $(shell $(GIT) log -n1 --date=unix --format="%ad"))
endif

TAR_REPRODUCIBLE_OPTIONS := --sort=name --mtime="@$(REPO_TIMESTAMP)" --owner=0 --group=0 --numeric-owner
TAR_OPTIONS  := --format=ustar $(TAR_REPRODUCIBLE_OPTIONS)

### Note the use of ':=' (immediate set) and not just '=' (lazy set).
### http://stackoverflow.com/a/448939/1609556
PACKAGE := $(shell $(GREP) "^Name: " DESCRIPTION | $(CUT) -f2 -d" " | \
$(TR) '[:upper:]' '[:lower:]')
VERSION := $(shell $(GREP) "^Version: " DESCRIPTION | $(CUT) -f2 -d" ")
DEPENDS := $(shell $(SED) -n -e 's/^Depends[^,]*, \(.*\)/\1/p' DESCRIPTION | $(SED) 's/ *([^()]*),*/ /g')
DATE := $(shell $(SED) -n -e 's/^Date: *\(\w\+\)/\1/p' DESCRIPTION)

## This are the files that will be created for the releases.
TARGET_DIR      := release
RELEASE_DIR     := $(TARGET_DIR)/$(PACKAGE)-$(VERSION)
RELEASE_TARBALL := $(TARGET_DIR)/$(PACKAGE)-$(VERSION).tar.gz
HTML_DIR        := $(TARGET_DIR)/$(PACKAGE)-html
HTML_TARBALL    := $(TARGET_DIR)/$(PACKAGE)-html.tar.gz

## Octave binaries
MKOCTFILE ?= mkoctfile
OCTAVE    ?= octave

## Targets that are not filenames.
## https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
.PHONY: help dist html release install all check run clean

## make will display the command before runnning them.  Use @command
## to not display it (makes specially sense for echo).
help:
	@echo "Targets:"
	@echo "   dist             - Create $(RELEASE_TARBALL) for release"
	@echo "   html             - Create $(HTML_TARBALL) for release"
	@echo "   release          - Create both of the above and show md5sums"
	@echo
	@echo "   install          - Install the package in GNU Octave"
	@echo "   all              - Build all oct files"
	@echo "   run              - Run Octave with development in PATH (no install)"
	@echo "   check            - Execute package tests (w/o install)"
	@echo "   doctest          - Tests only the help text via the doctest package"
	@echo
	@echo "   clean            - Remove releases, html documentation, and oct files"

# dist and html targets are only PHONY/alias targets to the release
# and html tarballs.
dist: $(RELEASE_TARBALL)
html: $(HTML_TARBALL)

# An implicit rule with a recipe to build the tarballs correctly.
%.tar.gz: %
	tar -cf - $(TAR_OPTIONS) -C "$(TARGET_DIR)/" "$(notdir $<)" | gzip -9n > "$@"

# Some packages are distributed outside Octave Forge in non tar.gz format.
%.zip: %
	cd "$(TARGET_DIR)" ; zip -9qr - "$(notdir $<)" > "$(notdir $@)"

# Create the unpacked package.
#
# Notes:
#    * having release_dir_dep as a prerequesite  means it is only rebuilt
#      if we are at a different commit.
#    * the variable RM usually defaults to "rm -f"
#    * having this recipe separate from the one that makes the tarball
#      makes it easy to have packages in alternative formats (such as zip)
#    * note that if a commands needs to be ran in a specific directory,
#      the command to "cd" needs to be on the same line.  Each line restores
#      the original working directory.
$(RELEASE_DIR): $(release_dir_dep)
	@echo "Creating package version $(VERSION) release ..."
	$(RM) -r "$@"
ifeq (${vcs},hg)
	$(HG) archive --exclude ".hg*" --type files "$@"
endif
ifeq (${vcs},git)
	$(GIT) archive --format=tar --prefix="$@/" HEAD | $(TAR) -x
	$(RM) "$@/.gitignore"
endif
	$(MAKE) -C "$@" docs
	# remove dev stuff
	cd "$@" && $(RM) -rf "devel/" && $(RM) -rf "deprecated/" 
	# && $(RM) -f doc/mkfuncdocs.py doc/mkqhcp.py
	cd "$@" && $(RM) Makefile
	chmod -R a+rX,u+w,go-w "$@"

.PHONY: docs
docs: doc/$(PACKAGE).pdf doc/$(PACKAGE).qhc doc/$(PACKAGE).html

cleandocs:
	$(RM) -f doc/$(PACKAGE).info
	$(RM) -f doc/$(PACKAGE).pdf
	$(RM) -f doc/$(PACKAGE).html
	$(RM) -f doc/functions.texi
	$(RM) -f doc/version.texi
	$(RM) -f doc/$(PACKAGE).qhc doc/$(PACKAGE).qch

doc/version.texi: $(release_dir_dep)
	@echo Generating $@
	@echo "@c autogenerated from Makefile" > $@
	@echo "@set VERSION $(VERSION)" >> $@
	@echo "@set PACKAGE $(PACKAGE)" >> $@
	@echo "@set DATE $(DATE)" >> $@

doc/$(PACKAGE).pdf: doc/$(PACKAGE).texi doc/functions.texi doc/version.texi
	cd doc && SOURCE_DATE_EPOCH=$(REPO_TIMESTAMP) $(TEXI2PDF) $(PACKAGE).texi
	# remove temp files
	cd doc && $(RM) -f arduino.aux  arduino.cp  arduino.cps  arduino.fn  arduino.fns  arduino.log  arduino.toc

doc/$(PACKAGE).html: doc/$(PACKAGE).texi doc/functions.texi doc/version.texi
	cd doc && SOURCE_DATE_EPOCH=$(REPO_TIMESTAMP) $(MAKEINFO) --html --css-ref=$(PACKAGE).css $(MAKEINFO_HTML_OPTIONS) --output=${PACKAGE}.html $(PACKAGE).texi

doc/$(PACKAGE).qhc: doc/$(PACKAGE).html
	# try also create qch file if can
	cd doc && ./mkqhcp.py $(PACKAGE) && $(QHELPGENERATOR) $(PACKAGE).qhcp -o $(PACKAGE).qhc
	cd doc && $(RM) -f $(PACKAGE).qhcp $(PACKAGE).qhp

doc/functions.texi: $(release_dir_dep)
	cd doc && ./mkfuncdocs.py --src-dir=../inst/ --src-dir=../inst/sensors/ ../INDEX | $(SED) 's/@seealso/@xseealso/g' > functions.texi

# install is a prerequesite to the html directory (note that the html
# tarball will use the implicit rule for ".tar.gz" files).
html_options = --eval 'options = get_html_options ("octave-forge");' \
               --eval 'options.package_doc = "$(PACKAGE).texi";' \
	       --eval 'options.package_doc_options = [options.package_doc_options " --css-include=$(PACKAGE).css"];'
$(HTML_DIR): install
	@echo "Generating HTML documentation. This may take a while ..."
	$(RM) -r "$@"
	$(OCTAVE)  --no-gui --no-window-system --silent \
	  --eval "pkg load generate_html; " \
	  --eval "pkg load $(PACKAGE);" \
	  $(html_options) \
	  --eval 'generate_package_html ("${PACKAGE}", "$@", options);'
	chmod -R a+rX,u+w,go-w $@

# To make a release, build the distribution and html tarballs.
release: dist html
	@$(MD5SUM) $(RELEASE_TARBALL) $(HTML_TARBALL)
	@echo "Upload @ https://sourceforge.net/p/octave/package-releases/new/"
	@echo "    and inform to rebuild release with '$$($(HG) id)'"
	@echo 'Execute: hg tag "release-${VERSION}"'

install: $(RELEASE_TARBALL)
	@echo "Installing package locally ..."
	$(OCTAVE)  --no-gui --silent --eval 'pkg ("install", "-verbose", "$(RELEASE_TARBALL)")'

clean: cleandocs
	$(RM) -r $(RELEASE_DIR) $(RELEASE_TARBALL) $(HTML_TARBALL) $(HTML_DIR)

#
# Recipes for testing purposes
#

# Build any requires oct files.  Some packages may not need this at all.
# Other packages may require a configure file to be created and run first.
all:

# Start an Octave session with the package directories on the path for
# interactice test of development sources.
run: all
	$(OCTAVE)  --no-gui --silent --persist --path "$(TOPDIR)/inst/" \
	  --eval 'if(!isempty("$(DEPENDS)")); pkg load $(DEPENDS); endif;'

rungui: all
	$(OCTAVE) --silent --gui --persist --path "$(TOPDIR)/inst/" \
	  --eval 'if(!isempty("$(DEPENDS)")); pkg load $(DEPENDS); endif;'

# Test example blocks in the documentation.  Needs doctest package
#  http://octave.sourceforge.net/doctest/index.html
doctest: all
	$(OCTAVE) --no-gui --path "$(TOPDIR)/inst/" \
	  --eval 'if(!isempty("$(DEPENDS)")); pkg load $(DEPENDS); endif;' \
	  --eval 'pkg load doctest;' \
	  --eval 'doctest ("$(TOPDIR)/inst/");'

# Note "doctest" as prerequesite.  When testing the package, also check
# the documentation.
check: all
	$(OCTAVE) --no-gui --silent --path "$(TOPDIR)/inst/" \
	  --eval 'if(!isempty("$(DEPENDS)")); pkg load $(DEPENDS); endif;' \
	  --eval "__run_test_suite__ ({'$(TOPDIR)/inst'}, {})"
