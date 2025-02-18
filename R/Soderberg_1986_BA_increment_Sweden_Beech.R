#' 5 year Basal area increment over bark, Beech, Sweden from Söderberg (1986)
#'
#' @source Söderberg, U. (1986) Funktioner för skogliga produktionsprognoser - Tillväxt och formhöjd för enskilda träd av inhemska trädslag i Sverige. / Functions for forecasting of timber yields - Increment and form height for individual trees of native species in Sweden. Report 14. Section of Forest Mensuration and Management. Swedish University of Agricultural Sciences. Umeå. ISBN 91-576-2634-0. ISSN 0349-2133. pp.251. p. 202.
#'
#'
#' @details
#' Multiple correlation coefficient R = 0.87
#'
#' Spread about the function sf = 0.586
#'
#' sf/Spread about the mean = 0.53
#'
#' Number of observations = 178
#'
#' Sum of weights: 161.5
#'
#' NB in Söderberg (1986), no correction for logarithmic bias was introduced, as, (freely translated) p. 114:
#' "At the presentation of the functions we lightly touched on the effects of the measurement
#' errors in the variables which had been included in the regression. It was then concluded
#' that several factors contrived to that the spread about the functions is overestimated.
#' Therefore no correction for logarithmic bias was carried out, primarily because the
#' effect of the errors in the indipendent variables on the spread about the function
#' are difficult to establish. If one were to assume that the spread about the function
#' was overestimated by 10 percent, the predicted growth from the functions would be increased by
#' roughly 2 percent. For 20 percents overestimation, an increase of predicted growth by 4.5 perpcent."
#'
#'
#'
#'
#' @param diameter_cm Diameter at breast height
#' @param diameter_largest_tree_on_plot_cm Diameter at breast height of the largest tree on the plot.
#' @param Basal_area_of_tree_m2 Basal area of the tree, m^2.
#' @param Basal_area_Pine_m2_ha Basal area Pine on the plot, m^2 / ha.
#' @param Basal_area_Birch_m2_ha Basal area Birch on the plot, m^2 / ha.
#' @param Basal_area_plot_m2_ha Basal area of all tree species the plot, m^2 / ha.
#' @param age_at_breast_height Age at breast height of the tree.
#' @param SI_species Species for which SIH100 was estimated. One of : 'Picea abies' or 'Pinus sylvestris'.
#' @param SI100 Site Index H100, m.
#' @param thinned TRUE if the stand has been thinned, otherwise FALSE.
#' @param last_thinned Number of growing seasons since last thinning.
#' @param latitude Latitude, degrees.
#' @param altitude Altitude, meters above sea level.
#' @param divided_plot 1 for plots described in different parts, which appears when the original plot consists of different land classes, density classes or cutting classes or belongs to different owners. 0 for full plots (default).
#'
#' @return Basal area increment during 5 years, m2.
#' @export
#'
#' @examples
Soderberg_1986_BA_increment_Sweden_Beech <- function(
  diameter_cm,
  diameter_largest_tree_on_plot_cm,
  Basal_area_of_tree_m2,
  Basal_area_Pine_m2_ha,
  Basal_area_Birch_m2_ha,
  Basal_area_plot_m2_ha,
  SI_species,
  SI100,
  age_at_breast_height,
  thinned,
  last_thinned,
  latitude,
  altitude,
  divided_plot=0
){
  basal_area_of_tree_cm2 <- Basal_area_of_tree_m2*10000
  spruce <- ifelse(SI_species=="Picea abies")
  pine <- ifelse(SI_species=="Pinus sylvestris")
  diameter_quotient <- diameter_cm/diameter_largest_tree_on_plot_cm
  BA_quotient_Pine <- Basal_area_Pine_m2_ha/Basal_area_plot_m2_ha
  BA_quotient_Birch <- Basal_area_Birch_m2_ha/Basal_area_plot_m2_ha

  thinning <- ifelse(thinned==FALSE,
                     (#unthinned
                       -0.40446E-01*Basal_area_plot_m2_ha+
                         +0.52343E-03*(Basal_area_plot_m2_ha^2)

                     )

                     ,

                     ifelse(thinned==TRUE & last_thinned<5,
                            (#thinned within 5 years
                              -0.17664E-01*Basal_area_plot_m2_ha
                            )


                            ,

                            (#thinned longer ago than 5 years.
                              -0.35227E-01*Basal_area_plot_m2_ha+
                                +0.40499E-03*(Basal_area_plot_m2_ha^2)

                            )


                     )

  )



  return(
    exp(
      +0.15936E+01*log(basal_area_of_tree_cm2)+
        -0.51911E-03*Basal_area_of_tree_m2+
        +0.90769E+02*(1/(age_at_breast_height+10))+
        -0.62604E+03*((1/(age_at_breast_height+10))^2)+
        +thinning+
        -0.27505E+01*diameter_quotient+
        +0.12066E+01*(diameter_quotient^2)+
        +0.10086E+01*BA_quotient_Pine+
        +0.68754E+00*BA_quotient_Birch+
        +0.15978E-02*spruce*SI100*10+#m to dm.
        +0.33566E-03*pine*SI100*10+ #m to dm.
        -0.12884E+00*altitude+
        +0.22650E-02*latitude*altitude+
        +0.35174E+00*divided_plot+
        -0.50158E+01

    )/10000 #cm2 to m2
  )


}
