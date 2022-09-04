#' Create a new Get2TweetsCountsAllResponseMeta
#'
#' @description
#' Get2TweetsCountsAllResponseMeta Class
#'
#' @docType class
#' @title Get2TweetsCountsAllResponseMeta
#' @description Get2TweetsCountsAllResponseMeta Class
#' @format An \code{R6Class} generator object
#' @field newest_id The newest id in this response. character [optional]
#' @field next_token The next token. character [optional]
#' @field oldest_id The oldest id in this response. character [optional]
#' @field total_tweet_count The sum of results returned in this response. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Get2TweetsCountsAllResponseMeta <- R6::R6Class(
  "Get2TweetsCountsAllResponseMeta",
  public = list(
    `newest_id` = NULL,
    `next_token` = NULL,
    `oldest_id` = NULL,
    `total_tweet_count` = NULL,
    `_field_list` = c("newest_id", "next_token", "oldest_id", "total_tweet_count"),
    `additional_properties` = list(),
    #' Initialize a new Get2TweetsCountsAllResponseMeta class.
    #'
    #' @description
    #' Initialize a new Get2TweetsCountsAllResponseMeta class.
    #'
    #' @param newest_id The newest id in this response.
    #' @param next_token The next token.
    #' @param oldest_id The oldest id in this response.
    #' @param total_tweet_count The sum of results returned in this response.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `newest_id` = NULL, `next_token` = NULL, `oldest_id` = NULL, `total_tweet_count` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`newest_id`)) {
        stopifnot(is.character(`newest_id`), length(`newest_id`) == 1)
        self$`newest_id` <- `newest_id`
      }
      if (!is.null(`next_token`)) {
        stopifnot(is.character(`next_token`), length(`next_token`) == 1)
        self$`next_token` <- `next_token`
      }
      if (!is.null(`oldest_id`)) {
        stopifnot(is.character(`oldest_id`), length(`oldest_id`) == 1)
        self$`oldest_id` <- `oldest_id`
      }
      if (!is.null(`total_tweet_count`)) {
        stopifnot(is.numeric(`total_tweet_count`), length(`total_tweet_count`) == 1)
        self$`total_tweet_count` <- `total_tweet_count`
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
    #' @return Get2TweetsCountsAllResponseMeta in JSON format
    #' @export
    toJSON = function() {
      Get2TweetsCountsAllResponseMetaObject <- list()
      if (!is.null(self$`newest_id`)) {
        Get2TweetsCountsAllResponseMetaObject[["newest_id"]] <-
          self$`newest_id`
      }
      if (!is.null(self$`next_token`)) {
        Get2TweetsCountsAllResponseMetaObject[["next_token"]] <-
          self$`next_token`
      }
      if (!is.null(self$`oldest_id`)) {
        Get2TweetsCountsAllResponseMetaObject[["oldest_id"]] <-
          self$`oldest_id`
      }
      if (!is.null(self$`total_tweet_count`)) {
        Get2TweetsCountsAllResponseMetaObject[["total_tweet_count"]] <-
          self$`total_tweet_count`
      }
      for (key in names(self$additional_properties)) {
        Get2TweetsCountsAllResponseMetaObject[[key]] <- self$additional_properties[[key]]
      }

      Get2TweetsCountsAllResponseMetaObject
    },
    #' Deserialize JSON string into an instance of Get2TweetsCountsAllResponseMeta
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2TweetsCountsAllResponseMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2TweetsCountsAllResponseMeta
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`newest_id`)) {
        self$`newest_id` <- this_object$`newest_id`
      }
      if (!is.null(this_object$`next_token`)) {
        self$`next_token` <- this_object$`next_token`
      }
      if (!is.null(this_object$`oldest_id`)) {
        self$`oldest_id` <- this_object$`oldest_id`
      }
      if (!is.null(this_object$`total_tweet_count`)) {
        self$`total_tweet_count` <- this_object$`total_tweet_count`
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
    #' @return Get2TweetsCountsAllResponseMeta in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`newest_id`)) {
          sprintf(
          '"newest_id":
            "%s"
                    ',
          self$`newest_id`
          )
        },
        if (!is.null(self$`next_token`)) {
          sprintf(
          '"next_token":
            "%s"
                    ',
          self$`next_token`
          )
        },
        if (!is.null(self$`oldest_id`)) {
          sprintf(
          '"oldest_id":
            "%s"
                    ',
          self$`oldest_id`
          )
        },
        if (!is.null(self$`total_tweet_count`)) {
          sprintf(
          '"total_tweet_count":
            %d
                    ',
          self$`total_tweet_count`
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
    #' Deserialize JSON string into an instance of Get2TweetsCountsAllResponseMeta
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2TweetsCountsAllResponseMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2TweetsCountsAllResponseMeta
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`newest_id` <- this_object$`newest_id`
      self$`next_token` <- this_object$`next_token`
      self$`oldest_id` <- this_object$`oldest_id`
      self$`total_tweet_count` <- this_object$`total_tweet_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Get2TweetsCountsAllResponseMeta
    #'
    #' @description
    #' Validate JSON input with respect to Get2TweetsCountsAllResponseMeta and throw an exception if invalid
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
    #' @return String representation of Get2TweetsCountsAllResponseMeta
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
      if (nchar(self$`next_token`) < 1) {
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
      if (nchar(self$`next_token`) < 1) {
        invalid_fields["next_token"] <- "Invalid length for `next_token`, must be bigger than or equal to 1."
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
#Get2TweetsCountsAllResponseMeta$unlock()
#
## Below is an example to define the print fnuction
#Get2TweetsCountsAllResponseMeta$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#Get2TweetsCountsAllResponseMeta$lock()

