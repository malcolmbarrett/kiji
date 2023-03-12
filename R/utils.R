divide_numbers_by <- function(.df, n) {
  dplyr::mutate(
    .df,
    dplyr::across(dplyr::where(is.numeric), ~ . / n)
  )
}

multiply_numbers_by <- function(.df, n) {
  dplyr::mutate(
    .df,
    dplyr::across(dplyr::where(is.numeric), ~ . * n)
  )
}

standardize_ingredients_to <- function(.df, base_n, new_n) {
  .df |>
    divide_numbers_by(base_n) |>
    multiply_numbers_by(new_n)
}
