context("test-read_gmt")

test_that("can read in and tidy a GMT file", {
    kegg_path <- system.file("extdata", "c2.cp.kegg.v6.2.symbols.gmt.txt",
                             package = "readgmt")
    expect_true(is.list(read_gmt(kegg_path)))
    expect_true("KEGG_COLORECTAL_CANCER" %in% names(read_gmt(kegg_path)))
    expect_true(tibble::is_tibble(read_gmt(kegg_path, tidy = TRUE)))
    expect_true(tibble::is_tibble(tidy_gmt(read_gmt(kegg_path, tidy = FALSE))))
})
