require(testthat)
require(ggplot2)

test_that("Test theme_toronto", {
  
  vibrant <- c('#002A5C', '#FFE498', '#008BB0', '#E31837')
  cool <- c('#002A5C', '#7BA4D9', '#008BB0', '#DAE5CD')
  awards <- c('#002A5C', '#FFE498', '#CECFCB', '#271100')
  
  # testing colour_use & colour_palette
  temp <- theme_toronto('colour', 'vibrant')
  expect_equal(temp$palette(0), vibrant)
  expect_equal(temp$aesthetics, 'colour')
  
  temp <- theme_toronto('fill', 'cool')
  expect_equal(temp$palette(0), cool)
  expect_equal(temp$aesthetics, 'fill')
  
  temp <- theme_toronto('colour', 'awards')
  expect_equal(temp$palette(0), awards)
  expect_equal(temp$aesthetics, 'colour')
  
  current_theme <- theme_get()
  
  # testing current theme is a theme object
  expect_equal(sum(class(current_theme)==c("theme", "gg")), 2)
  
  # testing font size
  expect_equal(current_theme$axis.title.x$size, 12)
  expect_equal(current_theme$axis.title.y$size, 12)
  
  expect_equal(current_theme$axis.text.x$size, 11)
  expect_equal(current_theme$axis.text.y$size, 11)
  
  expect_equal(current_theme$legend.title$size, 12)
  expect_equal(current_theme$legend.text$size, 11)
  
  expect_equal(current_theme$plot.title$size, 14)
  
})
