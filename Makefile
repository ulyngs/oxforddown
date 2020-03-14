pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
	rm -f *.log *.mtc* *.maf *.aux *.bcf *.lof *.lot *.out *.toc front-and-back-matter/abbreviations.aux
	Rscript -e 'browseURL("docs/_main.pdf")'

gitbook:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'
	Rscript -e 'browseURL("docs/index.html")'

word:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::word_document2")'
	Rscript -e 'browseURL("docs/_main.docx")'

clean:
	rm -f *.log *.mtc* *.maf *.aux *.bbl *.blg *.xml
	
clean-knits:
	rm -f *.docx *.html *.pdf *.log *.maf *.mtc*
	rm -R *_files
	rm -R *_cache

