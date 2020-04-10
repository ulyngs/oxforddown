library(knitr)

hook_output = knit_hooks$get('source')  #this is the output for code

knit_hooks$set(source = function(x, options) {
  n <- 70
  
  # this hook is used only when the linewidth option is not NULL
  if (knitr::is_latex_output()) {
    x = knitr:::split_lines(x)
    # any lines wider than n should be wrapped
    if (any(nchar(x) > n)) x = strwrap(x, width = n)
    x = paste(x, collapse = '\n')
  }
  hook_output(x, options)
})
