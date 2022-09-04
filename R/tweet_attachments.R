#' Create a new TweetAttachments
#'
#' @description
#' Specifies the type of attachments (if any) present in this Tweet.
#'
#' @docType class
#' @title TweetAttachments
#' @description TweetAttachments Class
#' @format An \code{R6Class} generator object
#' @field media_keys A list of Media Keys for each one of the media attachments (if media are attached). list(character) [optional]
#' @field poll_ids A list of poll IDs (if polls are attached). list(character) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetAttachments <- R6::R6Class(
  "TweetAttachments",
  public = list(
    `media_keys` = NULL,
    `poll_ids` = NULL,
    `_field_list` = c("media_keys", "poll_ids"),
    `additional_properties` = list(),
    #' Initialize a new TweetAttachments class.
    #'
    #' @description
    #' Initialize a new TweetAttachments class.
    #'
    #' @param media_keys A list of Media Keys for each one of the media attachments (if media are attached).
    #' @param poll_ids A list of poll IDs (if polls are attached).
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `media_keys` = NULL, `poll_ids` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`media_keys`)) {
        stopifnot(is.vector(`media_keys`), length(`media_keys`) != 0)
        sapply(`media_keys`, function(x) stopifnot(is.character(x)))
        self$`media_keys` <- `media_keys`
      }
      if (!is.null(`poll_ids`)) {
        stopifnot(is.vector(`poll_ids`), length(`poll_ids`) != 0)
        sapply(`poll_ids`, function(x) stopifnot(is.character(x)))
        self$`poll_ids` <- `poll_ids`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetAttachments in JSON format
    #' @export
    toJSON = function() {
      TweetAttachmentsObject <- list()
      if (!is.null(self$`media_keys`)) {
        TweetAttachmentsObject[["media_keys"]] <-
          self$`media_keys`
      }
      if (!is.null(self$`poll_ids`)) {
        TweetAttachmentsObject[["poll_ids"]] <-
          self$`poll_ids`
      }
      for (key in names(self$additional_properties)) {
        TweetAttachmentsObject[[key]] <- self$additional_properties[[key]]
      }

      TweetAttachmentsObject
    },
    #' Deserialize JSON string into an instance of TweetAttachments
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetAttachments
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetAttachments
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`media_keys`)) {
        self$`media_keys` <- ApiClient$new()$deserializeObj(this_object$`media_keys`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`poll_ids`)) {
        self$`poll_ids` <- ApiClient$new()$deserializeObj(this_object$`poll_ids`, "array[character]", loadNamespace("twitter"))
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetAttachments in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`media_keys`)) {
          sprintf(
          '"media_keys":
             [%s]
          ',
          paste(unlist(lapply(self$`media_keys`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`poll_ids`)) {
          sprintf(
          '"poll_ids":
             [%s]
          ',
          paste(unlist(lapply(self$`poll_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of TweetAttachments
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetAttachments
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetAttachments
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`media_keys` <- ApiClient$new()$deserializeObj(this_object$`media_keys`, "array[character]", loadNamespace("twitter"))
      self$`poll_ids` <- ApiClient$new()$deserializeObj(this_object$`poll_ids`, "array[character]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetAttachments
    #'
    #' @description
    #' Validate JSON input with respect to TweetAttachments and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetAttachments
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
      if (length(self$`media_keys`) < 1) {
        return(FALSE)
      }

      if (length(self$`poll_ids`) < 1) {
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
      if (length(self$`media_keys`) < 1) {
        invalid_fields["media_keys"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`poll_ids`) < 1) {
        invalid_fields["poll_ids"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#TweetAttachments$unlock()
#
## Below is an example to define the print fnuction
#TweetAttachments$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TweetAttachments$lock()

