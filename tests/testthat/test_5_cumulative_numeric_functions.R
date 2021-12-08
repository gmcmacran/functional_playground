test_that("Test add over empty vector and single digits", {
  expect_true(all(cumulative_add(c()) == recursive_add(c())))
  expect_true(all(cumulative_add(0) == cumsum(0)))
  expect_true(all(cumulative_add(1) == cumsum(1)))
  expect_true(all(cumulative_add(-1) == cumsum(-1)))
})

test_that("Test add over positive and negative vectors.", {
  expect_true(all(cumulative_add(1:10) == cumsum(1:10)))
  expect_true(all(cumulative_add(-1:-10) == cumsum(-1:-10)))
  expect_true(all(cumulative_add(-10:10) == cumsum(-10:10)))
})

test_that("Test multiply over empty vector and single digits", {
  expect_true(cumulative_multiply(c()) == recursive_multiply(c()))
  expect_true(cumulative_multiply(0) == cumprod(0))
  expect_true(cumulative_multiply(1) == cumprod(1))
  expect_true(cumulative_multiply(-1) == cumprod(-1))
})

test_that("Test multiply over positive and negative vectors.", {
  expect_true(all(cumulative_multiply(1:10) == cumprod(1:10)))
  expect_true(all(cumulative_multiply(-1:-10) == cumprod(-1:-10)))
  expect_true(all(cumulative_multiply(-10:10) == cumprod(-10:10)))
})

test_that("Test max over empty vector and single digits", {
  expect_true(cumulative_max(c()) == recursive_max(c()))
  expect_true(cumulative_max(0) == cummax(0))
  expect_true(cumulative_max(1) == cummax(1))
  expect_true(cumulative_max(-1) == cummax(-1))
})

test_that("Test max over positive and negative vectors.", {
  expect_true(all(cumulative_max(1:10) == cummax(1:10)))
  expect_true(all(cumulative_max(-1:-10) == cummax(-1:-10)))
  expect_true(all(cumulative_max(-10:10) == cummax(-10:10)))
})

test_that("Test min over empty vector and single digits", {
  expect_true(cumulative_min(c()) == recursive_min(c()))
  expect_true(cumulative_min(0) == cummin(0))
  expect_true(cumulative_min(1) == cummin(1))
  expect_true(cumulative_min(-1) == cummin(-1))
})

test_that("Test min over positive and negative vectors.", {
  expect_true(all(cumulative_min(1:10) == cummin(1:10)))
  expect_true(all(cumulative_min(-1:-10) == cummin(-1:-10)))
  expect_true(all(cumulative_min(-10:10) == cummin(-10:10)))
})
