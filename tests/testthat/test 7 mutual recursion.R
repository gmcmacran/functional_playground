evenInts <- seq(2L, 200L, 2L)
oddInts <- evenInts - 1L

test_that("Test is.even", {
  expect_true(all(is.even(evenInts)))
  expect_false(any(is.even(oddInts)))
})

test_that("Test is.odd", {
  expect_true(all(is.odd(oddInts)))
  expect_false(any(is.odd(evenInts)))
})
