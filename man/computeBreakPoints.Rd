\name{computeBreakPoints}
\alias{computeBreakPoints}
\title{Structural break detection with rectangles}
\description{Find structural breaks by fitting it rectangles to a time series. The algorithm
is randomised; it uses a genetic algorithm. Therefore, the break point sequence found can 
be different in different executions of the method on the same data, 
especially when used on longer
series of some thousand observations.}
\usage{
computeBreakPoints(series,alpha)
}
\arguments{
\item{series}{The time series as a vector of doubles. }
\item{alpha}{ A double in the range \eqn{[0.0;1.0]}. Values close to 0 result in more breakpoints, values close
to 1 in fewer. With no background knowledge, \eqn{alpha = 0.25} is a good start value for experiments. }
}
\value{
The break points found as a vector of integers. The first entry always is 0 (the first
index of the series) the last one is the length of the series (note, indexing starts with 0). The other
entries are the indices of the internal break points. 
}
\author{Paul Fischer and Astrid Hilbert}
\examples{
series <- c(1,2,1,2,1,2,5,6,5,6,5,6)
alpha <- 0.25
breaks <- computeBreakPoints(series,alpha)
breaks
}
\keyword{break points}
