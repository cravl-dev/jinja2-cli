SHELL=/usr/bin/bash

.PHONY: help # Display available targets
help:
	@grep -E '^.PHONY: .+ #' Makefile | sed -re 's/\.PHONY: (.+) # ?(.*)/\1\t\2/g' | expand --tabs=20

.PHONY: test # Run pytest
test:
	pytest -v

.PHONY: clean # Clean build files
clean:
	rm -rf *.egg-info *.egg dist build .pytest_cache

.PHONY: build # Build
build: clean
	python -m build -s -w

.PHONY: install # Install
install: build
	pipx install --force .

.PHONY: install-all # Install with all data source support
install-all: build
	pipx install --force . '.[hjson,json5,toml,xml,yaml]'

.PHONY: publish # Publish with twine
publish: build
	twine upload -s dist/*
