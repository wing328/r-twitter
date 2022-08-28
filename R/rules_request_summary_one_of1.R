#' Create a new RulesRequestSummaryOneOf1
#'
#' @description
#' RulesRequestSummaryOneOf1 Class
#'
#' @docType class
#' @title RulesRequestSummaryOneOf1
#' @description RulesRequestSummaryOneOf1 Class
#' @format An \code{R6Class} generator object
#' @field deleted  integer
#' @field not_deleted  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RulesRequestSummaryOneOf1 <- R6::R6Class(
  "RulesRequestSummaryOneOf1",
  public = list(
    `deleted` = NULL,
    `not_deleted` = NULL,
    #' Initialize a new RulesRequestSummaryOneOf1 class.
    #'
    #' @description
    #' Initialize a new RulesRequestSummaryOneOf1 class.
    #'
    #' @param deleted Number of user-specified stream filtering rules that were deleted.
    #' @param not_deleted Number of user-specified stream filtering rules that were not deleted.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `deleted`, `not_deleted`, ...
    ) {
      if (!missing(`deleted`)) {
        stopifnot(is.numeric(`deleted`), length(`deleted`) == 1)
        self$`deleted` <- `deleted`
      }
      if (!missing(`not_deleted`)) {
        stopifnot(is.numeric(`not_deleted`), length(`not_deleted`) == 1)
        self$`not_deleted` <- `not_deleted`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return RulesRequestSummaryOneOf1 in JSON format
    #' @export
    toJSON = function() {
      RulesRequestSummaryOneOf1Object <- list()
      if (!is.null(self$`deleted`)) {
        RulesRequestSummaryOneOf1Object[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`not_deleted`)) {
        RulesRequestSummaryOneOf1Object[["not_deleted"]] <-
          self$`not_deleted`
      }

      RulesRequestSummaryOneOf1Object
    },
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesRequestSummaryOneOf1
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
      }
      if (!is.null(this_object$`not_deleted`)) {
        self$`not_deleted` <- this_object$`not_deleted`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return RulesRequestSummaryOneOf1 in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`deleted`)) {
          sprintf(
          '"deleted":
            %d
                    ',
          self$`deleted`
          )
        },
        if (!is.null(self$`not_deleted`)) {
          sprintf(
          '"not_deleted":
            %d
                    ',
          self$`not_deleted`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesRequestSummaryOneOf1
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`deleted` <- this_object$`deleted`
      self$`not_deleted` <- this_object$`not_deleted`
      self
    },
    #' Validate JSON input with respect to RulesRequestSummaryOneOf1
    #'
    #' @description
    #' Validate JSON input with respect to RulesRequestSummaryOneOf1 and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        stopifnot(is.numeric(input_json$`deleted`), length(input_json$`deleted`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf1: the required field `deleted` is missing."))
      }
      # check the required field `not_deleted`
      if (!is.null(input_json$`not_deleted`)) {
        stopifnot(is.numeric(input_json$`not_deleted`), length(input_json$`not_deleted`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf1: the required field `not_deleted` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RulesRequestSummaryOneOf1
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        return(FALSE)
      }

      # check if the required `not_deleted` is null
      if (is.null(self$`not_deleted`)) {
        return(FALSE)
      }

      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        invalid_fields["deleted"] <- "Non-nullable required field `deleted` cannot be null."
      }

      # check if the required `not_deleted` is null
      if (is.null(self$`not_deleted`)) {
        invalid_fields["not_deleted"] <- "Non-nullable required field `not_deleted` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
RulesRequestSummaryOneOf1$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
RulesRequestSummaryOneOf1$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
RulesRequestSummaryOneOf1$lock()

