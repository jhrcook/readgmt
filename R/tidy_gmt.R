#' Convert the GMT to a "tidy" tibble
#'
#' @description Sometimes, the data is wanted in a "tidy" format with each piece
#'   of information as an individual row. \code{tidy_gmt()} converts the list
#'   output of \code{read_gmt()} to a tibble.
#'
#' @param gmt a gmt from \code{read_gmt()}
#'
#' @return a tibble with columns \code{"gene_set"} and \code{"gene"}
#'
#' @examples
#' kegg_path <- system.file("extdata", "c2.cp.kegg.v6.2.symbols.gmt.txt",
#'                           package = "readgmt")
#' kegg <- read_gmt(kegg_path)
#' tidy_gmt(kegg)
#'
#' @importFrom magrittr %>%
#' @export tidy_gmt
tidy_gmt <- function(gmt) {
    tib <- tibble::enframe(gmt, name = "gene_set", value = "gene") %>%
        tidyr::unnest(cols = gene)
    return(tib)
}

utils::globalVariables(c("gene"), add = TRUE)
