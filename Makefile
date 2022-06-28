.DEFAULT: help
.PHONY: help bootstrap clean


ROOT_PATH := $(realpath .)
VENV_PATH = $(ROOT_PATH)/.venv
PYTHON_PATH = $(VENV_PATH)/bin/python


help:
	@echo "Please use \`$(MAKE) <target>' where <target> is one of the following:"
	@echo "  help       - show help information"
	@echo "  bootstrap  - setup packaging dependencies and initialize venv"
	@echo "  clean      - clean up project environment and all the build artifacts"


bootstrap: $(VENV_PATH)/bin/activate
$(VENV_PATH)/bin/activate:
	python3 -m venv $(VENV_PATH)

	$(PYTHON_PATH) -m pip install -e $(ROOT_PATH)


clean:
	rm -rf $(VENV_PATH) \
		$(ROOT_PATH)/build \
		$(ROOT_PATH)/dist \
		$(ROOT_PATH)/*.egg-info \
		$(ROOT_PATH)/.eggs \
		$(ROOT_PATH)/.pytest_cache
