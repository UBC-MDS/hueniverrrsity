<<<<<<< HEAD
"""
   @author: Simardep kaur
   Implementation of theme_mcgill in hueniverrrsity
"""

#' Creating visualizations using the colours and fonts of visual identity of McGill University
#'
#' @param colour_type either 'fill' or 'color' depending on how the colour will be displayed
=======
#' McGill University Plotting Theme
#'
#' @param colour_use either 'fill' or 'colour' depending on how the colour will be displayed.
#'
#' @description: theme_ubc() creates a theme using the University of British Columbia's visual identity
#' to be used with ggplot2. See the isual identity at https://brand.ubc.ca/guidelines/downloads/ubc-colour-and-fonts/
>>>>>>> d405162765d3b8e935992ff9761973ce7d01fd34
#'
#' @usage: ggplot(data, aes(x, y, colour = class)) + theme_ubc('colour')
#'
<<<<<<< HEAD
#' @usage: ggplot(data, aes(variable x, variable y, colour = class)) + geom_point() + theme_mcgill(colour_type = 'fill')
theme_mcgill <- function(colour_type){
=======
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
>>>>>>> d405162765d3b8e935992ff9761973ce7d01fd34

}
