#' Create a new VideoAllOf
#'
#' @description
#' VideoAllOf Class
#'
#' @docType class
#' @title VideoAllOf
#' @description VideoAllOf Class
#' @format An \code{R6Class} generator object
#' @field duration_ms  integer [optional]
#' @field non_public_metrics  \link{VideoAllOfNonPublicMetrics} [optional]
#' @field organic_metrics  \link{VideoAllOfOrganicMetrics} [optional]
#' @field preview_image_url  character [optional]
#' @field promoted_metrics  \link{VideoAllOfPromotedMetrics} [optional]
#' @field public_metrics  \link{VideoAllOfPublicMetrics} [optional]
#' @field variants  list(\link{Variant}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VideoAllOf <- R6::R6Class(
  "VideoAllOf",
  public = list(
    `duration_ms` = NULL,
    `non_public_metrics` = NULL,
    `organic_metrics` = NULL,
    `preview_image_url` = NULL,
    `promoted_metrics` = NULL,
    `public_metrics` = NULL,
    `variants` = NULL,
    #' Initialize a new VideoAllOf class.
    #'
    #' @description
    #' Initialize a new VideoAllOf class.
    #'
    #' @param duration_ms duration_ms
    #' @param non_public_metrics non_public_metrics
    #' @param organic_metrics organic_metrics
    #' @param preview_image_url preview_image_url
    #' @param promoted_metrics promoted_metrics
    #' @param public_metrics public_metrics
    #' @param variants An array of all available variants of the media.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `duration_ms` = NULL, `non_public_metrics` = NULL, `organic_metrics` = NULL, `preview_image_url` = NULL, `promoted_metrics` = NULL, `public_metrics` = NULL, `variants` = NULL, ...
    ) {
      if (!is.null(`duration_ms`)) {
        stopifnot(is.numeric(`duration_ms`), length(`duration_ms`) == 1)
        self$`duration_ms` <- `duration_ms`
      }
      if (!is.null(`non_public_metrics`)) {
        stopifnot(R6::is.R6(`non_public_metrics`))
        self$`non_public_metrics` <- `non_public_metrics`
      }
      if (!is.null(`organic_metrics`)) {
        stopifnot(R6::is.R6(`organic_metrics`))
        self$`organic_metrics` <- `organic_metrics`
      }
      if (!is.null(`preview_image_url`)) {
        stopifnot(is.character(`preview_image_url`), length(`preview_image_url`) == 1)
        self$`preview_image_url` <- `preview_image_url`
      }
      if (!is.null(`promoted_metrics`)) {
        stopifnot(R6::is.R6(`promoted_metrics`))
        self$`promoted_metrics` <- `promoted_metrics`
      }
      if (!is.null(`public_metrics`)) {
        stopifnot(R6::is.R6(`public_metrics`))
        self$`public_metrics` <- `public_metrics`
      }
      if (!is.null(`variants`)) {
        stopifnot(is.vector(`variants`), length(`variants`) != 0)
        sapply(`variants`, function(x) stopifnot(R6::is.R6(x)))
        self$`variants` <- `variants`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VideoAllOf in JSON format
    #' @export
    toJSON = function() {
      VideoAllOfObject <- list()
      if (!is.null(self$`duration_ms`)) {
        VideoAllOfObject[["duration_ms"]] <-
          self$`duration_ms`
      }
      if (!is.null(self$`non_public_metrics`)) {
        VideoAllOfObject[["non_public_metrics"]] <-
          self$`non_public_metrics`$toJSON()
      }
      if (!is.null(self$`organic_metrics`)) {
        VideoAllOfObject[["organic_metrics"]] <-
          self$`organic_metrics`$toJSON()
      }
      if (!is.null(self$`preview_image_url`)) {
        VideoAllOfObject[["preview_image_url"]] <-
          self$`preview_image_url`
      }
      if (!is.null(self$`promoted_metrics`)) {
        VideoAllOfObject[["promoted_metrics"]] <-
          self$`promoted_metrics`$toJSON()
      }
      if (!is.null(self$`public_metrics`)) {
        VideoAllOfObject[["public_metrics"]] <-
          self$`public_metrics`$toJSON()
      }
      if (!is.null(self$`variants`)) {
        VideoAllOfObject[["variants"]] <-
          lapply(self$`variants`, function(x) x$toJSON())
      }

      VideoAllOfObject
    },
    #' Deserialize JSON string into an instance of VideoAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of VideoAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of VideoAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`duration_ms`)) {
        self$`duration_ms` <- this_object$`duration_ms`
      }
      if (!is.null(this_object$`non_public_metrics`)) {
        non_public_metrics_object <- VideoAllOfNonPublicMetrics$new()
        non_public_metrics_object$fromJSON(jsonlite::toJSON(this_object$non_public_metrics, auto_unbox = TRUE, digits = NA))
        self$`non_public_metrics` <- non_public_metrics_object
      }
      if (!is.null(this_object$`organic_metrics`)) {
        organic_metrics_object <- VideoAllOfOrganicMetrics$new()
        organic_metrics_object$fromJSON(jsonlite::toJSON(this_object$organic_metrics, auto_unbox = TRUE, digits = NA))
        self$`organic_metrics` <- organic_metrics_object
      }
      if (!is.null(this_object$`preview_image_url`)) {
        self$`preview_image_url` <- this_object$`preview_image_url`
      }
      if (!is.null(this_object$`promoted_metrics`)) {
        promoted_metrics_object <- VideoAllOfPromotedMetrics$new()
        promoted_metrics_object$fromJSON(jsonlite::toJSON(this_object$promoted_metrics, auto_unbox = TRUE, digits = NA))
        self$`promoted_metrics` <- promoted_metrics_object
      }
      if (!is.null(this_object$`public_metrics`)) {
        public_metrics_object <- VideoAllOfPublicMetrics$new()
        public_metrics_object$fromJSON(jsonlite::toJSON(this_object$public_metrics, auto_unbox = TRUE, digits = NA))
        self$`public_metrics` <- public_metrics_object
      }
      if (!is.null(this_object$`variants`)) {
        self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variant]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VideoAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`duration_ms`)) {
          sprintf(
          '"duration_ms":
            %d
                    ',
          self$`duration_ms`
          )
        },
        if (!is.null(self$`non_public_metrics`)) {
          sprintf(
          '"non_public_metrics":
          %s
          ',
          jsonlite::toJSON(self$`non_public_metrics`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`organic_metrics`)) {
          sprintf(
          '"organic_metrics":
          %s
          ',
          jsonlite::toJSON(self$`organic_metrics`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`preview_image_url`)) {
          sprintf(
          '"preview_image_url":
            "%s"
                    ',
          self$`preview_image_url`
          )
        },
        if (!is.null(self$`promoted_metrics`)) {
          sprintf(
          '"promoted_metrics":
          %s
          ',
          jsonlite::toJSON(self$`promoted_metrics`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`public_metrics`)) {
          sprintf(
          '"public_metrics":
          %s
          ',
          jsonlite::toJSON(self$`public_metrics`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`variants`)) {
          sprintf(
          '"variants":
          [%s]
',
          paste(sapply(self$`variants`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of VideoAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of VideoAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of VideoAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`duration_ms` <- this_object$`duration_ms`
      self$`non_public_metrics` <- VideoAllOfNonPublicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$non_public_metrics, auto_unbox = TRUE, digits = NA))
      self$`organic_metrics` <- VideoAllOfOrganicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$organic_metrics, auto_unbox = TRUE, digits = NA))
      self$`preview_image_url` <- this_object$`preview_image_url`
      self$`promoted_metrics` <- VideoAllOfPromotedMetrics$new()$fromJSON(jsonlite::toJSON(this_object$promoted_metrics, auto_unbox = TRUE, digits = NA))
      self$`public_metrics` <- VideoAllOfPublicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$public_metrics, auto_unbox = TRUE, digits = NA))
      self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variant]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to VideoAllOf
    #'
    #' @description
    #' Validate JSON input with respect to VideoAllOf and throw an exception if invalid
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
    #' @return String representation of VideoAllOf
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
VideoAllOf$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
VideoAllOf$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
VideoAllOf$lock()

