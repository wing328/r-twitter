#' Create a new UserPublicMetrics
#'
#' @description
#' A list of metrics for this User.
#'
#' @docType class
#' @title UserPublicMetrics
#' @description UserPublicMetrics Class
#' @format An \code{R6Class} generator object
#' @field followers_count Number of Users who are following this User. integer
#' @field following_count Number of Users this User is following. integer
#' @field listed_count The number of lists that include this User. integer
#' @field tweet_count The number of Tweets (including Retweets) posted by this User. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserPublicMetrics <- R6::R6Class(
  "UserPublicMetrics",
  public = list(
    `followers_count` = NULL,
    `following_count` = NULL,
    `listed_count` = NULL,
    `tweet_count` = NULL,
    `_field_list` = c("followers_count", "following_count", "listed_count", "tweet_count"),
    `additional_properties` = list(),
    #' Initialize a new UserPublicMetrics class.
    #'
    #' @description
    #' Initialize a new UserPublicMetrics class.
    #'
    #' @param followers_count Number of Users who are following this User.
    #' @param following_count Number of Users this User is following.
    #' @param listed_count The number of lists that include this User.
    #' @param tweet_count The number of Tweets (including Retweets) posted by this User.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `followers_count`, `following_count`, `listed_count`, `tweet_count`, additional_properties = NULL, ...
    ) {
      if (!missing(`followers_count`)) {
        stopifnot(is.numeric(`followers_count`), length(`followers_count`) == 1)
        self$`followers_count` <- `followers_count`
      }
      if (!missing(`following_count`)) {
        stopifnot(is.numeric(`following_count`), length(`following_count`) == 1)
        self$`following_count` <- `following_count`
      }
      if (!missing(`listed_count`)) {
        stopifnot(is.numeric(`listed_count`), length(`listed_count`) == 1)
        self$`listed_count` <- `listed_count`
      }
      if (!missing(`tweet_count`)) {
        stopifnot(is.numeric(`tweet_count`), length(`tweet_count`) == 1)
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
    #' @return UserPublicMetrics in JSON format
    #' @export
    toJSON = function() {
      UserPublicMetricsObject <- list()
      if (!is.null(self$`followers_count`)) {
        UserPublicMetricsObject[["followers_count"]] <-
          self$`followers_count`
      }
      if (!is.null(self$`following_count`)) {
        UserPublicMetricsObject[["following_count"]] <-
          self$`following_count`
      }
      if (!is.null(self$`listed_count`)) {
        UserPublicMetricsObject[["listed_count"]] <-
          self$`listed_count`
      }
      if (!is.null(self$`tweet_count`)) {
        UserPublicMetricsObject[["tweet_count"]] <-
          self$`tweet_count`
      }
      for (key in names(self$additional_properties)) {
        UserPublicMetricsObject[[key]] <- self$additional_properties[[key]]
      }

      UserPublicMetricsObject
    },
    #' Deserialize JSON string into an instance of UserPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPublicMetrics
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`followers_count`)) {
        self$`followers_count` <- this_object$`followers_count`
      }
      if (!is.null(this_object$`following_count`)) {
        self$`following_count` <- this_object$`following_count`
      }
      if (!is.null(this_object$`listed_count`)) {
        self$`listed_count` <- this_object$`listed_count`
      }
      if (!is.null(this_object$`tweet_count`)) {
        self$`tweet_count` <- this_object$`tweet_count`
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
    #' @return UserPublicMetrics in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`followers_count`)) {
          sprintf(
          '"followers_count":
            %d
                    ',
          self$`followers_count`
          )
        },
        if (!is.null(self$`following_count`)) {
          sprintf(
          '"following_count":
            %d
                    ',
          self$`following_count`
          )
        },
        if (!is.null(self$`listed_count`)) {
          sprintf(
          '"listed_count":
            %d
                    ',
          self$`listed_count`
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
    #' Deserialize JSON string into an instance of UserPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPublicMetrics
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`followers_count` <- this_object$`followers_count`
      self$`following_count` <- this_object$`following_count`
      self$`listed_count` <- this_object$`listed_count`
      self$`tweet_count` <- this_object$`tweet_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserPublicMetrics
    #'
    #' @description
    #' Validate JSON input with respect to UserPublicMetrics and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `followers_count`
      if (!is.null(input_json$`followers_count`)) {
        stopifnot(is.numeric(input_json$`followers_count`), length(input_json$`followers_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserPublicMetrics: the required field `followers_count` is missing."))
      }
      # check the required field `following_count`
      if (!is.null(input_json$`following_count`)) {
        stopifnot(is.numeric(input_json$`following_count`), length(input_json$`following_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserPublicMetrics: the required field `following_count` is missing."))
      }
      # check the required field `listed_count`
      if (!is.null(input_json$`listed_count`)) {
        stopifnot(is.numeric(input_json$`listed_count`), length(input_json$`listed_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserPublicMetrics: the required field `listed_count` is missing."))
      }
      # check the required field `tweet_count`
      if (!is.null(input_json$`tweet_count`)) {
        stopifnot(is.numeric(input_json$`tweet_count`), length(input_json$`tweet_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserPublicMetrics: the required field `tweet_count` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserPublicMetrics
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
      # check if the required `followers_count` is null
      if (is.null(self$`followers_count`)) {
        return(FALSE)
      }

      # check if the required `following_count` is null
      if (is.null(self$`following_count`)) {
        return(FALSE)
      }

      # check if the required `listed_count` is null
      if (is.null(self$`listed_count`)) {
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
      # check if the required `followers_count` is null
      if (is.null(self$`followers_count`)) {
        invalid_fields["followers_count"] <- "Non-nullable required field `followers_count` cannot be null."
      }

      # check if the required `following_count` is null
      if (is.null(self$`following_count`)) {
        invalid_fields["following_count"] <- "Non-nullable required field `following_count` cannot be null."
      }

      # check if the required `listed_count` is null
      if (is.null(self$`listed_count`)) {
        invalid_fields["listed_count"] <- "Non-nullable required field `listed_count` cannot be null."
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#UserPublicMetrics$unlock()
#
## Below is an example to define the print fnuction
#UserPublicMetrics$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UserPublicMetrics$lock()

