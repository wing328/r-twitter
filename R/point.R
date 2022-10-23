#' Create a new Point
#'
#' @description
#' A [GeoJson Point](https://tools.ietf.org/html/rfc7946#section-3.1.2) geometry object.
#'
#' @docType class
#' @title Point
#' @description Point Class
#' @format An \code{R6Class} generator object
#' @field coordinates A [GeoJson Position](https://tools.ietf.org/html/rfc7946#section-3.1.1) in the format `[longitude,latitude]`. list(numeric)
#' @field type  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Point <- R6::R6Class(
  "Point",
  public = list(
    `coordinates` = NULL,
    `type` = NULL,
    `_field_list` = c("coordinates", "type"),
    `additional_properties` = list(),
    #' Initialize a new Point class.
    #'
    #' @description
    #' Initialize a new Point class.
    #'
    #' @param coordinates A [GeoJson Position](https://tools.ietf.org/html/rfc7946#section-3.1.1) in the format `[longitude,latitude]`.
    #' @param type type
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`coordinates`, `type`, additional_properties = NULL, ...) {
      if (!missing(`coordinates`)) {
        stopifnot(is.vector(`coordinates`), length(`coordinates`) != 0)
        sapply(`coordinates`, function(x) stopifnot(is.character(x)))
        self$`coordinates` <- `coordinates`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("Point"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"Point\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return Point in JSON format
    #' @export
    toJSON = function() {
      PointObject <- list()
      if (!is.null(self$`coordinates`)) {
        PointObject[["coordinates"]] <-
          self$`coordinates`
      }
      if (!is.null(self$`type`)) {
        PointObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        PointObject[[key]] <- self$additional_properties[[key]]
      }

      PointObject
    },
    #' Deserialize JSON string into an instance of Point
    #'
    #' @description
    #' Deserialize JSON string into an instance of Point
    #'
    #' @param input_json the JSON input
    #' @return the instance of Point
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coordinates`)) {
        self$`coordinates` <- ApiClient$new()$deserializeObj(this_object$`coordinates`, "array[numeric]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Point"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Point\".", sep = ""))
        }
        self$`type` <- this_object$`type`
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
    #' @return Point in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`coordinates`)) {
          sprintf(
            '"coordinates":
             [%s]
          ',
            paste(unlist(lapply(self$`coordinates`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
            '"type":
            "%s"
                    ',
            self$`type`
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
    #' Deserialize JSON string into an instance of Point
    #'
    #' @description
    #' Deserialize JSON string into an instance of Point
    #'
    #' @param input_json the JSON input
    #' @return the instance of Point
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coordinates` <- ApiClient$new()$deserializeObj(this_object$`coordinates`, "array[numeric]", loadNamespace("twitter"))
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Point"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Point\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Point
    #'
    #' @description
    #' Validate JSON input with respect to Point and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `coordinates`
      if (!is.null(input_json$`coordinates`)) {
        stopifnot(is.vector(input_json$`coordinates`), length(input_json$`coordinates`) != 0)
        tmp <- sapply(input_json$`coordinates`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Point: the required field `coordinates` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Point: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Point
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
      # check if the required `coordinates` is null
      if (is.null(self$`coordinates`)) {
        return(FALSE)
      }

      if (length(self$`coordinates`) > 2) {
        return(FALSE)
      }
      if (length(self$`coordinates`) < 2) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `coordinates` is null
      if (is.null(self$`coordinates`)) {
        invalid_fields["coordinates"] <- "Non-nullable required field `coordinates` cannot be null."
      }

      if (length(self$`coordinates`) > 2) {
        invalid_fields["coordinates"] <- "Invalid length for `coordinates`, number of items must be less than or equal to 2."
      }
      if (length(self$`coordinates`) < 2) {
        invalid_fields["coordinates"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# Point$unlock()
#
## Below is an example to define the print fnuction
# Point$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Point$lock()
