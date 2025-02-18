% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/Marklund_1988_dry_weight_of_roots_above_5_Pine.R
\name{Marklund_1988_dry_weight_of_roots_above_5}
\alias{Marklund_1988_dry_weight_of_roots_above_5}
\title{Dry weight of roots above 5 cm diameter for Pine, from Marklund (1988)}
\usage{
Marklund_1988_dry_weight_of_roots_above_5(
  diameter.cm,
  SI,
  dominant_species,
  Dry_soil,
  Moist_soil,
  peat,
  altitude
)
}
\arguments{
\item{diameter.cm}{Diameter of tree at breast height.}

\item{SI}{Site index of dominant species (Picea abies or Pinus sylvestris)}

\item{dominant_species}{"Picea abies" or "Pinus sylvestris".}

\item{Dry_soil}{If the ground water level is more than 2 m deep, TRUE,
otherwise FALSE.}

\item{Moist_soil}{If the ground water level is less than 1 m deep, TRUE,
otherwise FALSE.}

\item{peat}{If the humus layer is thicker than 30 cm, TRUE, otherwise
FALSE.}

\item{altitude}{Altitude, km.}
}
\value{
Dry weight of roots above 5 cm diameter, in kilograms.
}
\description{
Dry weight of roots above 5 cm diameter for Pine, from Marklund (1988)
}
