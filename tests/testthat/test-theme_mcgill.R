require(testthat)
require(ggplot2)

test_that("Test theme_mcgill", {

  palette <- c('#ED1B2F','#FFD794','#B5E1E1','#C8EAF5','#D5E6A8')

  # Testing colour_use & colour_palette
  temp <- theme_mcgill('colour')
  expect_equal(temp$palette(0), palette)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_mcgill('fill')
  expect_equal(temp$palette(0), palette)
  expect_equal(temp$aesthetics, 'fill')

  th <- theme_get()

  # Testing theme is a theme object
  expect_equal(sum(class(th)==c("theme", "gg")), 2)

  # Testing font size
  expect_equal(th$axis.title.x$size, 12)
  expect_equal(th$axis.title.y$size, 12)

  expect_equal(th$axis.text.x$size, 11)
  expect_equal(th$axis.text.y$size, 11)

  expect_equal(th$legend.text$size, 11)
  expect_equal(th$legend.title$size, 12)

  expect_equal(th$plot.title$size, 14)

  # Checking correct error message is displayed
  expect_error(temp <- theme_mcgill('color'), "colour_use should be either 'fill' or 'colour'")


})


