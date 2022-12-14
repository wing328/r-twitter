#' Create a new TweetCreateRequestMedia
#'
#' @description
#' Media information being attached to created Tweet. This is mutually exclusive from Quote Tweet Id and Poll.
#'
#' @docType class
#' @title TweetCreateRequestMedia
#' @description TweetCreateRequestMedia Class
#' @format An \code{R6Class} generator object
#' @field media_ids A list of Media Ids to be attached to a created Tweet. list(character)
#' @field tagged_user_ids A list of User Ids to be tagged in the media for created Tweet. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetCreateRequestMedia <- R6::R6Class(
  "TweetCreateRequestMedia",
  public = list(
    `media_ids` = NULL,
    `tagged_user_ids` = NULL,
    #' Initialize a new TweetCreateRequestMedia class.
    #'
    #' @description
    #' Initialize a new TweetCreateRequestMedia class.
    #'
    #' @param media_ids A list of Media Ids to be attached to a created Tweet.
    #' @param tagged_user_ids A list of User Ids to be tagged in the media for created Tweet.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`media_ids`, `tagged_user_ids` = NULL, ...) {
      if (!missing(`media_ids`)) {
        stopifnot(is.vector(`media_ids`), length(`media_ids`) != 0)
        sapply(`media_ids`, function(x) stopifnot(is.character(x)))
        self$`media_ids` <- `media_ids`
      }
      if (!is.null(`tagged_user_ids`)) {
        stopifnot(is.vector(`tagged_user_ids`), length(`tagged_user_ids`) != 0)
        sapply(`tagged_user_ids`, function(x) stopifnot(is.character(x)))
        self$`tagged_user_ids` <- `tagged_user_ids`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestMedia in JSON format
    #' @export
    toJSON = function() {
      TweetCreateRequestMediaObject <- list()
      if (!is.null(self$`media_ids`)) {
        TweetCreateRequestMediaObject[["media_ids"]] <-
          self$`media_ids`
      }
      if (!is.null(self$`tagged_user_ids`)) {
        TweetCreateRequestMediaObject[["tagged_user_ids"]] <-
          self$`tagged_user_ids`
      }
      TweetCreateRequestMediaObject
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestMedia
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestMedia
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestMedia
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`media_ids`)) {
        self$`media_ids` <- ApiClient$new()$deserializeObj(this_object$`media_ids`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`tagged_user_ids`)) {
        self$`tagged_user_ids` <- ApiClient$new()$deserializeObj(this_object$`tagged_user_ids`, "array[character]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestMedia in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`media_ids`)) {
          sprintf(
            '"media_ids":
             [%s]
          ',
            paste(unlist(lapply(self$`media_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`tagged_user_ids`)) {
          sprintf(
            '"tagged_user_ids":
             [%s]
          ',
            paste(unlist(lapply(self$`tagged_user_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestMedia
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestMedia
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestMedia
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`media_ids` <- ApiClient$new()$deserializeObj(this_object$`media_ids`, "array[character]", loadNamespace("twitter"))
      self$`tagged_user_ids` <- ApiClient$new()$deserializeObj(this_object$`tagged_user_ids`, "array[character]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to TweetCreateRequestMedia
    #'
    #' @description
    #' Validate JSON input with respect to TweetCreateRequestMedia and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `media_ids`
      if (!is.null(input_json$`media_ids`)) {
        stopifnot(is.vector(input_json$`media_ids`), length(input_json$`media_ids`) != 0)
        tmp <- sapply(input_json$`media_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetCreateRequestMedia: the required field `media_ids` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetCreateRequestMedia
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
      # check if the required `media_ids` is null
      if (is.null(self$`media_ids`)) {
        return(FALSE)
      }

      if (length(self$`media_ids`) > 4) {
        return(FALSE)
      }
      if (length(self$`media_ids`) < 1) {
        return(FALSE)
      }

      if (length(self$`tagged_user_ids`) > 10) {
        return(FALSE)
      }
      if (length(self$`tagged_user_ids`) < 0) {
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
      # check if the required `media_ids` is null
      if (is.null(self$`media_ids`)) {
        invalid_fields["media_ids"] <- "Non-nullable required field `media_ids` cannot be null."
      }

      if (length(self$`media_ids`) > 4) {
        invalid_fields["media_ids"] <- "Invalid length for `media_ids`, number of items must be less than or equal to 4."
      }
      if (length(self$`media_ids`) < 1) {
        invalid_fields["media_ids"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`tagged_user_ids`) > 10) {
        invalid_fields["tagged_user_ids"] <- "Invalid length for `tagged_user_ids`, number of items must be less than or equal to 10."
      }
      if (length(self$`tagged_user_ids`) < 0) {
        invalid_fields["tagged_user_ids"] <- "Invalid length for ``, number of items must be greater than or equal to 0."
      }

      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# TweetCreateRequestMedia$unlock()
#
## Below is an example to define the print fnuction
# TweetCreateRequestMedia$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetCreateRequestMedia$lock()
