#' University of British Columbia Plotting Theme
#'
#' @param colour_use either 'fill' or 'colour' depending on how the colour will be displayed.
#'
#' @description: theme_ubc() creates a theme using the University of British Columbia's visual identity
#' to be used with ggplot2. See the visual identity at https://brand.ubc.ca/guidelines/downloads/ubc-colour-and-fonts/
#'
#' @usage: ggplot(data, aes(x, y, colour = class)) + theme_ubc('colour')
#'
#' @return reformatted plot with UBC's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, fill = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_ubc(colour_use = 'fill')}
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, colour = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_ubc(colour_use = 'colour')}
theme_ubc <- function(colour_use) {

}
