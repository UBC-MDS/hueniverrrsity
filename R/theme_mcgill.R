#' Mcgill University Plotting Theme
#'
#' @param colour_use either 'fill' or 'colour' depending on how the colour will be displayed.
#'
#' @description: theme_mcgill() creates a theme using the Mcgill University's  visual identity
#' to be used with ggplot2. See the visual identity at https://www.mcgill.ca/visual-identity/visual-identity-guide
#'
#' @usage: ggplot(data, aes(x, y, colour = class)) + theme_mcgill('colour')
#'
#' @return reformatted plot with Mcgill University's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, fill = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_mcgill(colour_use = 'fill')}
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, colour = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_mcgill(colour_use = 'colour')}
theme_ubc <- function(colour_use) {
  
}