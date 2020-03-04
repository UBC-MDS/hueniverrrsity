#' McGill University Plotting Theme
#'
#' @param colour_use either 'fill' or 'colour' depending on how the colour will be displayed.
#'
#' @description: theme_mcgill() creates a theme using the McGill University's visual identity
#' to be used with ggplot2. See the visual identity at https://www.mcgill.ca/visual-identity/visual-identity-guide
#'
#' @usage: ggplot(data, aes(x, y, colour = class)) + theme_mcgill('colour')
#'
#' @return reformatted plot with McGill University's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{ggplot(iris, aes(Sepal.Length, Sepal.Width, fill = as.factor(Species))) + geom_boxplot() + theme_mcgill('fill')}
#'
#' \dontrun{ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = as.factor(Species))) + geom_point() + theme_mcgill('colour')}
theme_mcgill <- function(colour_use) {

}
