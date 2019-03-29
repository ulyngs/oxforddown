pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
	rm -f *.log *.mtc* *.maf *.aux *.bcf *.lof *.lot *.out *.toc front_matter/abbreviations.aux
	rm -r _bookdown_files/
	Rscript -e 'browseURL("docs/_main.pdf")'

gitbook:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'
	Rscript -e 'browseURL("docs/index.html")'

clean:
	rm -f *.log *.mtc* *.maf *.aux
	
clean-knits:
	rm -f *.docx *.html *.pdf *.log *.maf *.mtc*
	rm -R *_files
	rm -R *_cache

