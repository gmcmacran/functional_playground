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
for (i in seq(1, length(wiki))) {
  temp[i] <- hofstadter_g(i - 1)
}
test_that("Test hofstadter_g", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)

wiki <- c(0, 1, 1, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 9, 10, 10, 11, 12, 13, 13, 14)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq(1, length(wiki))) {
  temp[i] <- hofstadter_h(i - 1)
}
test_that("Test hofstadter_h", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)

wiki <- c(1, 1, 2, 3, 3, 4, 5, 5, 6, 6, 6, 8, 8, 8, 10, 9, 10, 11, 11, 12)
temp <- vector(mode = "numeric", length = length(wiki))
for (i in seq(1, length(wiki))) {
  temp[i] <- hofstadter_q(i)
}
test_that("Test hofstadter_q", {
  expect_true(all(wiki == temp))
})
rm(temp, wiki)


test_that("Test recursive_gcd", {
  expect_true(recursive_gcd(2L, 4L) == 2L)
  expect_true(recursive_gcd(2L, 6L) == 2L)
  expect_true(recursive_gcd(3L, 4L) == 1L)
  expect_true(recursive_gcd(3L, 6L) == 3L)
  expect_true(recursive_gcd(3L, 9L) == 3L)
  expect_true(recursive_gcd(6L, 9L) == 3L)
  expect_true(recursive_gcd(100L, 1000L) == 100L)
  expect_true(recursive_gcd(3L, 5L) == 1L)
  expect_true(recursive_gcd(7L, 11L) == 1L)
  expect_true(recursive_gcd(2L, 4L) == recursive_gcd(4L, 2L))
  expect_true(recursive_gcd(2L, 6L) == recursive_gcd(6L, 2L))
  expect_true(recursive_gcd(3L, 4L) == recursive_gcd(4L, 3L))
  expect_true(recursive_gcd(3L, 6L) == recursive_gcd(6L, 3L))
  expect_true(recursive_gcd(3L, 9L) == recursive_gcd(9L, 3L))
  expect_true(recursive_gcd(6L, 9L) == recursive_gcd(9L, 6L))
  expect_true(recursive_gcd(100L, 1000L) == recursive_gcd(1000L, 100L))
  expect_true(recursive_gcd(3L, 5L) == recursive_gcd(5L, 3L))
  expect_true(recursive_gcd(7L, 11L) == recursive_gcd(11L, 7L))
})

test_that("Test recursive_lcm", {
  expect_true(recursive_lcm(8L, 10L) == 40L)
  expect_true(recursive_lcm(3L, 4L) == 12L)
  expect_true(recursive_lcm(3L, 6L) == 6)
  expect_true(recursive_lcm(4L, 6L) == 12L)
  expect_true(recursive_lcm(1L, 3L) == 3L)
  expect_true(recursive_lcm(2L, 3L) == 6L)
  expect_true(recursive_lcm(100L, 1000L) == 1000L)
  expect_true(recursive_lcm(3L, 5L) == 15L)
  expect_true(recursive_lcm(7L, 11L) == 77L)
  expect_true(recursive_lcm(8L, 10L) == recursive_lcm(10L, 8L))
  expect_true(recursive_lcm(3L, 4L) == recursive_lcm(4L, 3L))
  expect_true(recursive_lcm(3L, 6L) == recursive_lcm(6L, 3L))
  expect_true(recursive_lcm(4L, 6L) == recursive_lcm(6L, 4L))
  expect_true(recursive_lcm(1L, 3L) == recursive_lcm(3L, 1L))
  expect_true(recursive_lcm(2L, 3L) == recursive_lcm(3L, 2L))
  expect_true(recursive_lcm(100L, 1000L) == recursive_lcm(1000L, 100L))
  expect_true(recursive_lcm(3L, 5L) == recursive_lcm(5L, 3L))
  expect_true(recursive_lcm(7L, 11L) == recursive_lcm(11L, 7L))
})
