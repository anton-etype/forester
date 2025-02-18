% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/Eko_PM_1985_basal_area_5_year_increment_southern_Sweden_Birch.R
\name{Eko_PM_1985_basal_area_5_year_increment_southern_Sweden_Birch}
\alias{Eko_PM_1985_basal_area_5_year_increment_southern_Sweden_Birch}
\title{Basal area growth function for Birch in southern Sweden.}
\source{
Ekö, Per Magnus (1985) "En produktionsmodell för skog i Sverige, baserad på bestånd från
riksskogstaxeringens provytor: A growth simulator for Swedish forests, based on
data from the national forest survey. Rapporter nr. 16. Swedish University of
Agricultural Sciences, dept. of Silviculture. Umeå. ISBN 91-576-2386-4. ISSN
 0348-8969.  p. 70
}
\usage{
Eko_PM_1985_basal_area_5_year_increment_southern_Sweden_Birch(
  basal_area.m2,
  stem_number_ha,
  age_at_breast_height,
  basal_area_other_species,
  SI,
  basal_area_weighted_mean_diameter,
  basal_area_weighted_mean_diameter_other_species,
  thinned,
  thinned_previous_5_years,
  vegetation,
  south_sweden,
  soil_moisture,
  altitude,
  TAX77 = 0,
  fertilised,
  latitude
)
}
\arguments{
\item{basal_area.m2}{Basal area over bark (m2/ha)}

\item{stem_number_ha}{Number of stems per hectare.}

\item{age_at_breast_height}{Age at breast height, calculated as the mean age of the two thickest trees (years).}

\item{basal_area_other_species}{Basal area of other species on the plot. (m2/ha)}

\item{SI}{Site index H100 Pine , m.}

\item{basal_area_weighted_mean_diameter}{Diameter corresponding to mean basal area (m).}

\item{basal_area_weighted_mean_diameter_other_species}{Diameter coressponding to mean basal area (m) of other species on plot.}

\item{thinned}{1 if the stand been thinned, otherwise 0.}

\item{thinned_previous_5_years}{1 if the stand has been thinned within 5 years, otherwise 0.}

\item{vegetation}{Variable indicating vegetation type scaled from -5 to +4 as follows:

\tabular{llr}{
Field Layer Code (NFI) \tab Description \tab Index \cr
1\tab Tall herbs w/o dwarf shrubs \tab 4 \cr
2\tab Tall herbs with bilberry \tab 2.5 \cr
3\tab Tall herbs with cowberry \tab 2 \cr
4\tab Low herbs w/o dwarf shrubs \tab 3 \cr
5\tab Low herbs with bilberry \tab 2.5 \cr
6\tab Low herbs with cowberry \tab 2 \cr
7\tab No field layer \tab 3 \cr
8\tab broad-leafed grasses \tab 2.5 \cr
9\tab narrow-leaved grasses \tab 1.5 \cr
10\tab Sedge, tall \tab -3 \cr
11\tab Sedge, low \tab -3 \cr
12\tab Horsetail \tab 1 \cr
13\tab Bilberry \tab 0 \cr
14\tab Cowberry \tab -0.5 \cr
15\tab Crowberry \tab -3 \cr
16\tab Poor shrub \tab -5 \cr
17\tab Lichen-rich \tab -0.5 \cr
18\tab Lichen-dominated \tab -1 \cr
}}

\item{south_sweden}{1 if the plot is situated in southern Sweden.}

\item{soil_moisture}{Type 1="Dry/torr",2="Mesic/frisk",3="Mesic-moist/frisk-fuktig",4="Moist/fuktig",5="Wet/Blöt"}

\item{altitude}{Metres above sea level}

\item{TAX77}{Always 0 for simulation. Otherwise see original text.}

\item{fertilised}{1 if the stand has been fertilised, otherwise 0.}

\item{latitude}{Latitude, degrees.}
}
\value{
Basal area growth over bark during the five year growth period.
}
\description{
Number of observations: 3072

\tabular{lrrrr}{
Thinning \tab SI<220 \tab 220≤SI<260 \tab 260≤SI<300 \tab SI>300   \cr
Unthinned \tab 249 \tab 406 \tab 772 \tab 756  \cr
Thinned \tab 89 \tab 181 \tab 334 \tab 285 \cr
}

Multiple correlation coefficient: 0.88


Standard deviation about the function, Sf : 0.599


Sf/ Standard deviation about the mean, (\%): 48
}
