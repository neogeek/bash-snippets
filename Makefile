test:
	shellcheck snippets/*.sh

generate:
	./bin/generate.js > README.md
