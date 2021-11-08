#' Litre of Volatile Anaesthetic per Hour
#'
#' @param mac `double`, minimum alveolar concentration (as ratio, e.g. for 2 %,
#' 0.02).
#' @param fgf `double`, fresh gas flow in litre per minute.
#' @return `double`, litre of volatile anaesthetic per hour.
#' @export
#' @examples
#' litre_per_hour(0.02, 0.5)
litre_per_hour <- function(mac, fgf) {
    mac * fgf * 60L
}

#' Gram of Volatile Anaesthetic per Hour
#'
#' @param mass `double`, molare mass in g/mol.
#' @param mac `double`, minimum alveolar concentration (as ratio, e.g. for 2 %,
#' 0.02).
#' @param fgf `double`, fresh gas flow in litre per minute.
#' @param temperature `double` in Kelvin.
#' @param pressure `double` in kPa.
#' @return `double`, gram of volatile anaesthetic per hour.
#' @export
#' @examples
#' gram_per_hour(200, 0.02, 0.5)
gram_per_hour <- function(mass, mac, fgf,
                         temperature = 293.15, pressure = 101.325) {
    litre_per_hour(mac, fgf) / .molar_volume(temperature, pressure) * mass
}

#' CDE
#'
#' Carbon dioxide equivalent.
#'
#' @param mass `double`, molare mass in g/mol.
#' @param mac `double`, minimum alveolar concentration (as ratio, e.g. for 2 %,
#' 0.02).
#' @param gwp `double`, global warming potential.
#' @param fgf `double`, fresh gas flow in litre per minute.
#' @param temperature `double` in Kelvin.
#' @param pressure `double` in kPa.
#' @return `double`, carbon dioxide equivalent in gram per hour.
#' @aliases cde cde_gram_per_hour
#' @export
#' @examples
#' # sevofluran, gwp20
#' cde(200, 0.02, 349, 0.5)
#'
#' # same using package provided data
#' data(ianes)
#' sevo <- subset(ianes, Name == "Sevoflurane")
#' # for 20 years
#' cde(sevo$MW, sevo$MAC, sevo$GWP20, 0.5)
#' # for 100 years
#' cde(sevo$MW, sevo$MAC, sevo$GWP100, 0.5)
cde <- function(mass, mac, gwp, fgf,
                              temperature = 293.15, pressure = 101.325) {
    gram_per_hour(
        mass, mac, fgf, temperature = temperature, pressure = pressure
    ) * gwp
}

#' @rdname cde
#' @export
cde_gram_per_hour <- cde

#' Molar Volume
#'
#' V = (nRT)/P
#'
#' @param temperature `double` in Kelvin.
#' @param pressure `double` in kPa.
#' @return `double`, molare volume at `temperature` and `pressure`.
#' @noRd
#' @examples
#' # at STP
#' .molar_volume(273.15, 101.325)
#' # at NTP
#' .molar_volume(293.15, 101.325)
.molar_volume <- function(temperature, pressure) {
    8.31446261815324 * temperature / pressure
}
