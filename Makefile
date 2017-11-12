NAME = crusaider/baseimage-node
VERSION = 0.1.2
NODEVERSION = 8.9.1

.PHONY: all build test tag_latest release ssh

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm image

test:
	env NAME=$(NAME) VERSION=$(VERSION) NODEVERSION=$(NODEVERSION) ./test/runner.sh
	./test/test-sample-app.sh

release: test
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	@if ! head -n 1 Changelog.md | grep -q $(VERSION); then echo 'Please note the release in Changelog.md.' && false; fi
	git checkout latest
	git rebase master
	git push
	git tag $(VERSION)
	git push origin $(VERSION)

