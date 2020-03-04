require(testthat)
require(ggplot2)

test_that("Testing", {

	alpha <- c('#007C41', '#FFDB05', '#7D9AAA', '#A8B400', '#A79E70')
	beta <- c('#007C41', '#FFDB05', '#7CA295', '#E0D760', '#C7D28A')
	gamma <- c('#007C41', '#FFDB05', '#3CB6CE', '#A3A86B', '#7AB800')
	delta <- c('#007C41', '#FFDB05', '#D4BA00', '#6773B6', '#2A6EBB')

	# Testing colour use & colour palette
	temp <- theme_ubc('colour', 'alpha')
	expect_equal(temp$palette(0), alpha)
	expect_equal(temp$aesthetics, 'colour')
	
	temp <- theme_ubc('fill', 'beta')
	expect_equal(temp$palette(0), beta)
	expect_equal(temp$aesthetics, 'fill')

	temp <- theme_ubc('colour', 'gamma')
	expect_equal(temp$palette(0), gamma)
	expect_equal(temp$aesthetics, 'colour')

	temp <- theme_ubc('fill', 'delta')
	expect_equal(temp$palette(0), delta)
	expect_equal(temp$aesthetics, 'fill')

	th <- theme_get()

	# testing theme is a theme object
	expect_equal(sum(class(th)==c("theme", "gg")), 2)

	# testing font size
	expect_equal(th$axis.title.x$size, 12)
	expect_equal(th$axis.title.y$size, 12)

	expect_equal(th$axis.text.x$size, 11)
	expect_equal(th$axis.text.y$size, 11)

	expect_equal(th$legend.text$size, 11)
	expect_equal(th$legend.title$size, 12)

	expect_equal(th$plot.title$size, 14)

})
