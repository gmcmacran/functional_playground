test_that("Test recursive_reverse", {
  expect_true(all(recursive_reverse(1:10) == 10:1))
  expect_true(all(recursive_reverse(10:1) == 1:10))
  expect_true(recursive_reverse(0) == 0)
  expect_true(all(recursive_reverse(c(0, 0)) == c(0, 0)))
})
