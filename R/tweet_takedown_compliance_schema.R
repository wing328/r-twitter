#' Create a new TweetTakedownComplianceSchema
#'
#' @description
#' TweetTakedownComplianceSchema Class
#'
#' @docType class
#' @title TweetTakedownComplianceSchema
#' @description TweetTakedownComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field event_at Event time. character
#' @field quote_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field tweet  \link{TweetComplianceSchemaTweet}
#' @field withheld_in_countries  list(character)
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetTakedownComplianceSchema <- R6::R6Class(
  "TweetTakedownComplianceSchema",
  public = list(
    `event_at` = NULL,
    `quote_tweet_id` = NULL,
    `tweet` = NULL,
    `withheld_in_countries` = NULL,
    `_field_list` = c("event_at", "quote_tweet_id", "tweet", "withheld_in_countries"),
    `additional_properties` = list(),
    #' Initialize a new TweetTakedownComplianceSchema class.
    #'
    #' @description
    #' Initialize a new TweetTakedownComplianceSchema class.
    #'
    #' @param event_at Event time.
    #' @param tweet tweet
    #' @param withheld_in_countries withheld_in_countries
    #' @param quote_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`event_at`, `tweet`, `withheld_in_countries`, `quote_tweet_id` = NULL, additional_properties = NULL, ...) {
      if (!missing(`event_at`)) {
        if (!(is.character(`event_at`) && length(`event_at`) == 1)) {
          stop(paste("Error! Invalid data for `event_at`. Must be a string:", `event_at`))
        }
        self$`event_at` <- `event_at`
      }
      if (!missing(`tweet`)) {
        stopifnot(R6::is.R6(`tweet`))
        self$`tweet` <- `tweet`
      }
      if (!missing(`withheld_in_countries`)) {
        stopifnot(is.vector(`withheld_in_countries`), length(`withheld_in_countries`) != 0)
        sapply(`withheld_in_countries`, function(x) stopifnot(is.character(x)))
        self$`withheld_in_countries` <- `withheld_in_countries`
      }
      if (!is.null(`quote_tweet_id`)) {
        if (!(is.character(`quote_tweet_id`) && length(`quote_tweet_id`) == 1)) {
          stop(paste("Error! Invalid data for `quote_tweet_id`. Must be a string:", `quote_tweet_id`))
        }
        self$`quote_tweet_id` <- `quote_tweet_id`
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
    #' @return TweetTakedownComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      TweetTakedownComplianceSchemaObject <- list()
      if (!is.null(self$`event_at`)) {
        TweetTakedownComplianceSchemaObject[["event_at"]] <-
          self$`event_at`
      }
      if (!is.null(self$`quote_tweet_id`)) {
        TweetTakedownComplianceSchemaObject[["quote_tweet_id"]] <-
          self$`quote_tweet_id`
      }
      if (!is.null(self$`tweet`)) {
        TweetTakedownComplianceSchemaObject[["tweet"]] <-
          self$`tweet`$toJSON()
      }
      if (!is.null(self$`withheld_in_countries`)) {
        TweetTakedownComplianceSchemaObject[["withheld_in_countries"]] <-
          self$`withheld_in_countries`
      }
      for (key in names(self$additional_properties)) {
        TweetTakedownComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      TweetTakedownComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of TweetTakedownComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetTakedownComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetTakedownComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_at`)) {
        self$`event_at` <- this_object$`event_at`
      }
      if (!is.null(this_object$`quote_tweet_id`)) {
        self$`quote_tweet_id` <- this_object$`quote_tweet_id`
      }
      if (!is.null(this_object$`tweet`)) {
        tweet_object <- TweetComplianceSchemaTweet$new()
        tweet_object$fromJSON(jsonlite::toJSON(this_object$tweet, auto_unbox = TRUE, digits = NA))
        self$`tweet` <- tweet_object
      }
      if (!is.null(this_object$`withheld_in_countries`)) {
        self$`withheld_in_countries` <- ApiClient$new()$deserializeObj(this_object$`withheld_in_countries`, "array[character]", loadNamespace("twitter"))
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
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
    #' @return TweetTakedownComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`event_at`)) {
          sprintf(
            '"event_at":
            "%s"
                    ',
            self$`event_at`
          )
        },
        if (!is.null(self$`quote_tweet_id`)) {
          sprintf(
            '"quote_tweet_id":
            "%s"
                    ',
            self$`quote_tweet_id`
          )
        },
        if (!is.null(self$`tweet`)) {
          sprintf(
            '"tweet":
          %s
          ',
            jsonlite::toJSON(self$`tweet`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`withheld_in_countries`)) {
          sprintf(
            '"withheld_in_countries":
             [%s]
          ',
            paste(unlist(lapply(self$`withheld_in_countries`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of TweetTakedownComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetTakedownComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetTakedownComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_at` <- this_object$`event_at`
      self$`quote_tweet_id` <- this_object$`quote_tweet_id`
      self$`tweet` <- TweetComplianceSchemaTweet$new()$fromJSON(jsonlite::toJSON(this_object$tweet, auto_unbox = TRUE, digits = NA))
      self$`withheld_in_countries` <- ApiClient$new()$deserializeObj(this_object$`withheld_in_countries`, "array[character]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetTakedownComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to TweetTakedownComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `event_at`
      if (!is.null(input_json$`event_at`)) {
        if (!(is.character(input_json$`event_at`) && length(input_json$`event_at`) == 1)) {
          stop(paste("Error! Invalid data for `event_at`. Must be a string:", input_json$`event_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetTakedownComplianceSchema: the required field `event_at` is missing."))
      }
      # check the required field `tweet`
      if (!is.null(input_json$`tweet`)) {
        stopifnot(R6::is.R6(input_json$`tweet`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetTakedownComplianceSchema: the required field `tweet` is missing."))
      }
      # check the required field `withheld_in_countries`
      if (!is.null(input_json$`withheld_in_countries`)) {
        stopifnot(is.vector(input_json$`withheld_in_countries`), length(input_json$`withheld_in_countries`) != 0)
        tmp <- sapply(input_json$`withheld_in_countries`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetTakedownComplianceSchema: the required field `withheld_in_countries` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetTakedownComplianceSchema
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
      # check if the required `event_at` is null
      if (is.null(self$`event_at`)) {
        return(FALSE)
      }

      if (!str_detect(self$`quote_tweet_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `tweet` is null
      if (is.null(self$`tweet`)) {
        return(FALSE)
      }

      # check if the required `withheld_in_countries` is null
      if (is.null(self$`withheld_in_countries`)) {
        return(FALSE)
      }

      if (length(self$`withheld_in_countries`) < 1) {
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
      # check if the required `event_at` is null
      if (is.null(self$`event_at`)) {
        invalid_fields["event_at"] <- "Non-nullable required field `event_at` cannot be null."
      }

      if (!str_detect(self$`quote_tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["quote_tweet_id"] <- "Invalid value for `quote_tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `tweet` is null
      if (is.null(self$`tweet`)) {
        invalid_fields["tweet"] <- "Non-nullable required field `tweet` cannot be null."
      }

      # check if the required `withheld_in_countries` is null
      if (is.null(self$`withheld_in_countries`)) {
        invalid_fields["withheld_in_countries"] <- "Non-nullable required field `withheld_in_countries` cannot be null."
      }

      if (length(self$`withheld_in_countries`) < 1) {
        invalid_fields["withheld_in_countries"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# TweetTakedownComplianceSchema$unlock()
#
## Below is an example to define the print fnuction
# TweetTakedownComplianceSchema$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetTakedownComplianceSchema$lock()
