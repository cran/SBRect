\name{computeRectangles}
\alias{computeRectangles}
\title{Structural break detection with rectangles}
\description{Find structural breaks by fitting it rectangles to a time series. The algorithm
is randomised; it uses a genetic algorithms. Therefore, the break point sequence found can 
be different in different executions of the method on the same data, 
especially when used on longer
series of some 	thousand observations.}
\usage{
computeRectangles(series,alpha)
}
\arguments{
\item{series}{The time series as a vector of doubles. }
\item{alpha}{ A double in the range[0.0;1.0]. Values close to 0 result in more breakpoints, values close
to 1 in fewer. With no background knowledge, alpha = 0.25 is a good start value for experiments. }
}
\value{
The rectangles found by the algorithm as a \eqn{k \times 4} matrix of doubles.
Each row is of length 4, describing
one rectangle, \eqn{R_i =[llx,lly,urx,ury]}, where \eqn{(llx,lly)} is the lower left corner of the rectangle
and \eqn{(urx,ury)} is the upper right corner.}
\author{Paul Fischer and Astrid Hilbert}
\examples{
series <- c(1,2,1,2,1,2,5,6,5,6,5,6)
alpha <- 0.25
rects <- computeRectangles(series,alpha)
rects
}
\keyword{break points}
