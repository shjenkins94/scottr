test_that("tpose() transposes a data.frame preserving row and column names", {
  data("mtcars")
  mt <- mtcars[1:5, 1:5]
  mt_tposed <- tpose(mt)
  expect_identical(rownames(mt), colnames(mt_tposed))
  expect_identical(colnames(mt), rownames(mt_tposed))
  expect_identical(mt, tpose(tpose(mt)))
})
