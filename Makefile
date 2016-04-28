SOURCEDIR=`pwd`
SOURCES := $(shell find $(SOURCEDIR) -name '*.go')
BASENAME := $(shell find $(SOURCEDIR) -name '*.go' -exec basename {} .go \;)
GOBIN=$(SOURCEDIR)/bin
GOCMD=/usr/local/go/bin/go

TESTDIR=$(SOURCEDIR)/tests
TESTSCRIPT=$(SOURCEDIR)/tests/test.sh

build:
	$(GOCMD) build $(SOURCES)

install:
	@mkdir -p $(GOBIN)
	GOBIN=$(GOBIN) \
	$(GOCMD) install $(SOURCES)

clean:
	@rm -rf $(GOBIN)

run:
	$(GOCMD) run $(SOURCES)

buildtest:
	cd $(TESTDIR); ./test.sh
