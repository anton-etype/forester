#' Form quotient for Beech in southern Sweden, from Soderberg 1992.
#'
#' @source Söderberg, U. (1992) Funktioner för skogsindelning: Höjd, formhöjd och barktjocklek för enskilda träd. / Functions for forest management: Height, form height and bark thickness of individual trees. Report 52. Dept. of Forest Survey. Swedish University of Agricultural Sciences. ISSN 0348-0496. p. 56.
#'
#' @description
#' \strong{Applicable counties:}
#'
#' *Stockholm
#' *Uppsala
#' *Västmanland
#' *Södermanland
#' *Örebro
#' *Östergötland
#' *Skaraborg
#' *Älvsborg - Västergötlands landskap
#' *Älvsborg - Dalslands landskap
#' *Jönköping
#' *Kronoberg
#' *Kalmar
#' *Halland
#' *Kristianstad
#' *Malmöhus
#' *Blekinge
#' *Gotland
#'
#' \strong{Regarding the regional division of the models:}
#'
#' Freely translated from Söderberg 1986 p. 29:
#' 'The regional division is motivated in the following.
#' For Pine the country has been divided into 3 regions (see figure 4.1),
#' which are based on the different forms of Scots Pine which have been distinguished
#' by Sylvén 1917. The distribution of the different forms of Scots Pine is assumed
#' to depend on the expansion-history of the Pine, according to which the Pine
#' immigrated both from the north and the south with a transitional zone in central
#' Sweden, where both forms are present. For other species, the change in genotype
#' is more continuous over the country (Kiellander 1974). For Norway Spruce, it is
#' assumed that it has had time for 30-50 generations in northern Sweden, contrasted
#' against only 10-20 in southern Sweden (Kiellander 1966). Therefore the same regional
#' division is used for Norway Spruce as for Scots Pine. For the other species, the regional
#' division is limited to two regions, wherein the northern and central regions have been merged.

#'
#' @details
#' Multiple correlation coefficient R = 0.88
#'
#' Spread about the function sf = 0.181
#'
#' sf/Spread about the mean = 0.48
#'
#' Number of observations = 220
#'
#' @param SI100_Pine SIH 100 Pine according to Hägglund 1974. e.g. [forester::Hagglund_1974_Sweden_height_trajectories_Pine]
#' @param diameter_cm Diameter over bark of tree, in cm.
#' @param diameter_largest_tree_on_plot_cm Diameter over bark of the tree with the greatest diameter on the plot, cm.
#' @param total_age_stand Total age of the stand.
#' @param Basal_area_Spruce Basal Area m2 of Norway Spruce
#' @param Basal_area_plot Basal area m2 on plot
#' @param latitude Latitude, degrees.
#' @param altitude Altitude, metres.
#' @param divided_plot 0 for full plots, 1 for divided plots.
#' @param county County name.
#'
#' @md
#'
#' @return Form quotient of tree.
#' @export
#'
#' @examples
Soderberg_1992_form_quotient_southern_Sweden_Beech <- function(
  SI100_Pine,
  diameter_cm,
  diameter_largest_tree_on_plot_cm,
  total_age_stand,
  Basal_area_Spruce,
  Basal_area_plot,
  latitude,
  altitude,
  divided_plot=0,
  county
){


  BA_quotient_Spruce <- Basal_area_Spruce/(Basal_area_plot)
  diameter_quotient <- diameter_cm/diameter_largest_tree_on_plot_cm
  south_eastern_county <- ifelse(county %in% c("Stockholm","Södermanland","Uppsala","Östergötland","Kalmar","Västmanland"),1,0)
  region5 <- ifelse(county %in% c("Blekinge", "Kristianstad", "Malmöhus", "Västra Götaland", "Halland", "Gotland"),1,0)

  return(
    exp(
      -0.10532E3*(1/((diameter_cm*10)+50))+#Diameter cm should be in mm.
        +0.65517E-2*total_age_stand+
        -0.16776E-4*(total_age_stand^2)+
        -0.52081E-3*SI100_Pine*10+ #SI 100 Pine should be in dm.
        -0.42320E-5*latitude*altitude+
        +0.14651E0*diameter_quotient+
        +0.20009E0*BA_quotient_Spruce+
        +0.19265E0*south_eastern_county+
        -0.16720E0*region5+
        -0.17627E0*divided_plot+
        +0.20763E1+
        +0.01638 #correction for logarithmic bias, appendix 5.
    )
  )


}
