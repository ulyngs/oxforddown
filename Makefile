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
	rm -f text/*.docx text/*.html text/*.pdf text/*.log text/*.maf text/*.mtc*
	rm -R text/*_cache
	rm -R text/*_files