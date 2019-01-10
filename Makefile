
all: test

.PHONY: install_deps
install_deps:
	./bin/install

.PHONY: install
install: install_deps
	npm install

.PHONY: install-ci
install-ci:
	yarn install

.PHONY: test
test:
	yarn run test

.PHONY: test-ci
test-ci:
	yarn run test-ci

.PHONY: test-dev
test-dev:
	yarn run test-dev

.PHONY: validate
validate:
	yarn run validate

.PHONY: release
release:
	yarn run release

.PHONY: try-xxx
try-xxx:
	node ./src/xxx
