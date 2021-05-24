knit_pdf <- function(input, ...) {
  bookdown::render_book(input, output_format = "bookdown::pdf_book")
       
  file.remove(list.files(pattern = "*.(log|mtc|maf|aux|bcf|lof|lot|out|toc)"), here::here("front-and-back-matter", "abbreviations.aux"))
}

knit_bs4book <- function(input, ...) {
  bookdown::render_book(input, output_format = "bookdown::bs4_book")
  
  # create a .nojekyll file which is needed to deploy on GitHub
  file.create(here::here("docs", ".nojekyll"))
}

knit_gitbook <- function(input, ...) {
  bookdown::render_book(input, output_format = "bookdown::gitbook")
  
  # create a .nojekyll file which is needed to deploy on GitHub
  file.create(here::here("docs", ".nojekyll"))
}

knit_word <- function(input, ...) {
  bookdown::render_book(input, output_format = "bookdown::word_document2")
}