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

test_that("Test length", {
  expect_true(recursive_length(1) == 1)
  expect_true(recursive_length(1:10) == 10)
})

test_that("Test sort", {
  expect_true(recursive_sort(1) == 1)
  expect_true(all(recursive_sort(10:1) == 1:10))
  expect_true(all(recursive_sort(1:10, TRUE) == 10:1))
})

wiki <- c(0, 1, 1, 2, 3, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 9, 10, 11, 11, 12, 12)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq_along(1:(length(wiki)))) {
  temp[i] <- hofstadter_g(i - 1)
}
test_that("Test hofstadter_g", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)

wiki <- c(0, 1, 1, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 9, 10, 10, 11, 12, 13, 13, 14)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq_along(1:(length(wiki)))) {
  temp[i] <- hofstadter_h(i - 1)
}
test_that("Test hofstadter_h", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)

wiki <- c(1, 1, 2, 3, 3, 4, 5, 5, 6, 6, 6, 8, 8, 8, 10, 9, 10, 11, 11, 12)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq_along(1:(length(wiki)))) {
  temp[i] <- hofstadter_q(i)
}
test_that("Test hofstadter_q", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)
