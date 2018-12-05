# Oxforddown

A template for writing an Oxford University thesis in R Markdown.

The template uses the [bookdown](https://bookdown.org) R package together with the [OxThesis LaTeX template](https://github.com/mcmanigle/OxThesis), plus lots and lots of inspiration and sample content from [thesisdown](https://github.com/ismayc/thesisdown).

# Example output
- PDF output: see [**docs/_main.pdf**](https://github.com/ulyngs/oxforddown/blob/master/docs/_main.pdf)
- Gitbook output: see [ulyngs.github.io/oxforddown/](https://ulyngs.github.io/oxforddown/)

Please note that this project is still work in progress.

# Usage
- clone the repo or download it as a zip
- open **oxdown-from-scratch.Rproj** in RStudio
- click 'Build Book' on the 'Build' tab, or open index.Rmd and click 'knit', to compile the book with sample content
![](screenshots/build.png)
![](screenshots/compiled.png)

To use this template to write your thesis, you do the following:
- set meta data (your name etc) in index.Rmd
- write the individual chapters, as well as abstract and acknowledgements, as .Rmd files in text/
- note that \_abstract.Rmd and \_acknowledgements.Rmd, and any other .Rmd files that you don't want to be included in the body text, must start with an underscore (alternatively, specify manually in **\_bookdown.yml** which .Rmd files you want to be merged into the body text of your thesis)

This project will in time be turned into an R package that supply this template as an R Markdown template within RStudio.

Enjoy!
