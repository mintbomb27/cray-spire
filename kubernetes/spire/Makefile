current_dir := $(shell pwd)
tmp_dir := $(shell mktemp -d)

.SILENT: helmlint eval test unittest
.PHONY: helmlint eval test unittest

all: helmlint eval unittest test

lint: helmlint eval unittest

eval:
	helm template -n spire spire . > $(tmp_dir)/chart.yaml
	docker run -it -v $(tmp_dir):/chart garethr/kubeval:0.15.0 --ignore-missing-schemas /chart/chart.yaml

yamllint:
	docker run -it -v $(current_dir):/chart quay.io/helmpack/chart-testing:v3.4.0 yamllint -c /etc/ct/lintconf.yaml /chart

yamale:
	docker run -it -v $(current_dir):/chart quay.io/helmpack/chart-testing:v3.4.0 yamale -s /etc/ct/chart_schema.yaml /chart

helmlint:
	helm lint

test:
	kubectl kuttl test --kind-config kind.yaml --artifacts-dir /tmp/kuttl
