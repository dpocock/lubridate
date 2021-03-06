% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/difftimes.r
\name{make_difftime}
\alias{make_difftime}
\title{Create a difftime object.}
\usage{
make_difftime(num = NULL, units = "auto", ...)
}
\arguments{
\item{num}{Optional number of seconds}

\item{units}{a character vector that lists the type of units to use for the
display of the return value (see examples). If \code{units} is "auto" (the
default) the display units are computed automatically. This might create
undesirable effects when converting \code{difftime} objects to numeric
values in data processing.}

\item{...}{a list of time units to be included in the difftime and their amounts. Seconds, 
minutes, hours, days, and weeks are supported. Normally only one of \code{num} or \code{...} are present. If
both are present, the \code{difftime} objects are concatenated.}
}
\value{
a difftime object
}
\description{
\code{make_difftime} creates a difftime object with the specified number of
units. Entries for different units are cumulative. difftime displays
durations in various units,  but these units are estimates given for
convenience. The underlying object is always recorded as a fixed number of
seconds.
}
\details{
Conceptually, difftime objects are a type of duration. They measure the 
exact passage of time but do not always align with measurements 
made in larger units of time such as hours, months and years. 
This is because the length of larger time units can be affected 
by conventions such as leap years 
and Daylight Savings Time. lubridate provides a second class for measuring durations, the Duration class.
}
\examples{
make_difftime(1)
make_difftime(60)
make_difftime(3600)
make_difftime(3600, units = "minute")
# Time difference of 60 mins
make_difftime(second = 90)
# Time difference of 1.5 mins
make_difftime(minute = 1.5)
# Time difference of 1.5 mins
make_difftime(second = 3, minute = 1.5, hour = 2, day = 6, week = 1)
# Time difference of 13.08441 days
make_difftime(hour = 1, minute = -60)
# Time difference of 0 secs
make_difftime(day = -1)
# Time difference of -1 days
make_difftime(120, day = -1, units = "minute")
# Time differences in mins
# [1]     2 -1440
}
\seealso{
\code{\link{duration}}, \code{\link{as.duration}}
}
\keyword{chron}
\keyword{classes}

