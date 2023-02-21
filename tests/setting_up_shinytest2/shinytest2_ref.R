## setting up shinytest2 by recording first test
# https://cran.r-project.org/web/packages/shinytest2/vignettes/shinytest2.html

## need to make/install app as a package first
# else get the error:
#   Error in loadNamespace(x) : there is no package called 'monthApp'
if(FALSE){
  newPackageName <- "monthApp"
  devtools::load_all();	 # per session or if function script changes
  devtools::document();
  setwd("..");
  devtools::build(newPackageName)
  setwd(newPackageName);
  # restart R session
  # install month app package from tarball
}


## record a test
library(shinytest2)
record_test("inst/app/")


## run tests locally
library(shinytest2)
test_app("inst/app/")
