evenInts <- seq(2L, 200L, 2L)
oddInts <- evenInts - 1L

test_that("Test is.even", {
  expect_true(all(is_even(evenInts)))
  expect_false(any(is_even(oddInts)))
})

test_that("Test is.odd", {
  expect_true(all(is_odd(oddInts)))
  expect_false(any(is_odd(evenInts)))
})

wiki <- c(1, 1, 2, 2, 3, 3, 4, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10, 11, 11, 12, 13)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq_along(1:(length(wiki)))) {
  temp[i] <- hofstadter_female(i - 1)
}
test_that("Test hofstadter_female", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)

wiki <- c(0, 0, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 7, 8, 9, 9, 10, 11, 11, 12, 12)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq_along(1:(length(wiki)))) {
  temp[i] <- hofstadter_male(i - 1)
}
test_that("Test hofstadter_male", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)
