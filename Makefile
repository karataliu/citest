.PHONY: test-unit test-lint test-lint-prepare
.DELETE_ON_ERROR:

SHELL=/bin/bash -o pipefail
TEST_RESULTS_DIR=testResults
GOMETALINTER_OPTION=--tests -D gotype

test-unit:
	go test -v .

test-lint:
	gometalinter.v1 $(GOMETALINTER_OPTION) .

test-lint-prepare:
	go get -u gopkg.in/alecthomas/gometalinter.v1
	gometalinter.v1 -i
