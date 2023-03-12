#' Calculate Baker's Percentage
#'
#' Calculates the baker's percentage of ingredients in a given data frame for a
#' recipe.
#'
#' @param .df A data frame containing the ingredients, their unit, and the
#'   weight
#'
#' @return A data frame with the ingredients, their weight, and the baker's
#'   percentage
#'
#' @export
#'
#' @examples
#' recipe <- data.frame(ingredient = c("flour", "water", "salt"),
#'                  unit = c("grams", "grams", "grams"),
#'                  weight = c(100, 60, 2))
#'
#' calculate_bakers_percentage(recipe)
calculate_bakers_percentage <- function(.df) {
  sums <- .df |>
    dplyr::group_by(ingredient) |>
    dplyr::filter(unit == "grams") |>
    dplyr::summarise(weight = sum(weight), .groups = "drop")

  flour_total <- sums |>
    dplyr::filter(stringr::str_detect(ingredient, "flour")) |>
    dplyr::pull(weight) |>
    sum()

  sums |>
    dplyr::mutate(bakers_percent = weight / flour_total)
}

