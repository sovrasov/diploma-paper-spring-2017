cmake_minimum_required(VERSION 3.0)

project(diploma-paper NONE)

include(../3rd-party/UseLATEX/UseLATEX.cmake)

set(PDFLATEX_COMPILER "xelatex")

set(PAPER_SOURCES
	mainpage.tex
	introduction.tex
	conclusion.tex
	local_search.tex
	attachments.tex
	mixed_ags_implementation.tex
	multilevel_evolvents.tex
	localTuning.tex
	optimal_control_problem.tex)

add_latex_document(paper.tex
	INPUTS ${PAPER_SOURCES}
	IMAGE_DIRS images
	BIBFILES bibliography.bib
	FORCE_PDF
	USE_BIBLATEX
  )
