pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
	rm -f *.log *.mtc* *.maf

gitbook:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'
	Rscript -e 'browseURL("docs/index.html")'

clean:
	rm -f *.log *.mtc* *.maf text/*.log text/*.maf text/*.mtc*
	
clean-previews:
	rm -f text/*.docx text/*.html text/*.pdf
	rm -R text/*_cache
	rm -R text/*_files