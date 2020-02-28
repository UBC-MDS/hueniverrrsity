#' University of Alberta Plotting Theme
#'
#' @param colour_use either 'fill' or 'colour' depending on how the colour will be displayed.
#' @param colour_palette either 'alpha', 'beta', 'gamma' or 'delta' depending on which palette is selected
#'
#' @description: theme_alberta() creates a theme using the University of Alberta visual identity
#' to be used with ggplot2. See the visual identity at https://www.ualberta.ca/toolkit/visual-identity/our-colours
#'
#' @usage: ggplot(data, aes(x, y, colour = class)) + theme_alberta('colour', 'alpha')
#'
#' @return reformatted plot with University of Alberta's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, fill = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_alberta(colour_use = 'fill', colour_palette = 'alpha')}
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, colour = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_toronto(colour_use = 'colour', colour_palette = 'alpha')}
theme_alberta <- function(colour_use, colour_palette) {

}
