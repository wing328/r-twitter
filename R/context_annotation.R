#' Create a new ContextAnnotation
#'
#' @description
#' Annotation inferred from the Tweet text.
#'
#' @docType class
#' @title ContextAnnotation
#' @description ContextAnnotation Class
#' @format An \code{R6Class} generator object
#' @field domain  \link{ContextAnnotationDomainFields}
#' @field entity  \link{ContextAnnotationEntityFields}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContextAnnotation <- R6::R6Class(
  "ContextAnnotation",
  public = list(
    `domain` = NULL,
    `entity` = NULL,
    `_field_list` = c("domain", "entity"),
    `additional_properties` = list(),
    #' Initialize a new ContextAnnotation class.
    #'
    #' @description
    #' Initialize a new ContextAnnotation class.
    #'
    #' @param domain domain
    #' @param entity entity
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`domain`, `entity`, additional_properties = NULL, ...) {
      if (!missing(`domain`)) {
        stopifnot(R6::is.R6(`domain`))
        self$`domain` <- `domain`
      }
      if (!missing(`entity`)) {
        stopifnot(R6::is.R6(`entity`))
        self$`entity` <- `entity`
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
    #' @return ContextAnnotation in JSON format
    #' @export
    toJSON = function() {
      ContextAnnotationObject <- list()
      if (!is.null(self$`domain`)) {
        ContextAnnotationObject[["domain"]] <-
          self$`domain`$toJSON()
      }
      if (!is.null(self$`entity`)) {
        ContextAnnotationObject[["entity"]] <-
          self$`entity`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        ContextAnnotationObject[[key]] <- self$additional_properties[[key]]
      }

      ContextAnnotationObject
    },
    #' Deserialize JSON string into an instance of ContextAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContextAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContextAnnotation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`domain`)) {
        domain_object <- ContextAnnotationDomainFields$new()
        domain_object$fromJSON(jsonlite::toJSON(this_object$domain, auto_unbox = TRUE, digits = NA))
        self$`domain` <- domain_object
      }
      if (!is.null(this_object$`entity`)) {
        entity_object <- ContextAnnotationEntityFields$new()
        entity_object$fromJSON(jsonlite::toJSON(this_object$entity, auto_unbox = TRUE, digits = NA))
        self$`entity` <- entity_object
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
    #' @return ContextAnnotation in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`domain`)) {
          sprintf(
            '"domain":
          %s
          ',
            jsonlite::toJSON(self$`domain`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`entity`)) {
          sprintf(
            '"entity":
          %s
          ',
            jsonlite::toJSON(self$`entity`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of ContextAnnotation
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContextAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContextAnnotation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`domain` <- ContextAnnotationDomainFields$new()$fromJSON(jsonlite::toJSON(this_object$domain, auto_unbox = TRUE, digits = NA))
      self$`entity` <- ContextAnnotationEntityFields$new()$fromJSON(jsonlite::toJSON(this_object$entity, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ContextAnnotation
    #'
    #' @description
    #' Validate JSON input with respect to ContextAnnotation and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        stopifnot(R6::is.R6(input_json$`domain`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContextAnnotation: the required field `domain` is missing."))
      }
      # check the required field `entity`
      if (!is.null(input_json$`entity`)) {
        stopifnot(R6::is.R6(input_json$`entity`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContextAnnotation: the required field `entity` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContextAnnotation
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
      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `entity` is null
      if (is.null(self$`entity`)) {
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
      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `entity` is null
      if (is.null(self$`entity`)) {
        invalid_fields["entity"] <- "Non-nullable required field `entity` cannot be null."
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
# ContextAnnotation$unlock()
#
## Below is an example to define the print fnuction
# ContextAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContextAnnotation$lock()
