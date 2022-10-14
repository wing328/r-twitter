#' Create a new VideoAllOfOrganicMetrics
#'
#' @description
#' Organic nonpublic engagement metrics for the Media at the time of the request.
#'
#' @docType class
#' @title VideoAllOfOrganicMetrics
#' @description VideoAllOfOrganicMetrics Class
#' @format An \code{R6Class} generator object
#' @field playback_0_count Number of users who made it through 0\% of the video. integer [optional]
#' @field playback_100_count Number of users who made it through 100\% of the video. integer [optional]
#' @field playback_25_count Number of users who made it through 25\% of the video. integer [optional]
#' @field playback_50_count Number of users who made it through 50\% of the video. integer [optional]
#' @field playback_75_count Number of users who made it through 75\% of the video. integer [optional]
#' @field view_count Number of times this video has been viewed. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VideoAllOfOrganicMetrics <- R6::R6Class(
  "VideoAllOfOrganicMetrics",
  public = list(
    `playback_0_count` = NULL,
    `playback_100_count` = NULL,
    `playback_25_count` = NULL,
    `playback_50_count` = NULL,
    `playback_75_count` = NULL,
    `view_count` = NULL,
    `_field_list` = c("playback_0_count", "playback_100_count", "playback_25_count", "playback_50_count", "playback_75_count", "view_count"),
    `additional_properties` = list(),
    #' Initialize a new VideoAllOfOrganicMetrics class.
    #'
    #' @description
    #' Initialize a new VideoAllOfOrganicMetrics class.
    #'
    #' @param playback_0_count Number of users who made it through 0\% of the video.
    #' @param playback_100_count Number of users who made it through 100\% of the video.
    #' @param playback_25_count Number of users who made it through 25\% of the video.
    #' @param playback_50_count Number of users who made it through 50\% of the video.
    #' @param playback_75_count Number of users who made it through 75\% of the video.
    #' @param view_count Number of times this video has been viewed.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`playback_0_count` = NULL, `playback_100_count` = NULL, `playback_25_count` = NULL, `playback_50_count` = NULL, `playback_75_count` = NULL, `view_count` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`playback_0_count`)) {
        stopifnot(is.numeric(`playback_0_count`), length(`playback_0_count`) == 1)
        self$`playback_0_count` <- `playback_0_count`
      }
      if (!is.null(`playback_100_count`)) {
        stopifnot(is.numeric(`playback_100_count`), length(`playback_100_count`) == 1)
        self$`playback_100_count` <- `playback_100_count`
      }
      if (!is.null(`playback_25_count`)) {
        stopifnot(is.numeric(`playback_25_count`), length(`playback_25_count`) == 1)
        self$`playback_25_count` <- `playback_25_count`
      }
      if (!is.null(`playback_50_count`)) {
        stopifnot(is.numeric(`playback_50_count`), length(`playback_50_count`) == 1)
        self$`playback_50_count` <- `playback_50_count`
      }
      if (!is.null(`playback_75_count`)) {
        stopifnot(is.numeric(`playback_75_count`), length(`playback_75_count`) == 1)
        self$`playback_75_count` <- `playback_75_count`
      }
      if (!is.null(`view_count`)) {
        stopifnot(is.numeric(`view_count`), length(`view_count`) == 1)
        self$`view_count` <- `view_count`
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
    #' @return VideoAllOfOrganicMetrics in JSON format
    #' @export
    toJSON = function() {
      VideoAllOfOrganicMetricsObject <- list()
      if (!is.null(self$`playback_0_count`)) {
        VideoAllOfOrganicMetricsObject[["playback_0_count"]] <-
          self$`playback_0_count`
      }
      if (!is.null(self$`playback_100_count`)) {
        VideoAllOfOrganicMetricsObject[["playback_100_count"]] <-
          self$`playback_100_count`
      }
      if (!is.null(self$`playback_25_count`)) {
        VideoAllOfOrganicMetricsObject[["playback_25_count"]] <-
          self$`playback_25_count`
      }
      if (!is.null(self$`playback_50_count`)) {
        VideoAllOfOrganicMetricsObject[["playback_50_count"]] <-
          self$`playback_50_count`
      }
      if (!is.null(self$`playback_75_count`)) {
        VideoAllOfOrganicMetricsObject[["playback_75_count"]] <-
          self$`playback_75_count`
      }
      if (!is.null(self$`view_count`)) {
        VideoAllOfOrganicMetricsObject[["view_count"]] <-
          self$`view_count`
      }
      for (key in names(self$additional_properties)) {
        VideoAllOfOrganicMetricsObject[[key]] <- self$additional_properties[[key]]
      }

      VideoAllOfOrganicMetricsObject
    },
    #' Deserialize JSON string into an instance of VideoAllOfOrganicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of VideoAllOfOrganicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of VideoAllOfOrganicMetrics
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`playback_0_count`)) {
        self$`playback_0_count` <- this_object$`playback_0_count`
      }
      if (!is.null(this_object$`playback_100_count`)) {
        self$`playback_100_count` <- this_object$`playback_100_count`
      }
      if (!is.null(this_object$`playback_25_count`)) {
        self$`playback_25_count` <- this_object$`playback_25_count`
      }
      if (!is.null(this_object$`playback_50_count`)) {
        self$`playback_50_count` <- this_object$`playback_50_count`
      }
      if (!is.null(this_object$`playback_75_count`)) {
        self$`playback_75_count` <- this_object$`playback_75_count`
      }
      if (!is.null(this_object$`view_count`)) {
        self$`view_count` <- this_object$`view_count`
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
    #' @return VideoAllOfOrganicMetrics in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`playback_0_count`)) {
          sprintf(
            '"playback_0_count":
            %d
                    ',
            self$`playback_0_count`
          )
        },
        if (!is.null(self$`playback_100_count`)) {
          sprintf(
            '"playback_100_count":
            %d
                    ',
            self$`playback_100_count`
          )
        },
        if (!is.null(self$`playback_25_count`)) {
          sprintf(
            '"playback_25_count":
            %d
                    ',
            self$`playback_25_count`
          )
        },
        if (!is.null(self$`playback_50_count`)) {
          sprintf(
            '"playback_50_count":
            %d
                    ',
            self$`playback_50_count`
          )
        },
        if (!is.null(self$`playback_75_count`)) {
          sprintf(
            '"playback_75_count":
            %d
                    ',
            self$`playback_75_count`
          )
        },
        if (!is.null(self$`view_count`)) {
          sprintf(
            '"view_count":
            %d
                    ',
            self$`view_count`
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
    #' Deserialize JSON string into an instance of VideoAllOfOrganicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of VideoAllOfOrganicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of VideoAllOfOrganicMetrics
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`playback_0_count` <- this_object$`playback_0_count`
      self$`playback_100_count` <- this_object$`playback_100_count`
      self$`playback_25_count` <- this_object$`playback_25_count`
      self$`playback_50_count` <- this_object$`playback_50_count`
      self$`playback_75_count` <- this_object$`playback_75_count`
      self$`view_count` <- this_object$`view_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to VideoAllOfOrganicMetrics
    #'
    #' @description
    #' Validate JSON input with respect to VideoAllOfOrganicMetrics and throw an exception if invalid
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
    #' @return String representation of VideoAllOfOrganicMetrics
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
# VideoAllOfOrganicMetrics$unlock()
#
## Below is an example to define the print fnuction
# VideoAllOfOrganicMetrics$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VideoAllOfOrganicMetrics$lock()
