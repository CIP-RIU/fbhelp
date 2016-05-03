#' helpPanel
#'
#' Creates a panel to insert a vignette in a centered way.
#'
#' @param filePath path to resource
#' @param center logical; whether to center or not.
#' @author Reinhard Simon
#' @import shiny
#' @return tagList
#' @export
helpPanel <- function(filePath, center = FALSE){
if(is.null(filePath)) return(NULL)
if(!file.exists(file.path())) return("")
out = tagList(
  HTML("<center>"),
  tags$div(style = "max-width: 800px;",
           includeHTML(
             filePath
           )
  ),
  HTML("</center>")
)
if(!center){
  out = tagList(

    tags$div(style = "max-width: 800px;",
             includeHTML(
               filePath
             )
    )
  )
}
out
}
