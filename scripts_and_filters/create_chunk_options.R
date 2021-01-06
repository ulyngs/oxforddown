##### add chunk options for PDF output ####
# for guidance on how to create your own chunk options see
# https://ulyngs.github.io/blog/posts/2019-02-01-how-to-create-your-own-chunk-options-in-r-markdown/


# add chunk option 'vspace_output' that can be used to add white space after each R command's output
hook_output_def = knitr::knit_hooks$get('output')
knitr::knit_hooks$set(output = function(x, options) {
  if (!is.null(options$vspace_output)) {
    end <- paste0("\\vspace{", options$vspace_output, "}")
    stringr::str_c(hook_output_def(x, options), end)
  } else {
    hook_output_def(x, options)
  }
})

hook_chunk = knitr::knit_hooks$get('chunk')
knitr::knit_hooks$set(chunk = function(x, options) {
  txt = hook_chunk(x, options)
  # add chunk option 'quote_author' which adds \qauthor{...} to the end of a chunk.
  # This is used to give the author of the cute quotes you can add to chapter openings
  if (!is.null(options$quote_author)) {
    latex_include <- paste0("\\\\qauthor\\{", options$quote_author, "\\}\\1")
    gsub('(\\\\end\\{savequote\\})', latex_include, txt)
  } else {
    return(txt)  # pass to default hook
  }
})

