library(knitr)
hook_output = knit_hooks$get('source')  #this is the output for code

knit_hooks$set(source = function(x, options) {
  if (!is.null(n <- options$linewidth) & knitr::is_latex_output()) {
    x <- strwrap(x, width = n, exdent = 4)
  }
  hook_output(x, options)
})