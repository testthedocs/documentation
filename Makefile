# The shell we use
SHELL := /bin/bash

# Get version form VERSION
VERSION := $(shell cat VERSION)
DOCKER := $(bash docker)

# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

# Add the following 'help' target to your Makefile
# # And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

.PHONY: html
html: ## Builds HTML of the docs
	@echo "$(YELLOW)==> Building HTML  ....$(RESET)"
	docker run --rm -v "${PWD}":/build/docs:rw testthedocs/ttd-docsbuilder:latest html
