current_dir := $(shell pwd)
tmp_dir := $(shell mktemp -d)

.SILENT: helmlint eval test unittest
.PHONY: helmlint eval test unittest

all: helmlint eval unittest test

lint: helmlint eval unittest

eval:
	helm kubeval -n spire spire . --ignore-missing-schemas

helmlint:
	helm lint

test:
	kubectl kuttl test --kind-config kind.yaml --artifacts-dir /tmp/kuttl
