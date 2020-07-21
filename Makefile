test:
	shellcheck snippets/*.sh
	./bin/test_mocks.sh

generate_mocks:
	./bin/generate_mocks.sh

generate_readme:
	./bin/generate_readme.js > README.md
