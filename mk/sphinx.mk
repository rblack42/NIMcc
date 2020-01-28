.PHONY: reqs
reqs:	requirements.txt
	pip install -r $<

.PHONY:	docs
docs:
	cd rst && sphinx-build -b html -d _build/doctrees . ../docs
