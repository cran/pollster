% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moeCrosstab3way.R
\name{moe_crosstab_3way}
\alias{moe_crosstab_3way}
\title{weighted 3-way crosstabs with margin of error}
\usage{
moe_crosstab_3way(
  df,
  x,
  y,
  z,
  weight,
  remove = c(""),
  n = TRUE,
  pct_type = "row",
  format = "long",
  zscore = 1.96,
  unwt_n = FALSE
)
}
\arguments{
\item{df}{The data source}

\item{x}{The independent variable}

\item{y}{The dependent variable}

\item{z}{The second control variable}

\item{weight}{The weighting variable}

\item{remove}{An optional character vector of values to remove from final table (e.g. "refused").
This will not affect any calculations made. The vector is not case-sensitive.}

\item{n}{logical, if TRUE numeric totals are included.}

\item{pct_type}{Controls the kind of percentage values returned. One of "row" or "cell."}

\item{format}{one of "long" or "wide"}

\item{zscore}{defaults to 1.96, consistent with a 95\% confidence interval}

\item{unwt_n}{logical, if TRUE it adds a column with unweighted frequency values}
}
\value{
a tibble
}
\description{
\code{moe_crosstab_3way} returns a tibble containing a weighted crosstab of two variables by a third variable with margin of error
}
\details{
Options  include row or cell percentages. The tibble can be in long or wide format.
 These tables are ideal for use with small multiples created with ggplot2::facet_wrap.
}
\examples{
moe_crosstab_3way(df = illinois, x = sex, y = educ6, z = maritalstatus, weight = weight)
moe_crosstab_3way(df = illinois, x = sex, y = educ6, z = maritalstatus, weight = weight,
format = "wide")
}
