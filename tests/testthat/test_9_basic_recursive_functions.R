test_that("Test recursive_reverse", {
  expect_true(all(recursive_reverse(1:10) == 10:1))
  expect_true(all(recursive_reverse(10:1) == 1:10))
  expect_true(recursive_reverse(0) == 0)
  expect_true(all(recursive_reverse(c(0, 0)) == c(0, 0)))
})

test_that("Test ackermann", {
  expect_true(ackermann(0, 0) == 1)
  expect_true(ackermann(0, 1) == 2)
  expect_true(ackermann(0, 2) == 3)
  expect_true(ackermann(1, 0) == 2)
  expect_true(ackermann(1, 1) == 3)
  expect_true(ackermann(1, 2) == 4)
  expect_true(ackermann(2, 0) == 3)
  expect_true(ackermann(2, 1) == 5)
  expect_true(ackermann(2, 2) == 7)
})
