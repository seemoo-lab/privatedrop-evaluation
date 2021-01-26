PYTHON := python3
VENV := venv
KERNEL := privatedrop-venv
NOTEBOOK := privatedrop.ipynb
NOTEBOOKPATH := $(dir $(abspath $(NOTEBOOK)))

start: install
	@echo $(dir $(abspath $(NOTEBOOK)))
	jupyter notebook --notebook-dir $(NOTEBOOKPATH) $(NOTEBOOK)

run: install
	# nbconvert runs in the directory of the notebook
	EXPORT_LATEX=1 jupyter nbconvert --to notebook --stdout --execute $(NOTEBOOK)

install: requirements.txt
	$(PYTHON) -m pip install -r requirements.txt
	$(PYTHON) -m IPython kernel install --user --name=$(KERNEL)

requirements.txt: requirements.in
	$(PYTHON) -m pip install pip-tools
	$(PYTHON) -m piptools compile requirements.in

nb-clean: $(NOTEBOOK)
	$(PYTHON) -m pip install nb-clean
	$(PYTHON) -m nb_clean clean $(NOTEBOOK)

$(VENV):
	python3 -m venv $@

clean:
	-jupyter kernelspec uninstall $(KERNEL)
	-rm -r $(VENV)

.PHONY: start run install nb-clean clean
