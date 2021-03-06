% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg-plots.R
\name{ggally_cor}
\alias{ggally_cor}
\title{Correlation from the Scatter Plot}
\usage{
ggally_cor(
  data,
  mapping,
  alignPercent = 0.6,
  method = "pearson",
  use = "complete.obs",
  corAlignPercent = NULL,
  corMethod = NULL,
  corUse = NULL,
  displayGrid = TRUE,
  ...
)
}
\arguments{
\item{data}{data set using}

\item{mapping}{aesthetics being used}

\item{alignPercent}{right align position of numbers. Default is 60 percent across the horizontal}

\item{method}{\code{method} supplied to cor function}

\item{use}{\code{use} supplied to cor function}

\item{corAlignPercent}{deprecated. Use parameter \code{alignPercent}}

\item{corMethod}{deprecated. Use parameter \code{method}}

\item{corUse}{deprecated. Use parameter \code{use}}

\item{displayGrid}{if TRUE, display aligned panel gridlines}

\item{...}{other arguments being supplied to geom_text}
}
\description{
Estimate correlation from the given data.
}
\examples{
 data(tips, package = "reshape")
 ggally_cor(tips, mapping = ggplot2::aes_string(x = "total_bill", y = "tip"))
 # display with no grid
 ggally_cor(
   tips,
   mapping = ggplot2::aes_string(x = "total_bill", y = "tip"),
   displayGrid = FALSE
 )
 # change text attributes
 ggally_cor(
   tips,
   mapping = ggplot2::aes(x = total_bill, y = tip),
   size = 15,
   colour = I("red")
 )
 # split by a variable
 ggally_cor(
   tips,
   mapping = ggplot2::aes_string(x = "total_bill", y = "tip", color = "sex"),
   size = 5
 )
}
\author{
Barret Schloerke \email{schloerke@gmail.com}
}
\keyword{hplot}
