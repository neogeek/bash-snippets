test:
	shellcheck snippets/*.sh

generate_readme:
	./bin/generate_readme.js > README.md
