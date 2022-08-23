# R code to accompany Real-World Machine Learning

This project provides R code to accompany the book "Real-World Machine Learning" as
described in [my original blog post about this project](http://padamson.github.io/r/machine%20learning/ggplot2/dplyr/tidyr/2016/10/01/real-world-machine-learning-with-R-intro.html). 
It is meant to be a supplement to (*not* a replacement of) the book for those who wish to learn how to implement the code listings and generate the figures using the R programming language (instead of Python).
Check out the [rwml-R project page][rwml-R] for HTML renderings of the markdown files. 

[rwml-R]:       https://padamson.github.io/rwml-R

## Reproducible R package management with `renv`

The [renv](https://rstudio.github.io/renv/) package is used to manage a **r**eproducible **env**ironment of R packages.

## Tidyverse workflow

The [`tidyverse`](https://www.tidyverse.org) collection of packages is used for ["a coherent system of packages for data manipulation, exploration and visualization that share a common design philosophy"](https://rviews.rstudio.com/2017/06/08/what-is-the-tidyverse/). The main exceptions to this philosophy are the use of [data.table](https://github.com/Rdatatable/data.table) for larger data (> 2 Gb), ["Visualizing Categorical Data" (`vcd`)](https://cran.r-project.org/web/packages/vcd/vcd.pdf) 
for exploring categorical data (including mosaic plots), and [`gridExtra`](https://cran.r-project.org/package=gridExtra)
for combining and organizing plots.

## Quarto publishing system

[Quarto](https://quarto.org) is used for document authoring and publishing.

## Executing code cells in interactive mode

Assuming your development environment is configured correctly with `renv` and `Quarto` installed, and you have downloaded any proprietary data that is required, the markdown files should render as-is. If you want to run the code in interactive mode, you will need to update the `project_dir` variable in the first code cell of each markdown document.