theme_toronto <- function(colour_use, colour_palette){
#' @param colour_use either 'fill' or 'color' depending on how the colour will be displayed.
#' @param colour_palette either 'vibrant' or 'cool' or 'awards' depending on the use of the visualization. 
#'
#' @description: theme_toronto() creates a theme using the University of Toronto visual identity
#' to be used with ggplot2
#'
#' @usage: ggplot(data, aes(variable x, variable y, colour = class))  + theme_toronto('colour', 'vibrant')
#'
#' @details: Create your plot via ggplot2 and apply our theme to produce different type of U of T visual identity plots 
#' @export
#' @examples
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, fill = as.factor(department))) 
#'      + geom_bar(stat = 'identity') 
#'      + theme_toronto(colour_type = 'fill', colour_palette = 'vibrant'}
#'
#' \dontrun{ggplot(students_admissions, aes(x = high_gpa, y = department, colour = as.factor(department))) 
#'      + geom_bar(stat = 'identity')  
#'      + theme_toronto(colour_type = 'colour', colour_palette = 'vibrant')}
#'
#'
#' @return reformatted plot for with U of T visual identity theme. 
}