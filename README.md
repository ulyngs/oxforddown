# NOTE Major change: To build the thesis, you now simply knit **index.Rmd** - see details below.

# Contents

-   [Requirements](#requirements)
-   [How to use](#how-to-use)
    -   [How-to chapters](#how-to-chapters)
    -   [Video tutorials](#video-tutorials)
    -   [Writing your thesis](#writing-your-thesis)
    -   [Building your entire thesis](#building-your-entire-thesis)
        -   [PDF output](#pdf-output)
        -   [Gitbook output](#gitbook-output)
        -   [BS4 book output](#bs4-book-output)
        -   [Word output](#word-output)
    -   [Building a single chapter](#building-a-single-chapter)
    -   [Cleaning up generated auxiliary files](#cleaning-up-generated-auxiliary-files)
-   [Customisations and extensions](#customisations-and-extensions)
-   [Limitations](#limitations)
    -   [Gotchas](#gotchas)
    -   [Output formats](#output-formats)

# Oxforddown

A template for writing an Oxford University thesis in R Markdown.
The template uses the [bookdown](https://bookdown.org) R package together with the [OxThesis LaTeX template](https://github.com/mcmanigle/OxThesis), plus lots of inspiration from [thesisdown](https://github.com/ismayc/thesisdown).

-   [Sample PDF output](https://github.com/ulyngs/oxforddown/blob/master/docs/_main.pdf)
-   [Sample BS4 book output](https://ulyngs.github.io/oxforddown/)

Examples of theses written with `oxforddown`:

-   [Ulysses in Cyberspace: Examining the Effectiveness of Design Patterns for Digital Self-Control](https://ulyngs.github.io/phd-thesis/) by [Ulrik Lyngs](https://ulriklyngs.com)
-   [Teens, Screens and Wellbeing: An Improved Approach](https://www.amyorben.com/docs/thesis/index.html) by [Amy Orben](https://www.amyorben.com)
-   [Interpreting Neural Language Models for Linguistic Complexity Assessment](https://gsarti.com/thesis/introduction.html) by [Gabriele Sarti](https://gsarti.com)

*NOTE: If you've used this template to write your thesis, drop me a line at [ulrik.lyngs\@cs.ox.ac.uk](mailto:ulrik.lyngs@cs.ox.ac.uk) and I'll add a link showcasing it!*

## How to cite

[![DOI](https://zenodo.org/badge/159745024.svg)](https://zenodo.org/badge/latestdoi/159745024)

``` bibtex
@misc{lyngsOxforddown2019,
  author = {Lyngs, Ulrik},
  title = {oxforddown: An Oxford University Thesis Template for R Markdown},
  year = {2019},
  publisher = {GitHub},
  journal = {GitHub repository},
  howpublished = {\url{https://github.com/ulyngs/oxforddown}},
  doi = {10.5281/zenodo.3484682},
}
```

## Requirements

-   [R](https://cran.rstudio.com) and [RStudio version 1.2 or higher](https://www.rstudio.com/products/rstudio/download/#download)

-   The R packages `rmarkdown`, `bookdown`, `tidyverse`, `kableExtra`, and `here`

-   a LaTeX installation

    -   Option 1: Use [TinyTeX](https://yihui.name/tinytex/) (a minimal LaTeX installation intended for use with R Markdown)

        -   the development version of TinyTex is [currently required](https://github.com/ulyngs/oxforddown/issues/4). Install from R with

        ``` r
        remotes::install_github('yihui/tinytex')
        tinytex::install_tinytex()
        ```

        -   Then install the LaTeX packages used by `oxforddown` (diskspace taken up by TinyTex with the required packages installed is about 280 Mb)

        ``` r
        missing_packages <- c(
          "appendix", "babel-english", "babel-greek", "babel-latin", 
          "biber", "biblatex", "caption", "cbfonts-fd", "colortbl", "csquotes", 
          "enumitem", "environ", "eso-pic", "fancyhdr", "greek-fontenc", 
          "grfext", "hyphen-greek", "hyphen-latin", "lineno", "logreq", 
          "makecell", "microtype", "minitoc", "multirow", "notoccite", 
          "oberdiek", "pdflscape", "pdfpages", "quotchap", "soul", "tabu", 
          "threeparttable", "threeparttablex", "titlesec", "tocbibind", 
          "trimspaces", "ulem", "units", "utopia", "varwidth", "wrapfig",
          "fvextra"
          )
        tinytex::tlmgr_install(missing_packages)
        ```

    -   Option 2: Use an ordinary LaTeX distribution

        -   Mac: download and install MacTeX from [tug.org/mactex/](http://www.tug.org/mactex/) (\~4 gigs)
        -   Windows: download and install MikTex from [miktex.org](https://miktex.org)

-   *If on Mac*

    -   Command line developer tools. If you haven't got these installed already, your mac will probably automatically prompt you to install them. Otherwise, you can install them by opening a terminal and typing `xcode-select --install`

## How to use

-   download the **ulyngs/oxforddown** repo as a zip
-   open **oxforddown.Rproj** in RStudio

### How-to chapters
Read the ['How to use' chapter](https://ulyngs.github.io/oxforddown/how-to-use.html) to understand the structure of `oxforddown` and how to do the basic things like building your thesis.

For how to use R Markdown syntax in general and in `oxforddown` in particular, read the dedicated chapters on this ([R Markdown basics](https://ulyngs.github.io/oxforddown/rmd-basics.html), [Citations, cross-references, and collaboration](https://ulyngs.github.io/oxforddown/cites-and-refs.html), and [Tables](https://ulyngs.github.io/oxforddown/tables.html)).

See also the general, official resources [*R Markdown: The Definitive Guide*](https://bookdown.org/yihui/rmarkdown/) and the [*R Markdown Cookbook*](https://bookdown.org/yihui/rmarkdown-cookbook/).

### Video tutorials

I am in the process of updating the tutorial videos to v3 - I've noted below which have yet to be updated, but are still informative, and struck out those that no longer apply:

- [Part 1: Building the entire thesis](https://youtu.be/LBHxcuCMjnk)
- [Part 2: Building a single chapter](https://youtu.be/8vcO252Us6g)
- [(*old but informative*) Part 3: Understanding the file structure](https://www.youtube.com/watch?v=jafgJobOgpc)
- [(*old but informative*) Part 4: A walk-through example of creating your thesis](https://www.youtube.com/watch?v=uWpinaVSZ6Q)
- [~~Part 5: The content included in index.Rmd (or: why the introduction chapter is special)~~](https://www.youtube.com/watch?v=FPlwCj5ZH8M)
- [(*old but informative*) Part 6: Adjusting the order of chapters](https://www.youtube.com/watch?v=-0M3TuDnu7Y)
- [(*old but informative*) Part 7: \_bookdown.yml: Adjusting build settings](https://www.youtube.com/watch?v=jXYfC8RXTvg)
- [~~Part 8: Makefile: Adjusting build settings~~](https://www.youtube.com/watch?v=L6mV8z32RfE)
- [(*old but informative*) Part 9: The LaTeX templates](https://www.youtube.com/watch?v=o2fd_O1On7g)


### Writing your thesis

-   update the YAML header (the stuff at the top between '---') in **index.Rmd** with your name, college, etc.
-   write the individual chapters as **.Rmd** files in the root folder
-   write the front matter (abstract, acknowledgements, abbreviations) and back matter (appendices) by adjusting the **.Rmd** files in the **front-and-back-matter/** folder

**.Rmd** files you don't want included in the body text must be given file names that begin with an underscore (e.g. **front-and-back-matter/\_abstract.Rmd** and **front-and-back-matter/\_acknowledgements.Rmd**).
(Alternatively, specify manually in **\_bookdown.yml** which files should be merged into the body text.)

### Building your entire thesis

-   Build the entire thesis by opening **index.Rmd** and clicking the 'knit' button.
-   The generated thesis files are saved in the **docs/** folder
-   To choose output formats, go to the top of **index.Rmd**'s YAML header and edit the line `thesis_formats <- "pdf";` to the format(s) you want (options are "pdf", "bs4", "gitbook", and "word")
-   You can build to multiple formats simultaneously with, e.g., `thesis_formats <- c("pdf", "bs4", "word")`
-   If you want to customise the build function, edit **scripts_and_filters/knit-functions.R**

#### PDF output

``` yaml
knit: (function(input, ...) {
    thesis_formats <- "pdf";
    ...
```

![](figures/sample-content/screenshots/compiled_pdf.png)

When you build the entire thesis to PDF, Latex generates a whole bunch of auxillary files - these are automatically removed after the build process end by the custom knit function that is used when you knit **index.Rmd**.

To change how this removal is done, edit **scripts_and_filters/knit-functions.R**.
The line `file.remove(list.files(pattern = "*\\.(log|mtc\\d*|maf|aux|bcf|lof|lot|out|toc)$"))` within `if ("pdf" %in% output_format){` is the one that removes files after PDF output is generated.

#### BS4 book output (HTML)

``` yaml
knit: (function(input, ...) {
    thesis_formats <- "bs4";
    ...
```

-   NOTE: the [bs4 book output](https://pkgs.rstudio.com/bookdown/reference/bs4_book.html) requires the `downlit` and `bslib` R packages (install them with `install.packages`)
-   Note also that to deploy a BS4 book on GitHub Pages, there must be a **.nojekyll** file in the **docs/** folder, otherwise GitHub does some voodoo that causes some filepaths not to work. This file is generated automatically by `oxforddown`'s knitting function.

#### Gitbook output (HTML)

``` yaml
knit: (function(input, ...) {
    thesis_formats <- "gitbook";
    ...
```

-   Note that to deploy a gitbook on GitHub Pages, there must be a **.nojekyll** file in the **docs/** folder, otherwise GitHub does some voodoo that causes some filepaths not to work. This file is generated automatically by `oxforddown`'s knitting function.

#### Word output

``` yaml
knit: (function(input, ...) {
    thesis_formats <- "word";
    ...
```

-   Note that the Word output has no templates behind it, and many things do not work (e.g. image rotation, highlighting corrections). **I encourage pull requests that optimise the Word output, e.g. by using tools from the [`officer`](https://github.com/davidgohel/officer) package.**

### Building a single chapter

To knit an individual chapter without compiling the entire thesis:

1.  open the **.Rmd** file of a chapter
2.  add a YAML header specifying the output format(s) (e.g. `bookdown::word_document2` for a word document you might want to upload to Google Docs for feedback from collaborators)
3.  click the `knit` button (the output file is then saved in the root folder)

As shown in the sample chapters' YAML headers, to output a single chapter to PDF, use e.g.:

``` yaml
output:
  bookdown::pdf_document2:
    template: templates/brief_template.tex
    citation_package: biblatex
documentclass: book
bibliography: references.bib
```

The file **templates/brief_template.tex** formats the chapter in the OxThesis style but without including the front matter (table of contents, abstract, etc).

**NOTE:** The bibliography path in your individual chapters' YAML headers needs to be identical to the one in **index.Rmd** - otherwise your individual chapters' bibliography path may override the path in **index.Rmd** and cause trouble when you knit the entire thesis.

## Customisations and extensions

-   for some common things you might want to do in your thesis, read through the sample content
-   for example, the ['Customisations and extensions' chapter](https://ulyngs.github.io/oxforddown/customisations-and-extensions.html) (thanks \@bmvandoren!) adds tips on how to include PDF pages from a published typeset article in your thesis, and much more!

## Limitations

### Gotchas

-   don't use underscores (\_) in your YAML front matter or code chunk labels!
    (underscores have special meaning in LaTeX, so therefore you are likely to get an error, cf. <https://yihui.org/en/2018/03/space-pain/>)

    -   bad YAML: `bibliography: bib_final.bib`
    -   good YAML: `bibliography: bib-final.bib`
    -   bad chunk label: `{r my_plot}`
    -   good chunk label: `{r my-plot}`

### Output formats

-   at the moment only PDF and HTML output have been properly implemented; I may improve on the Word output further down the line

Enjoy!
