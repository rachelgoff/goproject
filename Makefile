SOURCEDIR=`pwd`
SOURCES := $(shell find $(SOURCEDIR) -name '*.go')
GOBIN=$(SOURCEDIR)/bin


build:
	go build $(SOURCES)

install:
	@mkdir -p $(GOBIN)
	GOBIN=$(GOBIN) \
	go install $(SOURCES)

clean:
	@rm -rf $(GOBIN)
	
