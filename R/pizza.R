#' Create a recipe for New York-style pizza dough
#'
#' This function creates a recipe for New York-style pizza dough.
#'
#' @param pizzas The number of pizzas to make. Default is 2.
#' @return A tibble with ingredients, weights, and units.
#' @export
#' @examples
#' new_york_pizza_dough()
#' new_york_pizza_dough(pizzas = 4)
new_york_pizza_dough <- function(pizzas = 2) {
  # zingerman's recipe for 2 pizzas
  tibble::tribble(
    ~ingredient, ~ weight, ~ unit, ~ component,
    "water", 225, "grams", "dough",
    "instant yeast", 0.5, "tsp", "dough",
    "all-purpose flour", 345, "grams", "dough",
    "sea salt", 1, "tsp", "dough"
  ) |>
    divide_numbers_by(2) |>
    multiply_numbers_by(pizzas)
}
