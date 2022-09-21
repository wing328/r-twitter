#' Create a new Poll
#'
#' @description
#' Represent a Poll attached to a Tweet.
#'
#' @docType class
#' @title Poll
#' @description Poll Class
#' @format An \code{R6Class} generator object
#' @field duration_minutes  integer [optional]
#' @field end_datetime  character [optional]
#' @field id Unique identifier of this poll. character
#' @field options  list(\link{PollOption})
#' @field voting_status  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Poll <- R6::R6Class(
  "Poll",
  public = list(
    `duration_minutes` = NULL,
    `end_datetime` = NULL,
    `id` = NULL,
    `options` = NULL,
    `voting_status` = NULL,
    `_field_list` = c("duration_minutes", "end_datetime", "id", "options", "voting_status"),
    `additional_properties` = list(),
    #' Initialize a new Poll class.
    #'
    #' @description
    #' Initialize a new Poll class.
    #'
    #' @param id Unique identifier of this poll.
    #' @param options options
    #' @param duration_minutes duration_minutes
    #' @param end_datetime end_datetime
    #' @param voting_status voting_status
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `id`, `options`, `duration_minutes` = NULL, `end_datetime` = NULL, `voting_status` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`options`)) {
        stopifnot(is.vector(`options`), length(`options`) != 0)
        sapply(`options`, function(x) stopifnot(R6::is.R6(x)))
        self$`options` <- `options`
      }
      if (!is.null(`duration_minutes`)) {
        stopifnot(is.numeric(`duration_minutes`), length(`duration_minutes`) == 1)
        self$`duration_minutes` <- `duration_minutes`
      }
      if (!is.null(`end_datetime`)) {
        stopifnot(is.character(`end_datetime`), length(`end_datetime`) == 1)
        self$`end_datetime` <- `end_datetime`
      }
      if (!is.null(`voting_status`)) {
        if (!(`voting_status` %in% c("open", "closed"))) {
          stop(paste("Error! \"", `voting_status`, "\" cannot be assigned to `voting_status`. Must be \"open\", \"closed\".", sep = ""))
        }
        stopifnot(is.character(`voting_status`), length(`voting_status`) == 1)
        self$`voting_status` <- `voting_status`
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
    #' @return Poll in JSON format
    #' @export
    toJSON = function() {
      PollObject <- list()
      if (!is.null(self$`duration_minutes`)) {
        PollObject[["duration_minutes"]] <-
          self$`duration_minutes`
      }
      if (!is.null(self$`end_datetime`)) {
        PollObject[["end_datetime"]] <-
          self$`end_datetime`
      }
      if (!is.null(self$`id`)) {
        PollObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`options`)) {
        PollObject[["options"]] <-
          lapply(self$`options`, function(x) x$toJSON())
      }
      if (!is.null(self$`voting_status`)) {
        PollObject[["voting_status"]] <-
          self$`voting_status`
      }
      for (key in names(self$additional_properties)) {
        PollObject[[key]] <- self$additional_properties[[key]]
      }

      PollObject
    },
    #' Deserialize JSON string into an instance of Poll
    #'
    #' @description
    #' Deserialize JSON string into an instance of Poll
    #'
    #' @param input_json the JSON input
    #' @return the instance of Poll
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`duration_minutes`)) {
        self$`duration_minutes` <- this_object$`duration_minutes`
      }
      if (!is.null(this_object$`end_datetime`)) {
        self$`end_datetime` <- this_object$`end_datetime`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`options`)) {
        self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[PollOption]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`voting_status`)) {
        if (!is.null(this_object$`voting_status`) && !(this_object$`voting_status` %in% c("open", "closed"))) {
          stop(paste("Error! \"", this_object$`voting_status`, "\" cannot be assigned to `voting_status`. Must be \"open\", \"closed\".", sep = ""))
        }
        self$`voting_status` <- this_object$`voting_status`
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
    #' @return Poll in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`duration_minutes`)) {
          sprintf(
          '"duration_minutes":
            %d
                    ',
          self$`duration_minutes`
          )
        },
        if (!is.null(self$`end_datetime`)) {
          sprintf(
          '"end_datetime":
            "%s"
                    ',
          self$`end_datetime`
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
        if (!is.null(self$`options`)) {
          sprintf(
          '"options":
          [%s]
',
          paste(sapply(self$`options`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`voting_status`)) {
          sprintf(
          '"voting_status":
            "%s"
                    ',
          self$`voting_status`
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
    #' Deserialize JSON string into an instance of Poll
    #'
    #' @description
    #' Deserialize JSON string into an instance of Poll
    #'
    #' @param input_json the JSON input
    #' @return the instance of Poll
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`duration_minutes` <- this_object$`duration_minutes`
      self$`end_datetime` <- this_object$`end_datetime`
      self$`id` <- this_object$`id`
      self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[PollOption]", loadNamespace("twitter"))
      if (!is.null(this_object$`voting_status`) && !(this_object$`voting_status` %in% c("open", "closed"))) {
        stop(paste("Error! \"", this_object$`voting_status`, "\" cannot be assigned to `voting_status`. Must be \"open\", \"closed\".", sep = ""))
      }
      self$`voting_status` <- this_object$`voting_status`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Poll
    #'
    #' @description
    #' Validate JSON input with respect to Poll and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Poll: the required field `id` is missing."))
      }
      # check the required field `options`
      if (!is.null(input_json$`options`)) {
        stopifnot(is.vector(input_json$`options`), length(input_json$`options`) != 0)
        tmp <- sapply(input_json$`options`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Poll: the required field `options` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Poll
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
      if (self$`duration_minutes` > 10080) {
        return(FALSE)
      }
      if (self$`duration_minutes` < 5) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `options` is null
      if (is.null(self$`options`)) {
        return(FALSE)
      }

      if (length(self$`options`) > 4) {
        return(FALSE)
      }
      if (length(self$`options`) < 2) {
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
      if (self$`duration_minutes` > 10080) {
        invalid_fields["duration_minutes"] <- "Invalid value for `duration_minutes`, must be smaller than or equal to 10080."
      }
      if (self$`duration_minutes` < 5) {
        invalid_fields["duration_minutes"] <- "Invalid value for `duration_minutes`, must be bigger than or equal to 5."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `options` is null
      if (is.null(self$`options`)) {
        invalid_fields["options"] <- "Non-nullable required field `options` cannot be null."
      }

      if (length(self$`options`) > 4) {
        invalid_fields["options"] <- "Invalid length for `options`, number of items must be less than or equal to 4."
      }
      if (length(self$`options`) < 2) {
        invalid_fields["options"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
#Poll$unlock()
#
## Below is an example to define the print fnuction
#Poll$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#Poll$lock()

