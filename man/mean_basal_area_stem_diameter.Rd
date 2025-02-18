% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mean_basal_area_stem_diameter.R
\name{mean_basal_area_stem_diameter}
\alias{mean_basal_area_stem_diameter}
\title{Calculate mean diameter corresponding to the mean basal area per stem.}
\usage{
mean_basal_area_stem_diameter(basal_area_m2_ha, stem_count)
}
\arguments{
\item{basal_area_m2_ha}{Basal area at breast height 1.3 m.}

\item{stem_count}{Number of stems.}
}
\value{
Diameter, cm.
}
\description{
A simple helper function which calculates the corresponding diameter of the mean basal area stem.

\strong{NB} The mean basal area stem should not be confused with the \emph{basal area weighted mean stem}.

The mean basal area stem is calculated (?):
\deqn{D_g = \frac{BA_{plot}}{Number of stems}}{D_g = Plot Basal Area / Number of stems}


The Diameter corresponding to the mean basal area of stand,cm.

(Pettersson diss. 1992)

\deqn{D_g = \sqrt{\frac{\sum{d^2}}{n}}}{D_g = sqrt( sum(d^2)/n  )}


The basal area weighted mean stem is calculated:
\deqn{DGV = \frac{\sum{D_i \times BA_i }}{BA_{plot}}}{DGV = ( \sum (Diameter_i * BA_i)) / Plot Basal Area}
}
