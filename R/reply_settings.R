#' @docType class
#' @title ReplySettings
#' @description ReplySettings Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReplySettings <- R6::R6Class(
  "ReplySettings",
  public = list(
    #' Initialize a new ReplySettings class.
    #'
    #' @description
    #' Initialize a new ReplySettings class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_ReplySettings()

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
    #' @return ReplySettings in JSON format
    #' @export
    toJSON = function() {
      jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of ReplySettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of ReplySettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReplySettings
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
    #' @return ReplySettings in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
        auto_unbox = TRUE
      ))
    },
    #' Deserialize JSON string into an instance of ReplySettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of ReplySettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReplySettings
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
.parse_ReplySettings <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[everyone, mentionedUsers, following, other]")
  unlist(strsplit(res, ", "))
}
