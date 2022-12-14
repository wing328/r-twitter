#' Create a new TweetCreateRequest
#'
#' @description
#' TweetCreateRequest Class
#'
#' @docType class
#' @title TweetCreateRequest
#' @description TweetCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field direct_message_deep_link Link to take the conversation from the public timeline to a private Direct Message. character [optional]
#' @field for_super_followers_only Exclusive Tweet for super followers. character [optional]
#' @field geo  \link{TweetCreateRequestGeo} [optional]
#' @field media  \link{TweetCreateRequestMedia} [optional]
#' @field poll  \link{TweetCreateRequestPoll} [optional]
#' @field quote_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field reply  \link{TweetCreateRequestReply} [optional]
#' @field reply_settings Settings to indicate who can reply to the Tweet. character [optional]
#' @field text The content of the Tweet. character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetCreateRequest <- R6::R6Class(
  "TweetCreateRequest",
  public = list(
    `direct_message_deep_link` = NULL,
    `for_super_followers_only` = NULL,
    `geo` = NULL,
    `media` = NULL,
    `poll` = NULL,
    `quote_tweet_id` = NULL,
    `reply` = NULL,
    `reply_settings` = NULL,
    `text` = NULL,
    `_field_list` = c("direct_message_deep_link", "for_super_followers_only", "geo", "media", "poll", "quote_tweet_id", "reply", "reply_settings", "text"),
    `additional_properties` = list(),
    #' Initialize a new TweetCreateRequest class.
    #'
    #' @description
    #' Initialize a new TweetCreateRequest class.
    #'
    #' @param direct_message_deep_link Link to take the conversation from the public timeline to a private Direct Message.
    #' @param for_super_followers_only Exclusive Tweet for super followers.. Default to FALSE.
    #' @param geo geo
    #' @param media media
    #' @param poll poll
    #' @param quote_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param reply reply
    #' @param reply_settings Settings to indicate who can reply to the Tweet.
    #' @param text The content of the Tweet.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`direct_message_deep_link` = NULL, `for_super_followers_only` = FALSE, `geo` = NULL, `media` = NULL, `poll` = NULL, `quote_tweet_id` = NULL, `reply` = NULL, `reply_settings` = NULL, `text` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`direct_message_deep_link`)) {
        if (!(is.character(`direct_message_deep_link`) && length(`direct_message_deep_link`) == 1)) {
          stop(paste("Error! Invalid data for `direct_message_deep_link`. Must be a string:", `direct_message_deep_link`))
        }
        self$`direct_message_deep_link` <- `direct_message_deep_link`
      }
      if (!is.null(`for_super_followers_only`)) {
        if (!(is.logical(`for_super_followers_only`) && length(`for_super_followers_only`) == 1)) {
          stop(paste("Error! Invalid data for `for_super_followers_only`. Must be a boolean:", `for_super_followers_only`))
        }
        self$`for_super_followers_only` <- `for_super_followers_only`
      }
      if (!is.null(`geo`)) {
        stopifnot(R6::is.R6(`geo`))
        self$`geo` <- `geo`
      }
      if (!is.null(`media`)) {
        stopifnot(R6::is.R6(`media`))
        self$`media` <- `media`
      }
      if (!is.null(`poll`)) {
        stopifnot(R6::is.R6(`poll`))
        self$`poll` <- `poll`
      }
      if (!is.null(`quote_tweet_id`)) {
        if (!(is.character(`quote_tweet_id`) && length(`quote_tweet_id`) == 1)) {
          stop(paste("Error! Invalid data for `quote_tweet_id`. Must be a string:", `quote_tweet_id`))
        }
        self$`quote_tweet_id` <- `quote_tweet_id`
      }
      if (!is.null(`reply`)) {
        stopifnot(R6::is.R6(`reply`))
        self$`reply` <- `reply`
      }
      if (!is.null(`reply_settings`)) {
        if (!(`reply_settings` %in% c("following", "mentionedUsers"))) {
          stop(paste("Error! \"", `reply_settings`, "\" cannot be assigned to `reply_settings`. Must be \"following\", \"mentionedUsers\".", sep = ""))
        }
        if (!(is.character(`reply_settings`) && length(`reply_settings`) == 1)) {
          stop(paste("Error! Invalid data for `reply_settings`. Must be a string:", `reply_settings`))
        }
        self$`reply_settings` <- `reply_settings`
      }
      if (!is.null(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
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
    #' @return TweetCreateRequest in JSON format
    #' @export
    toJSON = function() {
      TweetCreateRequestObject <- list()
      if (!is.null(self$`direct_message_deep_link`)) {
        TweetCreateRequestObject[["direct_message_deep_link"]] <-
          self$`direct_message_deep_link`
      }
      if (!is.null(self$`for_super_followers_only`)) {
        TweetCreateRequestObject[["for_super_followers_only"]] <-
          self$`for_super_followers_only`
      }
      if (!is.null(self$`geo`)) {
        TweetCreateRequestObject[["geo"]] <-
          self$`geo`$toJSON()
      }
      if (!is.null(self$`media`)) {
        TweetCreateRequestObject[["media"]] <-
          self$`media`$toJSON()
      }
      if (!is.null(self$`poll`)) {
        TweetCreateRequestObject[["poll"]] <-
          self$`poll`$toJSON()
      }
      if (!is.null(self$`quote_tweet_id`)) {
        TweetCreateRequestObject[["quote_tweet_id"]] <-
          self$`quote_tweet_id`
      }
      if (!is.null(self$`reply`)) {
        TweetCreateRequestObject[["reply"]] <-
          self$`reply`$toJSON()
      }
      if (!is.null(self$`reply_settings`)) {
        TweetCreateRequestObject[["reply_settings"]] <-
          self$`reply_settings`
      }
      if (!is.null(self$`text`)) {
        TweetCreateRequestObject[["text"]] <-
          self$`text`
      }
      for (key in names(self$additional_properties)) {
        TweetCreateRequestObject[[key]] <- self$additional_properties[[key]]
      }

      TweetCreateRequestObject
    },
    #' Deserialize JSON string into an instance of TweetCreateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`direct_message_deep_link`)) {
        self$`direct_message_deep_link` <- this_object$`direct_message_deep_link`
      }
      if (!is.null(this_object$`for_super_followers_only`)) {
        self$`for_super_followers_only` <- this_object$`for_super_followers_only`
      }
      if (!is.null(this_object$`geo`)) {
        geo_object <- TweetCreateRequestGeo$new()
        geo_object$fromJSON(jsonlite::toJSON(this_object$geo, auto_unbox = TRUE, digits = NA))
        self$`geo` <- geo_object
      }
      if (!is.null(this_object$`media`)) {
        media_object <- TweetCreateRequestMedia$new()
        media_object$fromJSON(jsonlite::toJSON(this_object$media, auto_unbox = TRUE, digits = NA))
        self$`media` <- media_object
      }
      if (!is.null(this_object$`poll`)) {
        poll_object <- TweetCreateRequestPoll$new()
        poll_object$fromJSON(jsonlite::toJSON(this_object$poll, auto_unbox = TRUE, digits = NA))
        self$`poll` <- poll_object
      }
      if (!is.null(this_object$`quote_tweet_id`)) {
        self$`quote_tweet_id` <- this_object$`quote_tweet_id`
      }
      if (!is.null(this_object$`reply`)) {
        reply_object <- TweetCreateRequestReply$new()
        reply_object$fromJSON(jsonlite::toJSON(this_object$reply, auto_unbox = TRUE, digits = NA))
        self$`reply` <- reply_object
      }
      if (!is.null(this_object$`reply_settings`)) {
        if (!is.null(this_object$`reply_settings`) && !(this_object$`reply_settings` %in% c("following", "mentionedUsers"))) {
          stop(paste("Error! \"", this_object$`reply_settings`, "\" cannot be assigned to `reply_settings`. Must be \"following\", \"mentionedUsers\".", sep = ""))
        }
        self$`reply_settings` <- this_object$`reply_settings`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
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
    #' @return TweetCreateRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`direct_message_deep_link`)) {
          sprintf(
            '"direct_message_deep_link":
            "%s"
                    ',
            self$`direct_message_deep_link`
          )
        },
        if (!is.null(self$`for_super_followers_only`)) {
          sprintf(
            '"for_super_followers_only":
            %s
                    ',
            tolower(self$`for_super_followers_only`)
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
        if (!is.null(self$`media`)) {
          sprintf(
            '"media":
          %s
          ',
            jsonlite::toJSON(self$`media`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`poll`)) {
          sprintf(
            '"poll":
          %s
          ',
            jsonlite::toJSON(self$`poll`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`quote_tweet_id`)) {
          sprintf(
            '"quote_tweet_id":
            "%s"
                    ',
            self$`quote_tweet_id`
          )
        },
        if (!is.null(self$`reply`)) {
          sprintf(
            '"reply":
          %s
          ',
            jsonlite::toJSON(self$`reply`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`reply_settings`)) {
          sprintf(
            '"reply_settings":
            "%s"
                    ',
            self$`reply_settings`
          )
        },
        if (!is.null(self$`text`)) {
          sprintf(
            '"text":
            "%s"
                    ',
            self$`text`
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
    #' Deserialize JSON string into an instance of TweetCreateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`direct_message_deep_link` <- this_object$`direct_message_deep_link`
      self$`for_super_followers_only` <- this_object$`for_super_followers_only`
      self$`geo` <- TweetCreateRequestGeo$new()$fromJSON(jsonlite::toJSON(this_object$geo, auto_unbox = TRUE, digits = NA))
      self$`media` <- TweetCreateRequestMedia$new()$fromJSON(jsonlite::toJSON(this_object$media, auto_unbox = TRUE, digits = NA))
      self$`poll` <- TweetCreateRequestPoll$new()$fromJSON(jsonlite::toJSON(this_object$poll, auto_unbox = TRUE, digits = NA))
      self$`quote_tweet_id` <- this_object$`quote_tweet_id`
      self$`reply` <- TweetCreateRequestReply$new()$fromJSON(jsonlite::toJSON(this_object$reply, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`reply_settings`) && !(this_object$`reply_settings` %in% c("following", "mentionedUsers"))) {
        stop(paste("Error! \"", this_object$`reply_settings`, "\" cannot be assigned to `reply_settings`. Must be \"following\", \"mentionedUsers\".", sep = ""))
      }
      self$`reply_settings` <- this_object$`reply_settings`
      self$`text` <- this_object$`text`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetCreateRequest
    #'
    #' @description
    #' Validate JSON input with respect to TweetCreateRequest and throw an exception if invalid
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
    #' @return String representation of TweetCreateRequest
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
      if (!str_detect(self$`quote_tweet_id`, "^[0-9]{1,19}$")) {
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
      if (!str_detect(self$`quote_tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["quote_tweet_id"] <- "Invalid value for `quote_tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
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
# TweetCreateRequest$unlock()
#
## Below is an example to define the print fnuction
# TweetCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetCreateRequest$lock()
