% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Maleki2022height.R
\name{Maleki2022height}
\alias{Maleki2022height}
\alias{Maleki_2022_height_trajectory_Norway_Norway_Spruce}
\alias{Maleki_2022_height_trajectory_Norway_Scots_Pine}
\alias{Maleki_2022_height_trajectory_Norway_Broadleaves}
\title{Height trajectories for main species groups in Norway.}
\source{
Kobra Maleki, Rasmus Astrup, Christian Kuehne, J. Paul McLean &
Clara Antón-Fernández (2022) Stand-level growth models for long-term
projections of the main species groups in Norway, Scandinavian Journal
of Forest Research, DOI: \url{10.1080/02827581.2022.2056632}
}
\usage{
Maleki_2022_height_trajectory_Norway_Norway_Spruce(
  dominant_height,
  age,
  age2,
  output = "Height"
)

Maleki_2022_height_trajectory_Norway_Scots_Pine(
  dominant_height,
  age,
  age2,
  output = "Height"
)

Maleki_2022_height_trajectory_Norway_Broadleaves(
  dominant_height,
  age,
  age2,
  output = "Height"
)
}
\arguments{
\item{dominant_height}{Dominant height, in metres, at age.}

\item{age}{Total age, years.}

\item{age2}{Desired total age, years.}

\item{output}{"Height" (default) or "Equation"}
}
\value{
Height of the stand in metres at the desired age.
}
\description{
Height trajectories for main species groups in Norway.
}
\details{
\tabular{lrrrr}{
Species \tab E \tab MAE \tab RMSE \tab R^2 \cr
Norway Spruce \tab 0.004 \tab 0.590 \tab 0.821 \tab 0.963 \cr
Scots Pine \tab 0.0045 \tab 0.441 \tab 0.644 \tab 0.969 \cr
Broadleaves \tab 0.002 \tab 0.668 \tab 0.933 \tab 0.941 \cr
}
}
\seealso{
Other {Maleki2022}: 
\code{\link{Maleki2022BA}},
\code{\link{Maleki2022Volume}},
\code{\link{Maleki2022ingrowth}},
\code{\link{Maleki2022stems2}},
\code{\link{Maleki2022stems}}
}
\concept{{Maleki2022}}
