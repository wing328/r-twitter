#' @docType class
#' @title PlaceType
#' @description PlaceType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlaceType <- R6::R6Class(
  "PlaceType",
  public = list(
    #' Initialize a new PlaceType class.
    #'
    #' @description
    #' Initialize a new PlaceType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_PlaceType()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec) {
        stop(
          "Use one of the valid values: ",
          paste0(enumvec, collapse = ", ")
        )
      }
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PlaceType in JSON format
    #' @export
    toJSON = function() {
      jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of PlaceType
    #'
    #' @description
    #' Deserialize JSON string into an instance of PlaceType
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlaceType
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
        simplifyVector = FALSE
      )
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PlaceType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
        auto_unbox = TRUE
      ))
    },
    #' Deserialize JSON string into an instance of PlaceType
    #'
    #' @description
    #' Deserialize JSON string into an instance of PlaceType
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlaceType
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
        simplifyVector = FALSE
      )
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_PlaceType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[poi, neighborhood, city, admin, country, unknown]")
  unlist(strsplit(res, ", "))
}
