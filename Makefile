
all : long_en short_en long_fr short_fr clean

long_en: cv.tex
	@echo "Build english long CV"
	@pdflatex --jobname Chabot_Aurelien_cv_en '\def\Type{Long}\def\Lang{en}\input{cv.tex}' cv.tex

short_en: cv.tex
	@echo "Build english short CV"
	@pdflatex --jobname Chabot_Aurelien_cv_1_en '\def\Type{Short}\def\Lang{en}\input{cv.tex}' cv.tex

long_fr: cv.tex
	@echo "Build french long CV"
	@pdflatex --jobname Chabot_Aurelien_cv_fr '\def\Type{Long}\def\Lang{fr}\input{cv.tex}' cv.tex

short_fr: cv.tex
	@echo "Build french short CV"
	@pdflatex --jobname Chabot_Aurelien_cv_1_fr '\def\Type{Short}\def\Lang{fr}\input{cv.tex}' cv.tex

clean:
	@rm -f *.aux *.log *.out

rmproper: clean
	@rm -f *.pdf
