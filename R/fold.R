#' Enable code-folding
#'
#' @param init `character` indictates to `"show"` or `"hide"` code blocks
#'   at initialization.
#' @param query `character` CSS-selector string for code blocks.
#' @param style `character` CSS style for the button.
#'
#' @return `htmltools::tagList`
#' @export
#'
generic <- function(init = c("show", "hide"), query, style) {

  init <- match.arg(init)

  tag_init <- NULL
  if (identical(init, "hide")) {
    tag_init <- at_load(query)
  }

  htmltools::tagList(
    button(query, style = style),
    codefolder_script(),
    tag_init
  )
}

#' @rdname generic
#' @export
#'
bookdown <- function(init = c("show", "hide"), query = "pre.sourceCode",
                     style = "position: absolute; right: 5%; z-index: 200") {

  init <- match.arg(init)

  generic(init, query = query, style = style)
}

#' @rdname generic
#' @export
#'
distill <- function(init = c("show", "hide"), query = "d-code", style = "") {

  init <- match.arg(init)

  generic(init, query = query, style = style)
}

button <- function(query, style) {

  htmltools::tags$input(
    onclick = glue::glue("codefolder('{query}');"),
    type = "button",
    value = "Hide Code",
    id = "codefolder-button",
    style = style
  )
}

codefolder_script <- function() {

  text <-
    glue::glue_collapse(
      c(readLines(system.file("js/codefolder.js", package = "codefolder")), ""),
      sep = "\n"
    )

  htmltools::tags$script(htmltools::HTML(text))
}

at_load <- function(query) {

  text <-
    glue::glue(
      glue::glue_collapse(
        c(readLines(system.file("js/atLoad.js", package = "codefolder")), ""),
        sep = "\n"
      ),
      .open = "${",
      .trim = FALSE
    )

  htmltools::tags$script(htmltools::HTML(text))
}



