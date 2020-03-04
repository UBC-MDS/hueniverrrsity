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
  new <- theme_bw() +
    theme(plot.title = element_text(size=14),
          axis.title.x = element_text(size=12),
          axis.text.x = element_text(size=11),
          axis.title.y = element_text(size=12),
          axis.text.y = element_text(size=11),
          legend.title = element_text(size=12),
          legend.text = element_text(size=11))
  
  theme_set(new)
  
  # Initialize colour palettes
  vibrant <- c('#002A5C', '#FFE498', '#008BB0', '#E31837')
  
  cool <- c('#002A5C', '#7BA4D9', '#008BB0', '#DAE5CD')
  
  awards <- c('#002A5C', '#FFE498', '#CECFCB', '#271100')
  
  
  if (colour_use %in% c('fill', 'colour')) {
    if (colour_palette == 'vibrant') {
      scale_discrete_manual(values = vibrant, aesthetics = colour_use)
    } else if (colour_palette == 'cool') {
      scale_discrete_manual(values = cool, aesthetics = colour_use)
    } else if (colour_palette == 'awards') {
      scale_discrete_manual(values = awards, aesthetics = colour_use)
    } else {
      stop("colour_palette should be one of 'vibrant', 'cool', or 'awards'")
    }
  } else
    stop("colour_use should be either 'fill' or 'colour'")
}

