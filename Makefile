.PHONY: help install docs sd-serve sd-build sd-clean dsa-serve dsa-build dsa-clean build clean

help:
	@echo "  make docs       - build (--strict) then serve BOTH sites together, live-reloading:"
	@echo "                      DSA           -> http://127.0.0.1:8000"
	@echo "                      System Design -> http://127.0.0.1:8001"
	@echo "                    (Ctrl+C stops both)"
	@echo ""
	@echo "System Design docs (system_design/, mkdocs-system-design.yml):"
	@echo "  make sd-serve   - serve at http://127.0.0.1:8001"
	@echo "  make sd-build   - build static site into site-system-design/"
	@echo "  make sd-clean   - remove site-system-design/"
	@echo ""
	@echo "DSA docs (dsa_prep/, mkdocs-dsa.yml):"
	@echo "  make dsa-serve  - serve at http://127.0.0.1:8000"
	@echo "  make dsa-build  - build static site into site-dsa/"
	@echo "  make dsa-clean  - remove site-dsa/"
	@echo ""
	@echo "  make build      - build both sites (static, --strict)"
	@echo "  make clean      - remove both built sites"
	@echo "  make install    - install mkdocs + mkdocs-material + pymdown-extensions"

install:
	python3 -m pip install mkdocs mkdocs-material pymdown-extensions

sd-serve:
	mkdocs serve -f mkdocs-system-design.yml -a 127.0.0.1:8001

sd-build:
	mkdocs build -f mkdocs-system-design.yml --strict

sd-clean:
	rm -rf site-system-design

dsa-serve:
	mkdocs serve -f mkdocs-dsa.yml -a 127.0.0.1:8000

dsa-build:
	mkdocs build -f mkdocs-dsa.yml --strict

dsa-clean:
	rm -rf site-dsa

build: dsa-build sd-build

clean: dsa-clean sd-clean

docs: build
	@echo ""
	@echo "DSA docs:            http://127.0.0.1:8000"
	@echo "System Design docs:  http://127.0.0.1:8001"
	@echo "(Ctrl+C stops both)"
	@echo ""
	@trap 'kill 0' EXIT INT TERM; \
	mkdocs serve -f mkdocs-dsa.yml -a 127.0.0.1:8000 & \
	mkdocs serve -f mkdocs-system-design.yml -a 127.0.0.1:8001 & \
	wait
