test_that("Test add over empty vector and single digits", {
  expect_true(recursive_add(c()) == sum(c()))
  expect_true(recursive_add(0) == sum(0))
  expect_true(recursive_add(1) == sum(1))
  expect_true(recursive_add(-1) == sum(-1))
})

test_that("Test add over positive and negative vectors.", {
  expect_true(recursive_add(1:10) == sum(1:10))
  expect_true(recursive_add(-1:-10) == sum(-1:-10))
  expect_true(recursive_add(-10:10) == sum(-10:10))
})

test_that("Test multiply over empty vector and single digits", {
  expect_true(recursive_multiply(c()) == prod(c()))
  expect_true(recursive_multiply(0) == prod(0))
  expect_true(recursive_multiply(1) == prod(1))
  expect_true(recursive_multiply(-1) == prod(-1))
})

test_that("Test multiply over positive and negative vectors.", {
  expect_true(recursive_multiply(1:10) == prod(1:10))
  expect_true(recursive_multiply(-1:-10) == prod(-1:-10))
  expect_true(recursive_multiply(-10:10) == prod(-10:10))
})

test_that("Test max over empty vector and single digits", {
  expect_true(recursive_max(c()) == suppressWarnings(max(c())))
  expect_true(recursive_max(0) == max(0))
  expect_true(recursive_max(1) == max(1))
  expect_true(recursive_max(-1) == max(-1))
})

test_that("Test max over positive and negative vectors.", {
  expect_true(recursive_max(1:10) == max(1:10))
  expect_true(recursive_max(-1:-10) == max(-1:-10))
  expect_true(recursive_max(-10:10) == max(-10:10))
})

test_that("Test min over empty vector and single digits", {
  expect_true(recursive_min(c()) == suppressWarnings(min(c())))
  expect_true(recursive_min(0) == min(0))
  expect_true(recursive_min(1) == min(1))
  expect_true(recursive_min(-1) == min(-1))
})

test_that("Test min over positive and negative vectors.", {
  expect_true(recursive_min(1:10) == min(1:10))
  expect_true(recursive_min(-1:-10) == min(-1:-10))
  expect_true(recursive_min(-10:10) == min(-10:10))
})
