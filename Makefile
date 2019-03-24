pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
	rm -f *.log *.mtc* *.maf chapters/abbreviations.aux
	rm -r _bookdown_files/

gitbook:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'
	Rscript -e 'browseURL("docs/index.html")'
	rm -r _bookdown_files/

clean:
	rm -f *.log *.mtc* *.maf
	
clean-previews:
	rm -f chapters/*.docx chapters/*.html chapters/*.pdf chapters/*.log chapters/*.maf chapters/*.mtc*
	rm -R chapters/*_cache
	rm -R chapters/*_files