test_that("Test all over empty vector and single values", {
  expect_true(cumulative_all(c()) == recursive_all(c()))
  expect_true(cumulative_all(TRUE) == lest::cumall(TRUE))
  expect_true(cumulative_all(FALSE) == lest::cumall(FALSE))
})

set.seed(1)
rand <- runif(10) > .5
test_that("Test all over vectors.", {
  expect_true(all(cumulative_all(rep(TRUE, 10)) == lest::cumall(rep(TRUE, 10))))
  expect_true(all(
    cumulative_all(rep(FALSE, 10)) == lest::cumall(rep(FALSE, 10))
  ))
  expect_true(all(cumulative_all(rand) == lest::cumall(rand)))
})

test_that("Test any over empty vector and single values", {
  expect_true(cumulative_any(c()) == recursive_any(c()))
  expect_true(cumulative_any(TRUE) == lest::cumany(TRUE))
  expect_true(cumulative_any(FALSE) == lest::cumany(FALSE))
})

test_that("Test any over vectors.", {
  expect_true(all(cumulative_any(rep(TRUE, 10)) == lest::cumany(rep(TRUE, 10))))
  expect_true(all(
    cumulative_any(rep(FALSE, 10)) == lest::cumany(rep(FALSE, 10))
  ))
  expect_true(all(cumulative_any(rand) == lest::cumany(rand)))
})
rm(rand)
