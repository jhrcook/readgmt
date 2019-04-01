context("test-read_gmt")

test_that("multiplication works", {
    kegg_path <- system.file("extdata", "c2.cp.kegg.v6.2.symbols.gmt.txt",
                             package = "readgmt")
    expect_true(is.list(read_gmt(kegg_path)))
    expect_true("KEGG_COLORECTAL_CANCER" %in% names(read_gmt(kegg_path)))
})
