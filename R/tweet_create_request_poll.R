#' Create a new TweetCreateRequestPoll
#'
#' @description
#' Poll options for a Tweet with a poll. This is mutually exclusive from Media and Quote Tweet Id.
#'
#' @docType class
#' @title TweetCreateRequestPoll
#' @description TweetCreateRequestPoll Class
#' @format An \code{R6Class} generator object
#' @field duration_minutes Duration of the poll in minutes. integer
#' @field options  list(character)
#' @field reply_settings Settings to indicate who can reply to the Tweet. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetCreateRequestPoll <- R6::R6Class(
  "TweetCreateRequestPoll",
  public = list(
    `duration_minutes` = NULL,
    `options` = NULL,
    `reply_settings` = NULL,
    #' Initialize a new TweetCreateRequestPoll class.
    #'
    #' @description
    #' Initialize a new TweetCreateRequestPoll class.
    #'
    #' @param duration_minutes Duration of the poll in minutes.
    #' @param options options
    #' @param reply_settings Settings to indicate who can reply to the Tweet.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `duration_minutes`, `options`, `reply_settings` = NULL, ...
    ) {
      if (!missing(`duration_minutes`)) {
        stopifnot(is.numeric(`duration_minutes`), length(`duration_minutes`) == 1)
        self$`duration_minutes` <- `duration_minutes`
      }
      if (!missing(`options`)) {
        stopifnot(is.vector(`options`), length(`options`) != 0)
        sapply(`options`, function(x) stopifnot(is.character(x)))
        self$`options` <- `options`
      }
      if (!is.null(`reply_settings`)) {
        stopifnot(is.character(`reply_settings`), length(`reply_settings`) == 1)
        self$`reply_settings` <- `reply_settings`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestPoll in JSON format
    #' @export
    toJSON = function() {
      TweetCreateRequestPollObject <- list()
      if (!is.null(self$`duration_minutes`)) {
        TweetCreateRequestPollObject[["duration_minutes"]] <-
          self$`duration_minutes`
      }
      if (!is.null(self$`options`)) {
        TweetCreateRequestPollObject[["options"]] <-
          self$`options`
      }
      if (!is.null(self$`reply_settings`)) {
        TweetCreateRequestPollObject[["reply_settings"]] <-
          self$`reply_settings`
      }
      TweetCreateRequestPollObject
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestPoll
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestPoll
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestPoll
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`duration_minutes`)) {
        self$`duration_minutes` <- this_object$`duration_minutes`
      }
      if (!is.null(this_object$`options`)) {
        self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`reply_settings`)) {
        self$`reply_settings` <- this_object$`reply_settings`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestPoll in JSON format
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
        if (!is.null(self$`options`)) {
          sprintf(
          '"options":
             [%s]
          ',
          paste(unlist(lapply(self$`options`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`reply_settings`)) {
          sprintf(
          '"reply_settings":
            "%s"
                    ',
          self$`reply_settings`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestPoll
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestPoll
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestPoll
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`duration_minutes` <- this_object$`duration_minutes`
      self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[character]", loadNamespace("twitter"))
      self$`reply_settings` <- this_object$`reply_settings`
      self
    },
    #' Validate JSON input with respect to TweetCreateRequestPoll
    #'
    #' @description
    #' Validate JSON input with respect to TweetCreateRequestPoll and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `duration_minutes`
      if (!is.null(input_json$`duration_minutes`)) {
        stopifnot(is.numeric(input_json$`duration_minutes`), length(input_json$`duration_minutes`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetCreateRequestPoll: the required field `duration_minutes` is missing."))
      }
      # check the required field `options`
      if (!is.null(input_json$`options`)) {
        stopifnot(is.vector(input_json$`options`), length(input_json$`options`) != 0)
        tmp <- sapply(input_json$`options`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetCreateRequestPoll: the required field `options` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetCreateRequestPoll
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
      # check if the required `duration_minutes` is null
      if (is.null(self$`duration_minutes`)) {
        return(FALSE)
      }

      if (self$`duration_minutes` > 10080) {
        return(FALSE)
      }
      if (self$`duration_minutes` < 5) {
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
      # check if the required `duration_minutes` is null
      if (is.null(self$`duration_minutes`)) {
        invalid_fields["duration_minutes"] <- "Non-nullable required field `duration_minutes` cannot be null."
      }

      if (self$`duration_minutes` > 10080) {
        invalid_fields["duration_minutes"] <- "Invalid value for `duration_minutes`, must be smaller than or equal to 10080."
      }
      if (self$`duration_minutes` < 5) {
        invalid_fields["duration_minutes"] <- "Invalid value for `duration_minutes`, must be bigger than or equal to 5."
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
#TweetCreateRequestPoll$unlock()
#
## Below is an example to define the print fnuction
#TweetCreateRequestPoll$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TweetCreateRequestPoll$lock()

