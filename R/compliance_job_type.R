#' @docType class
#' @title ComplianceJobType
#' @description ComplianceJobType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComplianceJobType <- R6::R6Class(
  "ComplianceJobType",
  public = list(
    #' Initialize a new ComplianceJobType class.
    #'
    #' @description
    #' Initialize a new ComplianceJobType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ComplianceJobType()

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
    #' @return ComplianceJobType in JSON format
    #' @export
    toJSON = function() {
      jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ComplianceJobType
    #'
    #' @description
    #' Deserialize JSON string into an instance of ComplianceJobType
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceJobType
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
    #' @return ComplianceJobType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
        auto_unbox = TRUE
      ))
    },
    #' Deserialize JSON string into an instance of ComplianceJobType
    #'
    #' @description
    #' Deserialize JSON string into an instance of ComplianceJobType
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceJobType
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
.parse_ComplianceJobType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[tweets, users]")
  unlist(strsplit(res, ", "))
}
