#' Create a new Geo
#'
#' @description
#' Geo Class
#'
#' @docType class
#' @title Geo
#' @description Geo Class
#' @format An \code{R6Class} generator object
#' @field bbox  list(numeric)
#' @field geometry  \link{Point} [optional]
#' @field properties  object
#' @field type  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Geo <- R6::R6Class(
  "Geo",
  public = list(
    `bbox` = NULL,
    `geometry` = NULL,
    `properties` = NULL,
    `type` = NULL,
    `_field_list` = c("bbox", "geometry", "properties", "type"),
    `additional_properties` = list(),
    #' Initialize a new Geo class.
    #'
    #' @description
    #' Initialize a new Geo class.
    #'
    #' @param bbox bbox
    #' @param properties properties
    #' @param type type
    #' @param geometry geometry
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`bbox`, `properties`, `type`, `geometry` = NULL, additional_properties = NULL, ...) {
      if (!missing(`bbox`)) {
        stopifnot(is.vector(`bbox`), length(`bbox`) != 0)
        sapply(`bbox`, function(x) stopifnot(is.character(x)))
        self$`bbox` <- `bbox`
      }
      if (!missing(`properties`)) {
        self$`properties` <- `properties`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("Feature"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"Feature\".", sep = ""))
        }
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
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
    #' @return Geo in JSON format
    #' @export
    toJSON = function() {
      GeoObject <- list()
      if (!is.null(self$`bbox`)) {
        GeoObject[["bbox"]] <-
          self$`bbox`
      }
      if (!is.null(self$`geometry`)) {
        GeoObject[["geometry"]] <-
          self$`geometry`$toJSON()
      }
      if (!is.null(self$`properties`)) {
        GeoObject[["properties"]] <-
          self$`properties`
      }
      if (!is.null(self$`type`)) {
        GeoObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        GeoObject[[key]] <- self$additional_properties[[key]]
      }

      GeoObject
    },
    #' Deserialize JSON string into an instance of Geo
    #'
    #' @description
    #' Deserialize JSON string into an instance of Geo
    #'
    #' @param input_json the JSON input
    #' @return the instance of Geo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bbox`)) {
        self$`bbox` <- ApiClient$new()$deserializeObj(this_object$`bbox`, "array[numeric]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`geometry`)) {
        geometry_object <- Point$new()
        geometry_object$fromJSON(jsonlite::toJSON(this_object$geometry, auto_unbox = TRUE, digits = NA))
        self$`geometry` <- geometry_object
      }
      if (!is.null(this_object$`properties`)) {
        self$`properties` <- this_object$`properties`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Feature"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Feature\".", sep = ""))
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
    #' @return Geo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`bbox`)) {
          sprintf(
            '"bbox":
             [%s]
          ',
            paste(unlist(lapply(self$`bbox`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`geometry`)) {
          sprintf(
            '"geometry":
          %s
          ',
            jsonlite::toJSON(self$`geometry`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`properties`)) {
          sprintf(
            '"properties":
            "%s"
                    ',
            self$`properties`
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
    #' Deserialize JSON string into an instance of Geo
    #'
    #' @description
    #' Deserialize JSON string into an instance of Geo
    #'
    #' @param input_json the JSON input
    #' @return the instance of Geo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bbox` <- ApiClient$new()$deserializeObj(this_object$`bbox`, "array[numeric]", loadNamespace("twitter"))
      self$`geometry` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$geometry, auto_unbox = TRUE, digits = NA))
      self$`properties` <- this_object$`properties`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Feature"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Feature\".", sep = ""))
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
    #' Validate JSON input with respect to Geo
    #'
    #' @description
    #' Validate JSON input with respect to Geo and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bbox`
      if (!is.null(input_json$`bbox`)) {
        stopifnot(is.vector(input_json$`bbox`), length(input_json$`bbox`) != 0)
        tmp <- sapply(input_json$`bbox`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Geo: the required field `bbox` is missing."))
      }
      # check the required field `properties`
      if (!is.null(input_json$`properties`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Geo: the required field `properties` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Geo: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Geo
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
      # check if the required `bbox` is null
      if (is.null(self$`bbox`)) {
        return(FALSE)
      }

      if (length(self$`bbox`) > 4) {
        return(FALSE)
      }
      if (length(self$`bbox`) < 4) {
        return(FALSE)
      }

      # check if the required `properties` is null
      if (is.null(self$`properties`)) {
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
      # check if the required `bbox` is null
      if (is.null(self$`bbox`)) {
        invalid_fields["bbox"] <- "Non-nullable required field `bbox` cannot be null."
      }

      if (length(self$`bbox`) > 4) {
        invalid_fields["bbox"] <- "Invalid length for `bbox`, number of items must be less than or equal to 4."
      }
      if (length(self$`bbox`) < 4) {
        invalid_fields["bbox"] <- "Invalid length for ``, number of items must be greater than or equal to 4."
      }

      # check if the required `properties` is null
      if (is.null(self$`properties`)) {
        invalid_fields["properties"] <- "Non-nullable required field `properties` cannot be null."
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
# Geo$unlock()
#
## Below is an example to define the print fnuction
# Geo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Geo$lock()
