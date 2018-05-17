# Source https://github.com/mlevans/leaflet-easyPrint
easyPrintDependency <- function() {
  list(
    # // "leaflet-easyPrint": "2.1.9",
    html_dep_prod("lfx-easyPrint", "2.1.9", has_style = FALSE, has_binding = TRUE)
    )
}

#' Add easyPrint control
#' @description Add a easyPrint control button
#' @param map The leaflet map
#' @param position position of control: "topleft", "topright", "bottomleft", or "bottomright"
#' @param exportOnly If set to \code{TRUE} the map is exported to a png file.
#' @rdname easyPrint
#' @export
#' @examples
#' leaflet() %>%
#'   addTiles() %>%
#'   addEasyPrint()
addEasyPrint <- function(map, position = "topleft", exportOnly = TRUE) {

  map$dependencies <- c(map$dependencies, easyPrintDependency())

  leaflet::invokeMethod(map, getMapData(map), 'addEasyPrint', 
    leaflet::filterNULL(list(
      title = "Export map", 
      position = position,
      exportOnly = exportOnly,
      hideControlContainer = FALSE,
      # hidden = "false",
      # hideClasses = c('div.leaflet-top.leaflet-left'),
      sizeModes = c('A4Portrait', 'A4Landscape')
      )))
}
