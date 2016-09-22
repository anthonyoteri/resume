BASENAME ?= anthony_oteri

SOURCE = $(BASENAME).tex
RESULT = $(BASENAME).pdf

all: $(RESULT)

$(RESULT): $(SOURCE)
	pdflatex $(SOURCE)
	touch $(SOURCE) $(RESULT)

.PHONY: clean

clean:
	rm -rf *.log *.aux *.out *.pdf


