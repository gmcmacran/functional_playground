always_true <- function(...) {
  return(TRUE)
}
test_that("Test negate using always_true", {
  expect_true(is.function(negate(always_true)))
  expect_false(negate(always_true)(TRUE))
  expect_false(negate(always_true)(FALSE))
})
rm(always_true)

always_false <- function(...) {
  return(FALSE)
}
test_that("Test negate using always_true", {
  expect_true(is.function(negate(always_false)))
  expect_true(negate(always_false)(TRUE))
  expect_true(negate(always_false)(FALSE))
})
rm(always_false)

# Define each here w/o negate to avoid testing dependency.
always_true <- function(...) {
  return(TRUE)
}
always_false <- function(...) {
  return(FALSE)
}
test_that("Test recursive_filter", {
  expect_true(all(recursive_filter(always_true, 1:10) == 1:10))
  expect_true(all(recursive_filter(always_false, 1:10) == vector(mode = "numeric")))
})
rm(always_true, always_false)
