files_to_remove <- list.files(pattern = ".log$|.maf$|.mtc")

file.remove(files_to_remove)