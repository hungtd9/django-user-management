SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo " make release | Release to pypi."
	@echo " make test    | Run the tests."
	@echo " make run-doc | Run the docs locally."

release:
	python setup.py register sdist bdist_wheel upload

test:
	@coverage run ./user_management/tests/run.py
	@coverage report --show-missing
	@flake8

run-doc:
	@mkdocs serve
