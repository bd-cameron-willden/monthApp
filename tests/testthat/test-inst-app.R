## setting up auto-testing within a package
# ref: https://cran.r-project.org/web/packages/shinytest2/vignettes/use-package.html

library(shinytest2)

test_that("monthApp works", {

  appdir <- system.file(package = "monthApp", "app")
  test_app(appdir)
})
