NAME = proj1
LOGIN = xharma05

all:
	latex $(NAME).tex
	latex $(NAME).tex
	dvips -t a4 $(NAME).dvi
	ps2pdf $(NAME).ps

targz:
	tar -czvf $(LOGIN)-fit.tar.gz *.tex Makefile

clean:
	rm -f $(NAME).{aux,dvi,log,pdf,ps} $(LOGIN)-fit.tar.gz