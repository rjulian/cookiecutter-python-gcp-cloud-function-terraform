SHELL = bash 
PYTHON_SOURCE = {{cookiecutter.function_name}}


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

format:
	black $(PYTHON_SOURCE)

venv :
	python3 -m venv venv
	source venv/bin/activate && pip install pip --upgrade 