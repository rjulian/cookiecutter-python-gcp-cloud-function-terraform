.PHONY: install test lint clean build deploy format venv
SHELL = bash 
PYTHON_SOURCE = {{cookiecutter.function_name}}

all: venv install clean format lint test build deploy 

install:
	pip install -r requirements.txt
	pip install -r $(PYTHON_SOURCE)/requirements.txt

test:
	py.test --cov-report term --cov=$(PYTHON_SOURCE) tests/

lint: 
	pylint $(PYTHON_SOURCE) 

clean:
	coverage erase
	rm -rf build/

build: clean
	mkdir build
	zip -j build/$(PYTHON_SOURCE).zip $(PYTHON_SOURCE)/*

deploy: 
	terraform -chdir=terraform/ init
	terraform -chdir=terraform/ apply

format:
	black $(PYTHON_SOURCE)

venv :
	python3 -m venv venv
	source venv/bin/activate && pip install pip --upgrade 