
all : long_en short_en long_fr short_fr clean

long_en: cv.tex
	pdflatex --jobname Chabot_Aurelien_cv_2_en '\def\Type{Long}\def\Lang{en}\input{cv.tex}' cv.tex

short_en: cv.tex
	pdflatex --jobname Chabot_Aurelien_cv_1_en '\def\Type{Short}\def\Lang{en}\input{cv.tex}' cv.tex

long_fr: cv.tex
	pdflatex --jobname Chabot_Aurelien_cv_2_fr '\def\Type{Long}\def\Lang{fr}\input{cv.tex}' cv.tex

short_fr: cv.tex
	pdflatex --jobname Chabot_Aurelien_cv_1_fr '\def\Type{Short}\def\Lang{fr}\input{cv.tex}' cv.tex

clean:
	rm *.aux *.log *.out

rmproper: clean
	rm *.pdf
