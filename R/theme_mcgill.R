#' McGill University ggplot2 theme
#'
#' @param colour_use either 'fill' or 'colour' depending on the base plot.
#'
#' @description theme_mcgill() creates a theme using the McGill University's visual identity
#' to be used with ggplot2. See the visual identity at https://www.mcgill.ca/visual-identity/visual-identity-guide
#'
#' @return reformatted plot with McGill University's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{
#' ggplot(data = mtcars, aes(x = hp, y = mpg, colour = as.factor(cyl))) +
#' geom_point(size = 2.5) +
#' theme_mcgill('colour')
#' }
#'
#' \dontrun{
#' ggplot(data = mtcars, aes(x = hp, fill = as.factor(cyl))) +
#' geom_density(alpha = 0.8) +
#' theme_mcgill('fill')
#' }
theme_mcgill <- function(colour_use) {

  new <- ggplot2::theme_bw() +
    ggplot2::theme(plot.title = ggplot2::element_text(size=14),
          axis.title.x = ggplot2::element_text(size=12),
          axis.text.x = ggplot2::element_text(size=11),
          axis.title.y = ggplot2::element_text(size=12),
          axis.text.y = ggplot2::element_text(size=11),
          legend.title = ggplot2::element_text(size=12),
          legend.text = ggplot2::element_text(size=11))

  ggplot2::theme_set(new)

  # Initialize colour palette
  palette <- c("#ED1B2F","#FFD794","#B5E1E1","#C8EAF5","#D5E6A8")

  if (colour_use %in% c('fill', 'colour')) {
    ggplot2::scale_discrete_manual(values = palette, aesthetics = colour_use)
  } else
    stop("colour_use should be either 'fill' or 'colour'")

}
