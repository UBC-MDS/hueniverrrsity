require(testthat)
require(ggplot2)

test_that("Test theme_ubc", {

	palette <- c('#002145', '#0055B7', '#00A7E1', '#40B4E5', '#6EC4E8', '#97D4E9')

	# Testing colour_use
	temp <- theme_ubc('colour')
	expect_equal(temp$palette(0), palette)
	expect_equal(temp$aesthetics, 'colour')

	temp <- theme_ubc('fill')
	expect_equal(temp$palette(0), palette)
	expect_equal(temp$aesthetics, 'fill')

	th <- theme_get()

	# Testing that that the current theme is a ggplot2 theme object
	expect_equal(sum(class(th) == c("theme", "gg")), 2)

	# Testing font sizes for title, x-axis, y-axis, and legend
	expect_equal(th$axis.title.x$size, 12)
	expect_equal(th$axis.title.y$size, 12)

	expect_equal(th$axis.text.x$size, 11)
	expect_equal(th$axis.text.y$size, 11)

	expect_equal(th$legend.text$size, 11)
	expect_equal(th$legend.title$size, 12)

	expect_equal(th$plot.title$size, 14)

	# Checking that the correct error message is displayed
	expect_error(temp <- theme_ubc('color'), "colour_use should be either 'fill' or 'colour'")

})
