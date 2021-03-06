.PHONY: all checkdist clean cover lint sdist unit uploadtest upload

all: ;

checkdist: sdist
	twine check dist/*

clean:
	rm -fr ./build ./dist

lint:
	tox -e flake8 || true
	tox -e pylint || true

upload:
	tox -e release
