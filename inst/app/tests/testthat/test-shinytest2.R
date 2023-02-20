library(shinytest2)

test_that("{shinytest2} recording: app", {
  app <- AppDriver$new(name = "app", height = 581, width = 960)
  app$set_inputs(month = "February")
  app$expect_values()
})
