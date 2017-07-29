library(testthat)
library(shinytest)

test_that("Applications work", {
  # Use compareImages=FALSE because the expected image screenshots were created
  # on a Mac, and they will differ from screenshots taken on the CI platform,
  # which runs on Linux.
  expect_pass(testApp("01_hello", compareImages = FALSE))
  expect_pass(testApp("06_tabsets", compareImages = FALSE))
})