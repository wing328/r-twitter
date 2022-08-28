#' Create a new Place
#'
#' @description
#' Place Class
#'
#' @docType class
#' @title Place
#' @description Place Class
#' @format An \code{R6Class} generator object
#' @field contained_within  list(character) [optional]
#' @field country  character [optional]
#' @field country_code  character [optional]
#' @field full_name  character
#' @field geo  \link{Geo} [optional]
#' @field id  character
#' @field name  character [optional]
#' @field place_type  \link{PlaceType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Place <- R6::R6Class(
  "Place",
  public = list(
    `contained_within` = NULL,
    `country` = NULL,
    `country_code` = NULL,
    `full_name` = NULL,
    `geo` = NULL,
    `id` = NULL,
    `name` = NULL,
    `place_type` = NULL,
    #' Initialize a new Place class.
    #'
    #' @description
    #' Initialize a new Place class.
    #'
    #' @param full_name The full name of this place.
    #' @param id The identifier for this place.
    #' @param contained_within contained_within
    #' @param country The full name of the county in which this place exists.
    #' @param country_code A two-letter ISO 3166-1 alpha-2 country code.
    #' @param geo geo
    #' @param name The human readable name of this place.
    #' @param place_type place_type
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `full_name`, `id`, `contained_within` = NULL, `country` = NULL, `country_code` = NULL, `geo` = NULL, `name` = NULL, `place_type` = NULL, ...
    ) {
      if (!missing(`full_name`)) {
        stopifnot(is.character(`full_name`), length(`full_name`) == 1)
        self$`full_name` <- `full_name`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`contained_within`)) {
        stopifnot(is.vector(`contained_within`), length(`contained_within`) != 0)
        sapply(`contained_within`, function(x) stopifnot(is.character(x)))
        self$`contained_within` <- `contained_within`
      }
      if (!is.null(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!is.null(`country_code`)) {
        stopifnot(is.character(`country_code`), length(`country_code`) == 1)
        self$`country_code` <- `country_code`
      }
      if (!is.null(`geo`)) {
        stopifnot(R6::is.R6(`geo`))
        self$`geo` <- `geo`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!is.null(`place_type`)) {
        stopifnot(R6::is.R6(`place_type`))
        self$`place_type` <- `place_type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Place in JSON format
    #' @export
    toJSON = function() {
      PlaceObject <- list()
      if (!is.null(self$`contained_within`)) {
        PlaceObject[["contained_within"]] <-
          self$`contained_within`
      }
      if (!is.null(self$`country`)) {
        PlaceObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`country_code`)) {
        PlaceObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`full_name`)) {
        PlaceObject[["full_name"]] <-
          self$`full_name`
      }
      if (!is.null(self$`geo`)) {
        PlaceObject[["geo"]] <-
          self$`geo`$toJSON()
      }
      if (!is.null(self$`id`)) {
        PlaceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PlaceObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`place_type`)) {
        PlaceObject[["place_type"]] <-
          self$`place_type`$toJSON()
      }

      PlaceObject
    },
    #' Deserialize JSON string into an instance of Place
    #'
    #' @description
    #' Deserialize JSON string into an instance of Place
    #'
    #' @param input_json the JSON input
    #' @return the instance of Place
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contained_within`)) {
        self$`contained_within` <- ApiClient$new()$deserializeObj(this_object$`contained_within`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
      }
      if (!is.null(this_object$`geo`)) {
        geo_object <- Geo$new()
        geo_object$fromJSON(jsonlite::toJSON(this_object$geo, auto_unbox = TRUE, digits = NA))
        self$`geo` <- geo_object
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`place_type`)) {
        place_type_object <- PlaceType$new()
        place_type_object$fromJSON(jsonlite::toJSON(this_object$place_type, auto_unbox = TRUE, digits = NA))
        self$`place_type` <- place_type_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Place in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`contained_within`)) {
          sprintf(
          '"contained_within":
             [%s]
          ',
          paste(unlist(lapply(self$`contained_within`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`country`)) {
          sprintf(
          '"country":
            "%s"
                    ',
          self$`country`
          )
        },
        if (!is.null(self$`country_code`)) {
          sprintf(
          '"country_code":
            "%s"
                    ',
          self$`country_code`
          )
        },
        if (!is.null(self$`full_name`)) {
          sprintf(
          '"full_name":
            "%s"
                    ',
          self$`full_name`
          )
        },
        if (!is.null(self$`geo`)) {
          sprintf(
          '"geo":
          %s
          ',
          jsonlite::toJSON(self$`geo`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`place_type`)) {
          sprintf(
          '"place_type":
          %s
          ',
          jsonlite::toJSON(self$`place_type`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Place
    #'
    #' @description
    #' Deserialize JSON string into an instance of Place
    #'
    #' @param input_json the JSON input
    #' @return the instance of Place
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contained_within` <- ApiClient$new()$deserializeObj(this_object$`contained_within`, "array[character]", loadNamespace("twitter"))
      self$`country` <- this_object$`country`
      self$`country_code` <- this_object$`country_code`
      self$`full_name` <- this_object$`full_name`
      self$`geo` <- Geo$new()$fromJSON(jsonlite::toJSON(this_object$geo, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`place_type` <- PlaceType$new()$fromJSON(jsonlite::toJSON(this_object$place_type, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Place
    #'
    #' @description
    #' Validate JSON input with respect to Place and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `full_name`
      if (!is.null(input_json$`full_name`)) {
        stopifnot(is.character(input_json$`full_name`), length(input_json$`full_name`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Place: the required field `full_name` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Place: the required field `id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Place
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
      if (length(self$`contained_within`) < 1) {
        return(FALSE)
      }

      if (!str_detect(self$`country_code`, "^[A-Z]{2}$")) {
        return(FALSE)
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
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
      if (length(self$`contained_within`) < 1) {
        invalid_fields["contained_within"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (!str_detect(self$`country_code`, "^[A-Z]{2}$")) {
        invalid_fields["country_code"] <- "Invalid value for `country_code`, must conform to the pattern ^[A-Z]{2}$."
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        invalid_fields["full_name"] <- "Non-nullable required field `full_name` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
Place$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
Place$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
Place$lock()

