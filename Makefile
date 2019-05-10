include .env

all: help

## build - Builds up the image
build:
	docker build -t $(TAG) .

help: Makefile
	@grep "##" $< | grep -v "grep" | cut -d" " -f2-
