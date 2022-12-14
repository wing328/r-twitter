#' Create a new SearchCount
#'
#' @description
#' Represent a Search Count Result.
#'
#' @docType class
#' @title SearchCount
#' @description SearchCount Class
#' @format An \code{R6Class} generator object
#' @field end The end time of the bucket. character
#' @field start The start time of the bucket. character
#' @field tweet_count The count for the bucket. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchCount <- R6::R6Class(
  "SearchCount",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `tweet_count` = NULL,
    `_field_list` = c("end", "start", "tweet_count"),
    `additional_properties` = list(),
    #' Initialize a new SearchCount class.
    #'
    #' @description
    #' Initialize a new SearchCount class.
    #'
    #' @param end The end time of the bucket.
    #' @param start The start time of the bucket.
    #' @param tweet_count The count for the bucket.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`end`, `start`, `tweet_count`, additional_properties = NULL, ...) {
      if (!missing(`end`)) {
        if (!(is.character(`end`) && length(`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!missing(`start`)) {
        if (!(is.character(`start`) && length(`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", `start`))
        }
        self$`start` <- `start`
      }
      if (!missing(`tweet_count`)) {
        if (!(is.numeric(`tweet_count`) && length(`tweet_count`) == 1)) {
          stop(paste("Error! Invalid data for `tweet_count`. Must be an integer:", `tweet_count`))
        }
        self$`tweet_count` <- `tweet_count`
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
    #' @return SearchCount in JSON format
    #' @export
    toJSON = function() {
      SearchCountObject <- list()
      if (!is.null(self$`end`)) {
        SearchCountObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        SearchCountObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`tweet_count`)) {
        SearchCountObject[["tweet_count"]] <-
          self$`tweet_count`
      }
      for (key in names(self$additional_properties)) {
        SearchCountObject[[key]] <- self$additional_properties[[key]]
      }

      SearchCountObject
    },
    #' Deserialize JSON string into an instance of SearchCount
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchCount
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`tweet_count`)) {
        self$`tweet_count` <- this_object$`tweet_count`
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
    #' @return SearchCount in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`end`)) {
          sprintf(
            '"end":
            "%s"
                    ',
            self$`end`
          )
        },
        if (!is.null(self$`start`)) {
          sprintf(
            '"start":
            "%s"
                    ',
            self$`start`
          )
        },
        if (!is.null(self$`tweet_count`)) {
          sprintf(
            '"tweet_count":
            %d
                    ',
            self$`tweet_count`
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
    #' Deserialize JSON string into an instance of SearchCount
    #'
    #' @description
    #' Deserialize JSON string into an instance of SearchCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchCount
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      self$`tweet_count` <- this_object$`tweet_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to SearchCount
    #'
    #' @description
    #' Validate JSON input with respect to SearchCount and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        if (!(is.character(input_json$`end`) && length(input_json$`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", input_json$`end`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchCount: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        if (!(is.character(input_json$`start`) && length(input_json$`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be a string:", input_json$`start`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchCount: the required field `start` is missing."))
      }
      # check the required field `tweet_count`
      if (!is.null(input_json$`tweet_count`)) {
        if (!(is.numeric(input_json$`tweet_count`) && length(input_json$`tweet_count`) == 1)) {
          stop(paste("Error! Invalid data for `tweet_count`. Must be an integer:", input_json$`tweet_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchCount: the required field `tweet_count` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchCount
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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      # check if the required `tweet_count` is null
      if (is.null(self$`tweet_count`)) {
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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      # check if the required `tweet_count` is null
      if (is.null(self$`tweet_count`)) {
        invalid_fields["tweet_count"] <- "Non-nullable required field `tweet_count` cannot be null."
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
# SearchCount$unlock()
#
## Below is an example to define the print fnuction
# SearchCount$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchCount$lock()
