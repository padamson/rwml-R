# R code to accompany Real-World Machine Learning

Provides R code to accompany the book "Real-World Machine Learning" as
described in [my original blog post about this project](http://padamson.github.io/r/machine%20learning/ggplot2/dplyr/tidyr/2016/10/01/real-world-machine-learning-with-R-intro.html). Check out the [rwml-R project page][rwml-R].

[rwml-R]:       https://padamson.github.io/rwml-R

## Reproducible R package management with `renv`

The [renv](https://rstudio.github.io/renv/) package is used to manage a **r**eproducible **env**ironment of R packages.

## Tidyverse workflow

The [`tidyverse`](https://www.tidyverse.org) collection of packages is used for (``a coherent system of packages for data manipulation, exploration and visualization that share a common design philosophy'')[https://rviews.rstudio.com/2017/06/08/what-is-the-tidyverse/]. The main exception to this philosophy is the use of [data.table](https://github.com/Rdatatable/data.table) for larger data (> 2 Gb).

## Quarto publishing system

[Quarto](https://quarto.org) is used for document authoring and publishing.