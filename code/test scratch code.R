recursive_add(1:500) == sum(1:500)
recursive_add(-1:-500) == sum(-1:-500)

recursive_multiply(1:500) == prod(1:500)

recursive_max(c()) == -Inf
recursive_max(c(1, 2, 3)) == 3
recursive_max(c(-1, -2, -3)) == -1
recursive_max(0) == 0
recursive_max(c(1, 1, 1)) == 1

recursive_min(c()) == Inf
recursive_min(c(1, 2, 3)) == 1
recursive_min(c(-1, -2, -3)) == -3
recursive_min(0) == 0
recursive_min(c(1, 1, 1)) == 1

recursive_all(rep(TRUE, 3)) == all(rep(TRUE, 3))
recursive_all(rep(FALSE, 3)) == all(rep(FALSE, 3))
recursive_all(c(TRUE, FALSE, TRUE)) == all(c(TRUE, FALSE, TRUE))

recursive_any(rep(TRUE, 3)) == any(rep(TRUE, 3))
recursive_any(rep(FALSE, 3)) == any(rep(FALSE, 3))
recursive_any(c(TRUE, FALSE, TRUE)) == any(c(TRUE, FALSE, TRUE))

all(recursive_union(c(1, 2, 3)) == c(1, 2, 3))
all(recursive_union(vector()) == vector())

all(recursive_intersect(c(1, 2, 3)) == vector())
all(recursive_intersect(c(1, 1, 1)) == 1)
all(recursive_intersect(vector()) == vector())

always_true()
always_true(seq(1, 10, 2))
always_true(rep(TRUE, 10))
always_true(rep(FALSE, 10))
set.seed(1)
always_true(ifelse(runif(10) > .5))

always_false() == FALSE
always_false(seq(1, 10, 2))  == FALSE
always_false(rep(TRUE, 10))  == FALSE
always_false(rep(FALSE, 10)) == FALSE
set.seed(1)
always_false(ifelse(runif(10) > .5)) == FALSE

cumulative_add(0) == 0
cumulative_add(1) == 1
all(cumulative_add(seq(1:10)) == cumsum(1:10))
all(cumulative_add(-1:-10) == cumsum(-1:-10))

cumulative_multiply(0) == 0
cumulative_multiply(1) == 1
all(cumulative_multiply(seq(1:10)) == cumprod(1:10))
all(cumulative_multiply(-1:-10) == cumprod(-1:-10))

cumulative_max(0) == 0
cumulative_max(1) == 1
all(cumulative_max(seq(1:10)) == cummax(1:10))
all(cumulative_max(-1:-10) == cummax(-1:-10))

cumulative_min(0) == 0
cumulative_min(1) == 1
all(cumulative_min(seq(1:10)) == cummin(1:10))
all(cumulative_min(-1:-10) == cummin(-1:-10))

cumulative_all(TRUE) == TRUE
cumulative_all(FALSE) == FALSE
all(cumulative_all(rep(TRUE, 3)) == lest::cumall(rep(TRUE, 3)))
all(cumulative_all(rep(FALSE, 3)) == lest::cumall(rep(FALSE, 3)))
all(cumulative_all(c(TRUE, FALSE, TRUE)) == lest::cumall(c(TRUE, FALSE, TRUE)))

cumulative_any(TRUE) == TRUE
cumulative_any(FALSE) == FALSE
all(cumulative_any(rep(TRUE, 3)) == lest::cumany(rep(TRUE, 3)))
all(cumulative_any(rep(FALSE, 3)) == lest::cumany(rep(FALSE, 3)))
all(cumulative_any(c(TRUE, FALSE, TRUE)) == lest::cumany(c(TRUE, FALSE, TRUE)))

