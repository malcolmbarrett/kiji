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
