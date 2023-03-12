#' Tartine Sourdough
#'
#' Generate ingredient lists for Tartine Country Sourdough and Tartine Sourdough
#' Baguettes.
#'
#' @param loaves Number of loaves of Tartine Country Sourdough
#' @param base_loaves Base number of loaves for Tartine Country Sourdough
#' @param baguettes Number of baguettes of Tartine Sourdough Baguettes
#' @param base_baguettes Base number of baguettes for Tartine Sourdough
#'   Baguettes
#' @return A tibble containing the standardized ingredient list
#' @export
#' @examples
#' country_sourdough()
#' country_sourdough(loaves = 6, base_loaves = 3)
#' sourdough_baguette_dough(baguettes = 4)
country_sourdough <- function(loaves = 2, base_loaves = 2) {
  # basic tartine country sourdough
  tibble::tribble(
    ~ingredient, ~ weight, ~ unit, ~ component,
    "bread flour", 50, "grams", "leaven",
    "whole-wheat flour", 50, "grams", "leaven",
    "water", 100, "grams", "leaven",
    "bread flour", 900, "grams", "dough",
    "whole-wheat flour", 100, "grams", "dough",
    "water", 750, "grams", "dough",
    "sea salt", 20, "grams", "dough"
  ) |>
    standardize_ingredients_to(base_loaves, loaves)
}

#' @rdname country_sourdough
#' @export
sourdough_baguette_dough <- function(baguettes = 8, base_baguettes = 8) {
  # tartine sourdough baguettes
  tibble::tribble(
    ~ingredient, ~ weight, ~ unit, ~ component,
    "all-purpose flour", 200, "grams", "poolish",
    "water", 200, "grams", "poolish",
    "active dry yeast", 3, "grams", "poolish",
    "all-purpose flour", 200, "grams", "leaven",
    "water", 200, "grams", "leaven",
    "bread flour", 350, "grams", "dough",
    "all-purpose flour", 650, "grams", "dough",
    "water", 500, "grams", "dough",
    "sea salt", 24, "grams", "dough"
  ) |>
    standardize_ingredients_to(base_baguettes, baguettes)
}
