.PHONY: checks pdf
checks:
	python verify_symbolic.py
	python verify_tensor_modes.py
	python verify_radial.py --level 12 --output radial_report.json
pdf:
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
