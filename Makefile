pdf:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
	rm -f *.log *.mtc* *.maf *.aux *.bcf *.lof *.lot *.out *.toc front-and-back-matter/abbreviations.aux
	Rscript -e 'browseURL("docs/_main.pdf")'

gitbook:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'
	Rscript -e 'browseURL("docs/index.html")'

word:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("index.Rmd", output_format = "bookdown::word_document2")'
	Rscript -e 'browseURL("docs/_main.docx")'

clean:
	rm -f *.log *.mtc* *.maf *.aux *.bbl *.blg *.xml
	
clean-knits:
	rm -f *.docx *.html *.pdf *.log *.maf *.mtc* *.tex *.toc *.out *.lof *.lot *.bcf *.aux
	rm -R *_files
	rm -R *_cache

