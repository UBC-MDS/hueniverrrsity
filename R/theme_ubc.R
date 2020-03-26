#' The University of British Columbia ggplot2 theme
#'
#' @param colour_use either 'fill' or 'colour' depending on the base plot.
#'
#' @description theme_ubc() creates a theme using the University of British Columbia's visual identity
#' to be used with ggplot2. See the visual identity at https://brand.ubc.ca/guidelines/downloads/ubc-colour-and-fonts/
#'
#' @return Reformatted ggplot with the University of British Columbia's visual identity theme.
#' @export
#'
#' @examples
#'
#' \dontrun{
#' ggplot(data = mtcars, aes(x = hp, y = mpg, colour = as.factor(cyl))) +
#' geom_point(size = 2.5) +
#' theme_ubc('colour')
#' }
#'
#' \dontrun{
#' ggplot(data = mtcars, aes(x = hp, fill = as.factor(cyl))) +
#' geom_density(alpha = 0.8) +
#' theme_ubc('fill')
#' }
theme_ubc <- function(colour_use) {

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
  palette <- c('#002145', '#0055B7', '#00A7E1', '#40B4E5', '#6EC4E8', '#97D4E9')

  if (colour_use %in% c('fill', 'colour')) {
    ggplot2::scale_discrete_manual(values = palette, aesthetics = colour_use)
  } else
    stop("colour_use should be either 'fill' or 'colour'")
}
