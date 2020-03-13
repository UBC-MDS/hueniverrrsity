require(testthat)
require(ggplot2)

test_that("Test theme_toronto", {

  vibrant <- c('#002A5C', '#FFE498', '#008BB0', '#E31837')
  cool <- c('#002A5C', '#7BA4D9', '#008BB0', '#DAE5CD')
  awards <- c('#002A5C', '#FFE498', '#CECFCB', '#271100')

  # Testing all combinations of colour_use & colour_palette
  temp <- theme_toronto('colour', 'vibrant')
  expect_equal(temp$palette(0), vibrant)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_toronto('fill', 'vibrant')
  expect_equal(temp$palette(0), vibrant)
  expect_equal(temp$aesthetics, 'fill')

  temp <- theme_toronto('colour', 'cool')
  expect_equal(temp$palette(0), cool)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_toronto('fill', 'cool')
  expect_equal(temp$palette(0), cool)
  expect_equal(temp$aesthetics, 'fill')

  temp <- theme_toronto('colour', 'awards')
  expect_equal(temp$palette(0), awards)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_toronto('fill', 'awards')
  expect_equal(temp$palette(0), awards)
  expect_equal(temp$aesthetics, 'fill')

  current_theme <- theme_get()

  # Testing that the current theme is a ggplot2 theme object
  expect_equal(sum(class(current_theme) == c("theme", "gg")), 2)

  # Testing font sizes for title, x-axis, y-axis, and legend
  expect_equal(current_theme$axis.title.x$size, 12)
  expect_equal(current_theme$axis.title.y$size, 12)

  expect_equal(current_theme$axis.text.x$size, 11)
  expect_equal(current_theme$axis.text.y$size, 11)

  expect_equal(current_theme$legend.title$size, 12)
  expect_equal(current_theme$legend.text$size, 11)

  expect_equal(current_theme$plot.title$size, 14)

  # Checking that the correct error messages are displayed
  expect_error(temp <- theme_toronto('colour', 'random'), "colour_palette should be one of 'vibrant', 'cool', or 'awards'")
  expect_error(temp <- theme_toronto('color', 'awards'), "colour_use should be either 'fill' or 'colour'")


})
