install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv CItest.py

format:
	black *.py


lint:
	pylint --disable=R,C simplefunction.py

All: install lint test
