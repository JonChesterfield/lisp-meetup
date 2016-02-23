all:	lisp_2016.pdf

lisp_2016.pdf:	lisp_2016.tex
	latex --output-format=pdf $^

ship:	all
	cp abstract.txt ~/lisp-meetup/
	cp *.png ~/lisp-meetup/
	cp *.scm ~/lisp-meetup/
	cp lisp_2016.tex ~/lisp-meetup/
	cp lisp_2016.pdf ~/lisp-meetup/
	cp makefile ~/lisp-meetup/

clean:
	rm -f lisp_2016.pdf
