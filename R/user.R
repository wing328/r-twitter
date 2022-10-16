#' Create a new User
#'
#' @description
#' The Twitter User object.
#'
#' @docType class
#' @title User
#' @description User Class
#' @format An \code{R6Class} generator object
#' @field created_at Creation time of this User. character [optional]
#' @field description The text of this User's profile description (also known as bio), if the User provided one. character [optional]
#' @field entities  \link{UserEntities} [optional]
#' @field id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field location The location specified in the User's profile, if the User provided one. As this is a freeform value, it may not indicate a valid location, but it may be fuzzily evaluated when performing searches with location queries. character [optional]
#' @field name The friendly name of this User, as shown on their profile. character
#' @field pinned_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field profile_image_url The URL to the profile image for this User. character [optional]
#' @field protected Indicates if this User has chosen to protect their Tweets (in other words, if this User's Tweets are private). character [optional]
#' @field public_metrics  \link{UserPublicMetrics} [optional]
#' @field url The URL specified in the User's profile. character [optional]
#' @field username The Twitter handle (screen name) of this user. character
#' @field verified Indicate if this User is a verified Twitter User. character [optional]
#' @field withheld  \link{UserWithheld} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
User <- R6::R6Class(
  "User",
  public = list(
    `created_at` = NULL,
    `description` = NULL,
    `entities` = NULL,
    `id` = NULL,
    `location` = NULL,
    `name` = NULL,
    `pinned_tweet_id` = NULL,
    `profile_image_url` = NULL,
    `protected` = NULL,
    `public_metrics` = NULL,
    `url` = NULL,
    `username` = NULL,
    `verified` = NULL,
    `withheld` = NULL,
    `_field_list` = c("created_at", "description", "entities", "id", "location", "name", "pinned_tweet_id", "profile_image_url", "protected", "public_metrics", "url", "username", "verified", "withheld"),
    `additional_properties` = list(),
    #' Initialize a new User class.
    #'
    #' @description
    #' Initialize a new User class.
    #'
    #' @param id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param name The friendly name of this User, as shown on their profile.
    #' @param username The Twitter handle (screen name) of this user.
    #' @param created_at Creation time of this User.
    #' @param description The text of this User's profile description (also known as bio), if the User provided one.
    #' @param entities entities
    #' @param location The location specified in the User's profile, if the User provided one. As this is a freeform value, it may not indicate a valid location, but it may be fuzzily evaluated when performing searches with location queries.
    #' @param pinned_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param profile_image_url The URL to the profile image for this User.
    #' @param protected Indicates if this User has chosen to protect their Tweets (in other words, if this User's Tweets are private).
    #' @param public_metrics public_metrics
    #' @param url The URL specified in the User's profile.
    #' @param verified Indicate if this User is a verified Twitter User.
    #' @param withheld withheld
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `name`, `username`, `created_at` = NULL, `description` = NULL, `entities` = NULL, `location` = NULL, `pinned_tweet_id` = NULL, `profile_image_url` = NULL, `protected` = NULL, `public_metrics` = NULL, `url` = NULL, `verified` = NULL, `withheld` = NULL, additional_properties = NULL, ...) {
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid DateTime. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!is.null(`entities`)) {
        stopifnot(R6::is.R6(`entities`))
        self$`entities` <- `entities`
      }
      if (!is.null(`location`)) {
        stopifnot(is.character(`location`), length(`location`) == 1)
        self$`location` <- `location`
      }
      if (!is.null(`pinned_tweet_id`)) {
        stopifnot(is.character(`pinned_tweet_id`), length(`pinned_tweet_id`) == 1)
        self$`pinned_tweet_id` <- `pinned_tweet_id`
      }
      if (!is.null(`profile_image_url`)) {
        stopifnot(is.character(`profile_image_url`), length(`profile_image_url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`profile_image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", `profile_image_url`))
        }
        self$`profile_image_url` <- `profile_image_url`
      }
      if (!is.null(`protected`)) {
        stopifnot(is.logical(`protected`), length(`protected`) == 1)
        self$`protected` <- `protected`
      }
      if (!is.null(`public_metrics`)) {
        stopifnot(R6::is.R6(`public_metrics`))
        self$`public_metrics` <- `public_metrics`
      }
      if (!is.null(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!is.null(`verified`)) {
        stopifnot(is.logical(`verified`), length(`verified`) == 1)
        self$`verified` <- `verified`
      }
      if (!is.null(`withheld`)) {
        stopifnot(R6::is.R6(`withheld`))
        self$`withheld` <- `withheld`
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
    #' @return User in JSON format
    #' @export
    toJSON = function() {
      UserObject <- list()
      if (!is.null(self$`created_at`)) {
        UserObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`description`)) {
        UserObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`entities`)) {
        UserObject[["entities"]] <-
          self$`entities`$toJSON()
      }
      if (!is.null(self$`id`)) {
        UserObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`location`)) {
        UserObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`name`)) {
        UserObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`pinned_tweet_id`)) {
        UserObject[["pinned_tweet_id"]] <-
          self$`pinned_tweet_id`
      }
      if (!is.null(self$`profile_image_url`)) {
        UserObject[["profile_image_url"]] <-
          self$`profile_image_url`
      }
      if (!is.null(self$`protected`)) {
        UserObject[["protected"]] <-
          self$`protected`
      }
      if (!is.null(self$`public_metrics`)) {
        UserObject[["public_metrics"]] <-
          self$`public_metrics`$toJSON()
      }
      if (!is.null(self$`url`)) {
        UserObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`username`)) {
        UserObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`verified`)) {
        UserObject[["verified"]] <-
          self$`verified`
      }
      if (!is.null(self$`withheld`)) {
        UserObject[["withheld"]] <-
          self$`withheld`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserObject[[key]] <- self$additional_properties[[key]]
      }

      UserObject
    },
    #' Deserialize JSON string into an instance of User
    #'
    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`entities`)) {
        entities_object <- UserEntities$new()
        entities_object$fromJSON(jsonlite::toJSON(this_object$entities, auto_unbox = TRUE, digits = NA))
        self$`entities` <- entities_object
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`pinned_tweet_id`)) {
        self$`pinned_tweet_id` <- this_object$`pinned_tweet_id`
      }
      if (!is.null(this_object$`profile_image_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`profile_image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", this_object$`profile_image_url`))
        }
        self$`profile_image_url` <- this_object$`profile_image_url`
      }
      if (!is.null(this_object$`protected`)) {
        self$`protected` <- this_object$`protected`
      }
      if (!is.null(this_object$`public_metrics`)) {
        public_metrics_object <- UserPublicMetrics$new()
        public_metrics_object$fromJSON(jsonlite::toJSON(this_object$public_metrics, auto_unbox = TRUE, digits = NA))
        self$`public_metrics` <- public_metrics_object
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`verified`)) {
        self$`verified` <- this_object$`verified`
      }
      if (!is.null(this_object$`withheld`)) {
        withheld_object <- UserWithheld$new()
        withheld_object$fromJSON(jsonlite::toJSON(this_object$withheld, auto_unbox = TRUE, digits = NA))
        self$`withheld` <- withheld_object
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
    #' @return User in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`created_at`)) {
          sprintf(
            '"created_at":
            "%s"
                    ',
            self$`created_at`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
            '"description":
            "%s"
                    ',
            self$`description`
          )
        },
        if (!is.null(self$`entities`)) {
          sprintf(
            '"entities":
          %s
          ',
            jsonlite::toJSON(self$`entities`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`location`)) {
          sprintf(
            '"location":
            "%s"
                    ',
            self$`location`
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
        if (!is.null(self$`pinned_tweet_id`)) {
          sprintf(
            '"pinned_tweet_id":
            "%s"
                    ',
            self$`pinned_tweet_id`
          )
        },
        if (!is.null(self$`profile_image_url`)) {
          sprintf(
            '"profile_image_url":
            "%s"
                    ',
            self$`profile_image_url`
          )
        },
        if (!is.null(self$`protected`)) {
          sprintf(
            '"protected":
            %s
                    ',
            tolower(self$`protected`)
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
        if (!is.null(self$`url`)) {
          sprintf(
            '"url":
            "%s"
                    ',
            self$`url`
          )
        },
        if (!is.null(self$`username`)) {
          sprintf(
            '"username":
            "%s"
                    ',
            self$`username`
          )
        },
        if (!is.null(self$`verified`)) {
          sprintf(
            '"verified":
            %s
                    ',
            tolower(self$`verified`)
          )
        },
        if (!is.null(self$`withheld`)) {
          sprintf(
            '"withheld":
          %s
          ',
            jsonlite::toJSON(self$`withheld`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of User
    #'
    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`description` <- this_object$`description`
      self$`entities` <- UserEntities$new()$fromJSON(jsonlite::toJSON(this_object$entities, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`location` <- this_object$`location`
      self$`name` <- this_object$`name`
      self$`pinned_tweet_id` <- this_object$`pinned_tweet_id`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`profile_image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid URL:", this_object$`profile_image_url`))
      }
      self$`profile_image_url` <- this_object$`profile_image_url`
      self$`protected` <- this_object$`protected`
      self$`public_metrics` <- UserPublicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$public_metrics, auto_unbox = TRUE, digits = NA))
      self$`url` <- this_object$`url`
      self$`username` <- this_object$`username`
      self$`verified` <- this_object$`verified`
      self$`withheld` <- UserWithheld$new()$fromJSON(jsonlite::toJSON(this_object$withheld, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to User
    #'
    #' @description
    #' Validate JSON input with respect to User and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        stopifnot(is.character(input_json$`name`), length(input_json$`name`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `name` is missing."))
      }
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        stopifnot(is.character(input_json$`username`), length(input_json$`username`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `username` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of User
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (!str_detect(self$`pinned_tweet_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      if (!str_detect(self$`username`, "^[A-Za-z0-9_]{1,15}$")) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (!str_detect(self$`pinned_tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["pinned_tweet_id"] <- "Invalid value for `pinned_tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      if (!str_detect(self$`username`, "^[A-Za-z0-9_]{1,15}$")) {
        invalid_fields["username"] <- "Invalid value for `username`, must conform to the pattern ^[A-Za-z0-9_]{1,15}$."
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
# User$unlock()
#
## Below is an example to define the print fnuction
# User$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# User$lock()
