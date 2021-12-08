always_true <- function(...) {
  return(TRUE)
}
test_that("Test using always_true", {
  expect_true(is.function(negate(always_true)))
  expect_false(negate(always_true)(TRUE))
  expect_false(negate(always_true)(FALSE))
})
rm(always_true)

always_false <- function(...) {
  return(FALSE)
}
test_that("Test using always_true", {
  expect_true(is.function(negate(always_false)))
  expect_true(negate(always_false)(TRUE))
  expect_true(negate(always_false)(FALSE))
})
rm(always_false)
