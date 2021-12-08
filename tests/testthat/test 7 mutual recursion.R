evenInts <- seq(2L, 200L, 2L)
oddInts <- evenInts - 1L

test_that("Test is.even", {
  expect_true(all(functionalPlayground:::map(evenInts, is.even)))
  expect_false(any(functionalPlayground:::map(oddInts, is.even)))
})

test_that("Test is.odd", {
  expect_true(all(functionalPlayground:::map(oddInts, is.odd)))
  expect_false(any(functionalPlayground:::map(evenInts, is.odd)))
})
