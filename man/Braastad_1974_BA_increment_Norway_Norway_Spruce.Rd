% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/Braastad_1974_diameter_increment_Norway_Norway_Spruce.R
\name{Braastad_1974_BA_increment_Norway_Norway_Spruce}
\alias{Braastad_1974_BA_increment_Norway_Norway_Spruce}
\title{Annual Diameter growth for Norway Spruce in Norway from Braastad 1974}
\source{
Braastad, H. 1974. Diametertilvekstfunksjoner for gran. Diameter increment functions for Picea abies. Medd. norsk inst. skogforskning:31:1. function 6.
}
\usage{
Braastad_1974_BA_increment_Norway_Norway_Spruce(
  SIH40,
  age,
  dominant_height,
  QMD_remaining,
  BA_m2_ha_after_thinning,
  Volume_remaining,
  thinned_BA_m2_ha_last_thinning,
  thinned_BA_m2_ha_second_last_thinning,
  thinned_BA_m2_ha_third_last_thinning
)
}
\arguments{
\item{SIH40}{Site Index H40, e.g. Tveite 1977 [forester::Tveite_1977_height_trajectory_Norway_Norway_Spruce()]. NB. Was included as unpublished.}

\item{age}{Age at breast height.}

\item{dominant_height}{Dominant height of stand (arithmetic mean height of the 100 trees with largest diameter).}

\item{QMD_remaining}{Quadratic Mean Diameter at start.}

\item{BA_m2_ha_after_thinning}{Basal Area m2/ha at start.}

\item{Volume_remaining}{Volume m3 at start.}

\item{thinned_BA_m2_ha_last_thinning}{Basal Area m2/ha removed during the last thinning}

\item{thinned_BA_m2_ha_second_last_thinning}{Basal Area m2/ha removed during the second last thinning}

\item{thinned_BA_m2_ha_third_last_thinning}{Basal Area m2/ha removed during the third last thinning}
}
\value{
Diameter increment per annum, cm.
}
\description{
Annual Diameter growth for Norway Spruce in Norway from Braastad 1974
}
\details{
Multiple correlation coefficient = 0.740
Residual spread = 0.585 mm.
Spread about the mean Diameter increment = 18.4 percent.
}
