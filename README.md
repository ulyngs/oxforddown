# Oxforddown

A template for writing an Oxford University thesis in R Markdown.

The template uses the [bookdown](https://bookdown.org) R package together with the [OxThesis LaTeX template](https://github.com/mcmanigle/OxThesis), plus lots and lots of inspiration and sample content from [thesisdown](https://github.com/ismayc/thesisdown).

# Requirements
- LaTeX - if you're lazy and got sufficient disc space, just download and install the MacTeX distribution from [tug.org/mactex/](http://www.tug.org/mactex/). If you're short on disc space, go for the BasicTeX distribution from the same site, or Yihui Xie's [TinyTeX](https://yihui.name/tinytex/).
- [R](https://cran.rstudio.com) and [RStudio version 1.2 preview](https://www.rstudio.com/products/rstudio/download/preview/)
- (pandoc version 2 or higher - comes bundled with RStudio v1.2 preview)
- a number of R packages (including `bookdown` and `thesisdown`) which should (hopefully) be automatically installed for you (if you don't have them already) when you knit this project for the first time in RStudio

# Example output
- PDF output: see [**docs/_main.pdf**](https://github.com/ulyngs/oxforddown/blob/master/docs/_main.pdf)
- Gitbook output: see [ulyngs.github.io/oxforddown/](https://ulyngs.github.io/oxforddown/)

# Usage
- clone the **ulyngs/oxforddown** repo or download it as a zip
- open **oxforddown.Rproj** in RStudio

## Compiling the thesis
### PDF output
- click 'Build Book' on the 'Build' tab
- the compiled PDF (and the **.tex** file) is saved as **docs/\_main.pdf**, and the PDF is opened in the RStudio Viewer

![](screenshots/build.png)
![](screenshots/compiled.png)

### Gitbook output
- in the terminal (not the R console!) tab, type 'make gitbook'
- the set of HTML files for the gitbook are stored in the **docs/** folder, and the front page (docs/index.html) is opened in a browser

## Writing your thesis
To use this template to write your thesis, do the following:
- set meta data (your name, college, etc.) in **index.Rmd**
- write the individual chapters, as well as abstract and acknowledgements, as **.Rmd** files in **text/**
- note that **.Rmd** files you don't want included in the body text should be given file names that begin with an underscore (e.g. **text/\_abstract.Rmd** and **text/\_acknowledgements.Rmd**) - alternatively, you can specify manually in **\_bookdown.yml** which files should be merged into the body text)

# Current limitations
- at the moment only PDF and HTML output have been properly implemented; I will look into Word output further down the line
- at the moment, because the individual chapters live in a subfolder knitting or previewing individual chapters causes trouble - I will implement a fix at some point

This project will in time be turned into an R package that supply the template as an R Markdown template within RStudio.

Enjoy!
