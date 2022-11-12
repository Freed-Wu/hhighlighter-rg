prefix = /usr/local

.PHONY: default
default: test

.PHONY: all
all: test install

.PHONY: test
test:
	bats -r .

.PHONY: install
install: bin completion

.PHONY: bin
bin:
	install -D h -t $(prefix)/bin

.PHONY: completion
completion: bash-completion zsh-completion

.PHONY: bash-completion
bash-completion:
	install -D completions/bash/h -t $(prefix)/share/bash/completions

.PHONY: zsh-completion
zsh-completion:
	install -D completions/zsh/_h -t $(prefix)/share/zsh/site-functions
