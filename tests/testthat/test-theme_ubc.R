test_that("Testing", {

	# TODO: Here the actual function `theme_ubc()` will come
	th <- theme_bw() + theme(text = element_text(family="sans", size=12), 
		axis.title.x = element_text(size=13), 
		axis.title.y = element_text(size=14), 
		axis.text.x = element_text(size=15), 
		axis.text.y = element_text(size=16), 
		legend.text = element_text(size=17), 
		legend.title = element_text(size=18),
		plot.title = element_text(size=19),
		plot.caption = element_text(size=20))

	# testing theme is a theme object
	expect_equal(sum(class(th)==c("theme", "gg")), 2)

	# testing 
	expect_equal(th$text$size, 12)
	expect_equal(th$axis.title.x$size, 13)
	expect_equal(th$axis.title.y$size, 14)

	expect_equal(th$axis.text.x$size, 15)
	expect_equal(th$axis.text.y$size, 16)

	expect_equal(th$legend.text$size, 17)
	expect_equal(th$legend.title$size, 18)

	expect_equal(th$plot.title$size, 19)
	expect_equal(th$plot.caption$size, 20)

	# testing the UBC font ("sans") because text does it all
	expect_equal(th$text$family, "sans")

	# TODO: colour testing need to add

})
