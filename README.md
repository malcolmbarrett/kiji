
<!-- README.md is generated from README.Rmd. Please edit that file -->

# kiji

<!-- badges: start -->
<!-- badges: end -->

The goal of kiji is to calculate ingredients for various doughs that I
like.

## Installation

You can install the development version of kiji from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("malcolmbarrett/kiji")
```

## Calculating ingredients

``` r
library(kiji)
new_york_pizza_dough(pizzas = 4)
#> # A tibble: 4 × 4
#>   ingredient        weight unit  component
#>   <chr>              <dbl> <chr> <chr>    
#> 1 water                450 grams dough    
#> 2 instant yeast          1 tsp   dough    
#> 3 all-purpose flour    690 grams dough    
#> 4 sea salt               2 tsp   dough
```

kiji also calculates baker’s percentages.

``` r
new_york_pizza_dough() |> 
  calculate_bakers_percentage()
#> # A tibble: 2 × 3
#>   ingredient        weight bakers_percent
#>   <chr>              <dbl>          <dbl>
#> 1 all-purpose flour    345          1    
#> 2 water                225          0.652
```
