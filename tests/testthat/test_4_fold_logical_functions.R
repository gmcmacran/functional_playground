test_that("Test all over empty vector and single values", {
  expect_true(recursive_all(c()) == all(c()))
  expect_true(recursive_all(TRUE) == all(TRUE))
  expect_true(recursive_all(FALSE) == all(FALSE))
})

set.seed(1)
rand <- runif(10) > .5
test_that("Test all over vectors.", {
  expect_true(recursive_all(rep(TRUE, 10)) == all(rep(TRUE, 10)))
  expect_true(recursive_all(rep(FALSE, 10)) == all(rep(FALSE, 10)))
  expect_true(recursive_all(rand) == all(rand))
})

test_that("Test any over empty vector and single values", {
  expect_true(recursive_any(c()) == any(c()))
  expect_true(recursive_any(TRUE) == any(TRUE))
  expect_true(recursive_any(FALSE) == any(FALSE))
})

test_that("Test any over vectors.", {
  expect_true(recursive_any(rep(TRUE, 10)) == any(rep(TRUE, 10)))
  expect_true(recursive_any(rep(FALSE, 10)) == any(rep(FALSE, 10)))
  expect_true(recursive_any(rand) == any(rand))
})
rm(rand)

test_that("Test any over vectors.", {
  expect_true(all(recursive_is_in(seq(1, 5, 1), seq(1, 5, 1)) == rep(TRUE, 5)))
  expect_true(all(recursive_is_in(seq(1, 5, 1), c()) == rep(FALSE, 5)))
  expect_true(all(recursive_is_in(seq(1, 5, 1), seq(1, 10, 1)) == rep(TRUE, 5)))
  expect_true(all(recursive_is_in(seq(1, 10, 1), seq(1, 5, 1)) == c(rep(TRUE, 5), rep(FALSE, 5))))
})
