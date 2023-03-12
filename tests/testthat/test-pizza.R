test_that("the function returns a tibble with the correct pizza ingredients", {
  expect_equal(new_york_pizza_dough() %>% nrow(), 4)
  expect_equal(
    new_york_pizza_dough(),
    tibble::tribble(
      ~ingredient, ~ weight, ~ unit, ~ component,
      "water", 225, "grams", "dough",
      "instant yeast", 0.5, "tsp", "dough",
      "all-purpose flour", 345, "grams", "dough",
      "sea salt", 1, "tsp", "dough"
    )
  )
})
