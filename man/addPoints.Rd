% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addNonOverlappingTestLabelsOrPoints.R
\name{addPoints}
\alias{addPoints}
\title{Add non-overlapping points to plot}
\usage{
addPoints(xCoords, yCoords, col.line = "black", lty = 1, lwd = 1,
  keepInside = TRUE, cex = 1, avoidFactor = 1, bg = NULL, ...)
}
\arguments{
\item{xCoords}{A vector containing the X coordinates for labels}

\item{yCoords}{A vector containing the Y coordinates for labels}

\item{col.line}{The colour of the line to plot from relocated points to original location. Defaults to "black". Multiple colours can be provided. If more colours than labels provided colours will be recycled.}

\item{lty}{A number detailing the type of line to plot from relocated labels to original location. 0: blank, 1: solid, 2: dashed, 3: dotted, 4: dotdash, 5: longdash, and 6: twodash. Defaults to 1. Multiple line types can be provided. If more options than labels provided types will be recycled.}

\item{lwd}{A number to scale the size of line from relocated labels to original location. Defaults to 1. Multiple line widths can be provided. If more options than labels provided widths will be recycled.}

\item{keepInside}{A logical variable indicating whether the points shouldn't be plotted outside of plotting region. Defaults to TRUE}

\item{cex}{A number used to scale the size of the points plotted. Defaults to 1}

\item{avoidFactor}{A number that increases (values > 1) or decreases (values < 1) the amount of space alloted to each point. Defaults to 1}

\item{bg}{A character string that defines the background colour of our point. Defaults to NULL}

\item{...}{Arguments to be passed to the \code{points()} function}
}
\description{
This function is similar to the \code{points()} function but it will attempt to re-locate points that will overlap
}
\examples{
# Create some random points
n <- 50
coords <- data.frame(X=runif(n), Y=runif(n), Name="Test Label")

# Plot points and allow overlapping
plot(x=coords$X, y=coords$Y, bty="n", xaxt="n", yaxt="n", cex=3, xlab="X", ylab="Y")

# Plot points and avoid overlapping
plot(x=NULL, y=NULL, xlim=range(coords$X), ylim=range(coords$Y), bty="n", xaxt="n", yaxt="n", xlab="X", ylab="Y")
addPoints(coords$X, coords$Y, cex=3, col.line="red")
}
\keyword{plot}
\keyword{points}
\keyword{x}
\keyword{y}
