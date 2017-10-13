.PHONY: test-unit test-lint
.DELETE_ON_ERROR:

SHELL=/bin/bash -o pipefail
TEST_RESULTS_DIR=testResults
GOMETALINTER_OPTION=--tests -D gotype
# -D deadcode -D gocyclo -D vetshadow -d

test-unit:
	go test -v .

test-lint:
	gometalinter $(GOMETALINTER_OPTION) .
