#' list_tutorials
#'
#' lists tutorials prepared as vignettes.
#'
#' The idea is to scan packages for consistently named vignettes. This includes
#' different language versions. The naming scheme used here is:
#'
#' [name]_[lang].html
#'
#' where lang should be a two letter code.
#'
#' @param pkg a vector of package names.
#' @param name character base file name
#' @param lang two characters for a language
#' @param format a file format; html (default) or other well know (.pdf; .docx)
#' @author Reinhard Simon
#'
#' @return vector of path names
#' @export
list_tutorials <- function(pkg = NULL, name = "tutorial", lang = "en",
                           format =".html"){
  if (is.null(pkg)) return(NULL)

  name = paste0(name, "_", lang, format)

  lst <- function(pkg){
    out = file.path(system.file("text", package = pkg), name)
    if (file.exists(out)) return(out)
    NULL
  }
  sapply(pkg, lst)
}
