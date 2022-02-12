always_true <- function(...) {
  return(TRUE)
}
test_that("Test negate using always_true", {
  expect_true(is.function(negate(always_true)))
  expect_false(negate(always_true)(TRUE))
  expect_false(negate(always_true)(FALSE))
})

always_false <- function(...) {
  return(FALSE)
}
test_that("Test negate using always_true", {
  expect_true(is.function(negate(always_false)))
  expect_true(negate(always_false)(TRUE))
  expect_true(negate(always_false)(FALSE))
})

test_that("Test recursive_filter", {
  expect_true(all(recursive_filter(always_true, 1:10) == 1:10))
  expect_true(all(recursive_filter(is_even, 1:10) == seq(2, 10, 2)))
  expect_true(all(recursive_filter(is_odd, 1:10) == seq(1, 9, 2)))
})

test_that("Test first", {
  expect_true(first(always_true, 1:10) == 1)
  expect_true(first(is_even, 1:10) == 2)
  expect_true(first(is_odd, 1:10) == 1)
})

test_that("Test last", {
  expect_true(last(always_true, 1:10) == 10)
  expect_true(last(is_even, 1:10) == 10)
  expect_true(last(is_odd, 1:10) == 9)
})

test_that("Test nth", {
  expect_true(nth(is_even, 1:10, 1) == 2)
  expect_true(nth(is_even, 1:10, 2) == 4)
  expect_true(nth(is_odd, 1:10, 5) == 9)
})
rm(always_true)

test_that("Test compose", {
  expect_true(is.function(compose(sum, is_even)))
  expect_true(compose(sum, is_even)(1:10) == 5)
  expect_true(compose(sum, is_odd)(1:10) == 5)
})
