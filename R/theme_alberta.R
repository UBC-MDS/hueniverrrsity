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
#' \dontrun{ggplot(iris, aes(Sepal.Length, Sepal.Width, fill = as.factor(Species))) + geom_boxplot() + theme_alberta('fill', 'alpha')}
#'
#' \dontrun{ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = as.factor(Species))) + geom_point() + theme_alberta('colour', 'alpha')}
theme_alberta <- function(colour_use, colour_palette) {

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
  alpha <- c('#007C41', '#FFDB05', '#7D9AAA', '#A8B400', '#A79E70')

  beta <- c('#007C41', '#FFDB05', '#7CA295', '#E0D760', '#C7D28A')

  gamma <- c('#007C41', '#FFDB05', '#3CB6CE', '#A3A86B', '#7AB800')

  delta <- c('#007C41', '#FFDB05', '#D4BA00', '#6773B6', '#2A6EBB')

  if (colour_use %in% c('fill', 'colour')) {
    if (colour_palette == 'alpha') {
      scale_discrete_manual(values = alpha, aesthetics = colour_use)
    } else if (colour_palette == 'beta') {
      scale_discrete_manual(values = beta, aesthetics = colour_use)
    } else if (colour_palette == 'gamma') {
      scale_discrete_manual(values = gamma, aesthetics = colour_use)
    } else if (colour_palette == 'delta') {
      scale_discrete_manual(values = delta, aesthetics = colour_use)
    } else {
      stop("colour_palette should be one of 'alpha', 'beta', 'gamma', or 'delta'")
    }
  } else
    stop("colour_use should be either 'fill' or 'colour'")
}
