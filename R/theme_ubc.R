#' University of British Columbia Plotting Theme
#'
#' @param colour_use either 'fill' or 'color' depending on how the colour will be displayed.
#' @param colour_palette either 'vibrant', 'cool' or 'awards' depending on the use of the visualization.
#' 
#' @description: theme_UBC() creates a theme using the University of British Columbia visual identity
#' to be used with ggplot2. See UBC Visual identity at https://brand.ubc.ca/guidelines/downloads/ubc-colour-and-fonts/
#' 
#' @usage: ggplot(data, aes(variable x, variable y, colour = class)) + theme_UBC('colour', 'vibrant')
#'
#' @return reformatted plot for with UBC visual identity theme. 
#' @export
#'
#' @examples
#' 
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, fill = as.factor(department))) 
#'      + geom_bar(stat = 'identity') 
#'      + theme_UBC(colour_type = 'fill', colour_palette = 'vibrant'}
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, colour = as.factor(department))) 
#'      + geom_bar(stat = 'identity')  
#'      + theme_UBC(colour_type = 'colour', colour_palette = 'vibrant')}
theme_ubc <- function() {

}
