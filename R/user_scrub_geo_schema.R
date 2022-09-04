#' Create a new UserScrubGeoSchema
#'
#' @description
#' UserScrubGeoSchema Class
#'
#' @docType class
#' @title UserScrubGeoSchema
#' @description UserScrubGeoSchema Class
#' @format An \code{R6Class} generator object
#' @field scrub_geo  \link{UserScrubGeoObjectSchema}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserScrubGeoSchema <- R6::R6Class(
  "UserScrubGeoSchema",
  public = list(
    `scrub_geo` = NULL,
    `_field_list` = c("scrub_geo"),
    `additional_properties` = list(),
    #' Initialize a new UserScrubGeoSchema class.
    #'
    #' @description
    #' Initialize a new UserScrubGeoSchema class.
    #'
    #' @param scrub_geo scrub_geo
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `scrub_geo`, additional_properties = NULL, ...
    ) {
      if (!missing(`scrub_geo`)) {
        stopifnot(R6::is.R6(`scrub_geo`))
        self$`scrub_geo` <- `scrub_geo`
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
    #' @return UserScrubGeoSchema in JSON format
    #' @export
    toJSON = function() {
      UserScrubGeoSchemaObject <- list()
      if (!is.null(self$`scrub_geo`)) {
        UserScrubGeoSchemaObject[["scrub_geo"]] <-
          self$`scrub_geo`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserScrubGeoSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserScrubGeoSchemaObject
    },
    #' Deserialize JSON string into an instance of UserScrubGeoSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserScrubGeoSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserScrubGeoSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scrub_geo`)) {
        scrub_geo_object <- UserScrubGeoObjectSchema$new()
        scrub_geo_object$fromJSON(jsonlite::toJSON(this_object$scrub_geo, auto_unbox = TRUE, digits = NA))
        self$`scrub_geo` <- scrub_geo_object
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
    #' @return UserScrubGeoSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`scrub_geo`)) {
          sprintf(
          '"scrub_geo":
          %s
          ',
          jsonlite::toJSON(self$`scrub_geo`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserScrubGeoSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserScrubGeoSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserScrubGeoSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scrub_geo` <- UserScrubGeoObjectSchema$new()$fromJSON(jsonlite::toJSON(this_object$scrub_geo, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserScrubGeoSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserScrubGeoSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `scrub_geo`
      if (!is.null(input_json$`scrub_geo`)) {
        stopifnot(R6::is.R6(input_json$`scrub_geo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserScrubGeoSchema: the required field `scrub_geo` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserScrubGeoSchema
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
      # check if the required `scrub_geo` is null
      if (is.null(self$`scrub_geo`)) {
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
      # check if the required `scrub_geo` is null
      if (is.null(self$`scrub_geo`)) {
        invalid_fields["scrub_geo"] <- "Non-nullable required field `scrub_geo` cannot be null."
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
#UserScrubGeoSchema$unlock()
#
## Below is an example to define the print fnuction
#UserScrubGeoSchema$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UserScrubGeoSchema$lock()

