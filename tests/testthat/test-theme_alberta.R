require(testthat)
require(ggplot2)

test_that("Test theme_alberta", {

  alpha <- c('#007C41', '#FFDB05', '#7D9AAA', '#A8B400', '#A79E70')
  beta <- c('#007C41', '#FFDB05', '#7CA295', '#E0D760', '#C7D28A')
  gamma <- c('#007C41', '#FFDB05', '#3CB6CE', '#A3A86B', '#7AB800')
  delta <- c('#007C41', '#FFDB05', '#D4BA00', '#6773B6', '#2A6EBB')

  # Testing all combinations of colour_use & colour_palette
  temp <- theme_alberta('colour', 'alpha')
  expect_equal(temp$palette(0), alpha)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_alberta('fill', 'alpha')
  expect_equal(temp$palette(0), alpha)
  expect_equal(temp$aesthetics, 'fill')

  temp <- theme_alberta('colour', 'beta')
  expect_equal(temp$palette(0), beta)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_alberta('fill', 'beta')
  expect_equal(temp$palette(0), beta)
  expect_equal(temp$aesthetics, 'fill')

  temp <- theme_alberta('colour', 'gamma')
  expect_equal(temp$palette(0), gamma)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_alberta('fill', 'gamma')
  expect_equal(temp$palette(0), gamma)
  expect_equal(temp$aesthetics, 'fill')

  temp <- theme_alberta('colour', 'delta')
  expect_equal(temp$palette(0), delta)
  expect_equal(temp$aesthetics, 'colour')

  temp <- theme_alberta('fill', 'delta')
  expect_equal(temp$palette(0), delta)
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
  expect_error(temp <- theme_alberta('colour', 'epsilon'), "colour_palette should be one of 'alpha', 'beta', 'gamma', or 'delta'")
  expect_error(temp <- theme_alberta('color', 'alpha'), "colour_use should be either 'fill' or 'colour'")

})
