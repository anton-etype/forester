% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Elfving_2004_BA_increment_Oak.R
\name{Elfving_2004_BA_increment_Oak}
\alias{Elfving_2004_BA_increment_Oak}
\title{Individual tree basal area growth for Oak from Elfving 2004}
\source{
Elfving, B. (2010) Translated, re-formulated Pro-Memoria for HEUREKA based on Manuscript 2004-01-26. 'Individual-tree basal area growth functions for all Swedish forests'. Available: \url{https://www.heurekaslu.se/w/images/9/93/Heureka_prognossystem_\%28Elfving_rapportutkast\%29.pdf}
}
\usage{
Elfving_2004_BA_increment_Oak(
  diameter_cm,
  BA_sum_of_trees_with_larger_diameter,
  Basal_area_Oak,
  Basal_area_plot,
  Basal_area_stand,
  altitude,
  county,
  vegetation,
  thinned,
  last_thinned,
  edge_effect
)
}
\arguments{
\item{diameter_cm}{Diameter of the tree at breast height, 1.3 m}

\item{BA_sum_of_trees_with_larger_diameter}{Basal area sum of trees on the plot with larger diameters than that of the target tree.}

\item{Basal_area_Oak}{Basal area Oak on the plot. m2/ha.}

\item{Basal_area_plot}{Basal area on the plot, m2/ha.}

\item{Basal_area_stand}{Basal area in the surrounding stand, m2/ha.}

\item{county}{Swedish county, e.g. [forester::county_sweden()]}

\item{vegetation}{Vegetation type according to follows Swedish National forest inventory FALTSKIKT:
\tabular{ll}{
Code \tab Vegetation \cr
1 \tab  Rich-herb without shrubs \cr
2 \tab Rich-herb with shrubs/bilberry \cr
3 \tab Rich-herb with shrubs/lingonberry \cr
4 \tab Low-herb without shrubs \cr
5 \tab Low-herb with shrubs/bilberry \cr
6 \tab Low-herb with shrubs/lingonberry \cr
7 \tab No field layer \cr
8 \tab Broadleaved grass \cr
9 \tab Thinleaved grass \cr
10 \tab Sedge, high \cr
11 \tab Sedge, low \cr
12 \tab Horsetail, Equisetum ssp. \cr
13 \tab Bilberry \cr
14 \tab Lingonberry \cr
15 \tab Crowberry \cr
16 \tab Poor shrub \cr
17 \tab Lichen, frequent occurrence \cr
18 \tab Lichen, dominating \cr
}}

\item{thinned}{1 if the plot has been thinned, otherwise 0.}

\item{last_thinned}{Number of growth seasons since the stand was last thinned.}

\item{edge_effect}{1 for a partitioned plot where the other part **is** open land. 0 for full plots (default). (divided_plot and edge_effect cannot be TRUE at the same time)}
}
\value{
The 5 - year increase of Basal Area (m^2)
}
\description{
Based on data from permanent plots at the National Forest Inventory.
}
\details{
R^2 = 0.729
}
