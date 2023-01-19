SHELL = zsh 
PYTHON_SOURCE = {{cookiecutter.function_name}}


install:
	pip install -r requirements.txt

lint: 
	pylint $(PYTHON_SOURCE) 

format:
	black $(PYTHON_SOURCE)

venv :
	python3 -m venv venv
	source venv/bin/activate && pip install pip --upgrade 