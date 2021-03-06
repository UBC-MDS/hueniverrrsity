% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_mcgill.R
\name{theme_mcgill}
\alias{theme_mcgill}
\title{McGill University ggplot2 theme}
\usage{
theme_mcgill(colour_use)
}
\arguments{
\item{colour_use}{either 'fill' or 'colour' depending on the base plot.}
}
\value{
Reformatted ggplot with McGill University's visual identity theme.
}
\description{
theme_mcgill() creates a theme using the McGill University's visual identity
to be used with ggplot2. See the visual identity at https://www.mcgill.ca/visual-identity/visual-identity-guide
}
\examples{

\dontrun{
ggplot(data = mtcars, aes(x = hp, y = mpg, colour = as.factor(cyl))) +
geom_point(size = 2.5) +
theme_mcgill('colour')
}

\dontrun{
ggplot(data = mtcars, aes(x = hp, fill = as.factor(cyl))) +
geom_density(alpha = 0.8) +
theme_mcgill('fill')
}
}
