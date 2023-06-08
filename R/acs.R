#' Access race and ethnicity data from the American Community Survey
#'
#' @param clean_variable_names Should variable names be cleaned (i.e. snake case)
#' @param ... Other arguments passed to tidycensus::get_acs()
#'
#' @return A tibble with five variables: GEOID, NAME, variable, estimate, and moe
#' @export
get_acs_race_ethnicity <- function(clean_variable_names = FALSE,
                                   ...) {

  race_ethnicity_data <- tidycensus::get_acs(...,
                                             variables = c("White" = "B03002_003",
                                                           "Black/African American" = "B03002_004",
                                                           "American Indian/Alaska Native" = "B03002_005",
                                                           "Asian" = "B03002_006",
                                                           "Native Hawaiian/Pacific Islander" = "B03002_007",
                                                           "Other race" = "B03002_008",
                                                           "Multi-Race" = "B03002_009",
                                                           "Hispanic/Latino" = "B03002_012"))

  if (clean_variable_names == TRUE) {

    race_ethnicity_data <- janitor::clean_names(race_ethnicity_data)

  }

  race_ethnicity_data

}
