\name{position_stack}
\alias{position_stack}
\title{Stack overlapping objects on top of one another.}

\description{
  Stack overlapping objects on top of one another.
}
\examples{# Stacking is the default behaviour for most area plots:
ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) + geom_bar()

ggplot(diamonds, aes(price)) + geom_histogram(binwidth=500)
ggplot(diamonds, aes(price, fill = cut)) + geom_histogram(binwidth=500)

# Stacking is also useful for time series
data.set <- data.frame(
Time = c(rep(1, 4),rep(2, 4), rep(3, 4), rep(4, 4)),
Type = rep(c('a', 'b', 'c', 'd'), 4),
Value = rpois(16, 10)
)

qplot(Time, Value, data = data.set, fill = Type, geom = "area")
# If you want to stack lines, you need to say so:
qplot(Time, Value, data = data.set, colour = Type, geom = "line")
qplot(Time, Value, data = data.set, colour = Type, geom = "line",
position = "stack")
# But realise that this makes it *much* harder to compare individual
# trends}