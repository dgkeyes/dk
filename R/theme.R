#' David Keyes's custom ggplot theme
#'
#' @param show_grid_lines Should grid lines be shown (TRUE/FALSE)
#' @param show_axis_titles Should axis titles be shown (TRUE/FALSE)
#'
#' @return A complete ggplot2 theme
#' @export
theme_dk <- function(show_grid_lines = TRUE,
                     show_axis_titles = TRUE) {

  custom_theme <- ggplot2::theme_minimal() +
    ggplot2::theme(panel.grid.minor = ggplot2::element_blank(),
                   axis.ticks = ggplot2::element_blank(),
                   axis.title = ggplot2::element_text(size = 12,
                                                      color = "grey50"),
                   axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 10)),
                   axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = 10)),
                   axis.text = ggplot2::element_text(size = 12,
                                                     color = "grey50"),
                   plot.title.position = "plot",
                   plot.title = ggplot2::element_text(size = 20,
                                                      face = "bold",
                                                      margin = ggplot2::margin(b = 8)),
                   plot.subtitle = ggplot2::element_text(size = 14,
                                                         color = "grey50"),
                   legend.text = ggplot2::element_text(size = 12),
                   legend.position = "top")

  if (show_grid_lines == FALSE) {

    custom_theme <- custom_theme +
      ggplot2::theme(panel.grid.major = ggplot2::element_blank())

  }

  if (show_axis_titles == FALSE) {

    custom_theme <- custom_theme +
      ggplot2::theme(axis.title = ggplot2::element_blank(),
                     axis.title.x = ggplot2::element_blank(),
                     axis.title.y = ggplot2::element_blank())

  }

  custom_theme

}
