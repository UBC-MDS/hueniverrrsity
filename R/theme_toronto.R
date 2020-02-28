#' University of Toronto Plotting Theme
#'
#' @param colour_use either 'fill' or 'colour' depending on how the colour will be displayed.
#' @param colour_palette either 'vibrant', 'cool' or 'awards' depending on the use of the visualization.
#'
#' @description: theme_toronto() creates a theme using the University of Toronto visual identity
#' to be used with ggplot2. See the visual identity at https://tinyurl.com/t3jjr49
#'
#' @usage: ggplot(data, aes(x, y, colour = class)) + theme_toronto('colour', 'vibrant')
#'
#' @return reformatted plot with University of Toronto's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, fill = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_toronto(colour_use = 'fill', colour_palette = 'vibrant')}
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, colour = as.factor(department)))
#'      + geom_bar(stat = 'identity')
#'      + theme_toronto(colour_use = 'colour', colour_palette = 'vibrant')}
theme_toronto <- function(colour_use, colour_palette){

}
