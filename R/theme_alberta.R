#' The University of Alberta ggplot2 theme
#'
#' @param colour_use either 'fill' or 'colour' depending on the base plot.
#' @param colour_palette either 'alpha', 'beta', 'gamma' or 'delta' depending on which palette is selected.
#'
#' @description theme_alberta() creates a theme using the University of Alberta visual identity
#' to be used with ggplot2. See the visual identity at https://www.ualberta.ca/toolkit/visual-identity/our-colours
#'
#' @return Reformatted ggplot with the University of Alberta's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{
#' ggplot(data=mtcars, aes(x = hp, y = mpg, colour = as.factor(cyl))) +
#' geom_point(size = 2.5) +
#' theme_alberta('colour', 'beta')
#' }
#'
#' \dontrun{
#' ggplot(data = mtcars, aes(x = hp, fill = as.factor(cyl))) +
#' geom_density(alpha = 0.8) +
#' theme_alberta('fill', 'alpha')
#' }
theme_alberta <- function(colour_use, colour_palette) {

  new <- ggplot2::theme_bw() +
    ggplot2::theme(plot.title = ggplot2::element_text(size=14),
          axis.title.x = ggplot2::element_text(size=12),
          axis.text.x = ggplot2::element_text(size=11),
          axis.title.y = ggplot2::element_text(size=12),
          axis.text.y = ggplot2::element_text(size=11),
          legend.title = ggplot2::element_text(size=12),
          legend.text = ggplot2::element_text(size=11))

  ggplot2::theme_set(new)

  # Initialize colour palettes
  alpha <- c('#007C41', '#FFDB05', '#7D9AAA', '#A8B400', '#A79E70')

  beta <- c('#007C41', '#FFDB05', '#7CA295', '#E0D760', '#C7D28A')

  gamma <- c('#007C41', '#FFDB05', '#3CB6CE', '#A3A86B', '#7AB800')

  delta <- c('#007C41', '#FFDB05', '#D4BA00', '#6773B6', '#2A6EBB')

  if (colour_use %in% c('fill', 'colour')) {
    if (colour_palette == 'alpha') {
      ggplot2::scale_discrete_manual(values = alpha, aesthetics = colour_use)
    } else if (colour_palette == 'beta') {
      ggplot2::scale_discrete_manual(values = beta, aesthetics = colour_use)
    } else if (colour_palette == 'gamma') {
      ggplot2::scale_discrete_manual(values = gamma, aesthetics = colour_use)
    } else if (colour_palette == 'delta') {
      ggplot2::scale_discrete_manual(values = delta, aesthetics = colour_use)
    } else {
      stop("colour_palette should be one of 'alpha', 'beta', 'gamma', or 'delta'")
    }
  } else
    stop("colour_use should be either 'fill' or 'colour'")
}
