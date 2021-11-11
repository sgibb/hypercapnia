#' Fuels
#'
#' A dataset with carbon dioxid data of the some fuels.
#'
#' @format A `data.frame` with 2 rows and 2 columns:
#' \describe{
#' \item{Name}{`character`, name.}
#' \item{CO2}{`double`, gram CO2 per litre fuel.}
#' }
#'
#' @references
#' Umweltbundesamt. "Ratgeber: Sprit sparen und mobil sein" (2009).
#' \url{https://www.umweltbundesamt.de/sites/default/files/medien/publikation/long/3705.pdf}
#' accessed 2021-11-11.
"fuels"

#' Inhalational Anesthetics
#'
#' A dataset of physical properties of the some inhalational anesthetics.
#'
#' @format A `data.frame` with 3 rows and 9 columns:
#' \describe{
#' \item{Name}{`character`, name.}
#' \item{MAC}{`double`, minimum alveolar concentration.}
#' \item{MW}{`double`, molecular weight.}
#' \item{Density}{`double`, density.}
#' \item{GWP20}{`double`, global warming potential for 20 years.}
#' \item{GWP100}{`double`, global warming potential for 100 years.}
#' \item{GWP500}{`double`, global warming potential for 500 years.}
#' \item{Unit}{`numeric`, mili litre per unit/bottle.}
#' \item{Color}{`character`, color code.}
#' }
#'
#' @references
#' Ryan, Susan M., and Claus J. Nielsen.
#' "Global warming potential of inhaled anesthetics: application to clinical use."
#' Anesthesia & Analgesia 111.1 (2010): 92-98.
#' \doi{10.1213/ane.0b013e3181e058d7}
"ianes"
