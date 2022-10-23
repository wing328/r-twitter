#' Create a new Tweet
#'
#' @description
#' Tweet Class
#'
#' @docType class
#' @title Tweet
#' @description Tweet Class
#' @format An \code{R6Class} generator object
#' @field attachments  \link{TweetAttachments} [optional]
#' @field author_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field context_annotations  list(\link{ContextAnnotation}) [optional]
#' @field conversation_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field created_at Creation time of the Tweet. character [optional]
#' @field entities  \link{FullTextEntities} [optional]
#' @field geo  \link{TweetGeo} [optional]
#' @field id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field in_reply_to_user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field lang Language of the Tweet, if detected by Twitter. Returned as a BCP47 language tag. character [optional]
#' @field non_public_metrics  \link{TweetNonPublicMetrics} [optional]
#' @field organic_metrics  \link{TweetOrganicMetrics} [optional]
#' @field possibly_sensitive Indicates if this Tweet contains URLs marked as sensitive, for example content suitable for mature audiences. character [optional]
#' @field promoted_metrics  \link{TweetPromotedMetrics} [optional]
#' @field public_metrics  \link{TweetPublicMetrics} [optional]
#' @field referenced_tweets A list of Tweets this Tweet refers to. For example, if the parent Tweet is a Retweet, a Quoted Tweet or a Reply, it will include the related Tweet referenced to by its parent. list(\link{TweetReferencedTweetsInner}) [optional]
#' @field reply_settings  \link{ReplySettings} [optional]
#' @field source The name of the app the user Tweeted from. character [optional]
#' @field text The content of the Tweet. character
#' @field withheld  \link{TweetWithheld} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Tweet <- R6::R6Class(
  "Tweet",
  public = list(
    `attachments` = NULL,
    `author_id` = NULL,
    `context_annotations` = NULL,
    `conversation_id` = NULL,
    `created_at` = NULL,
    `entities` = NULL,
    `geo` = NULL,
    `id` = NULL,
    `in_reply_to_user_id` = NULL,
    `lang` = NULL,
    `non_public_metrics` = NULL,
    `organic_metrics` = NULL,
    `possibly_sensitive` = NULL,
    `promoted_metrics` = NULL,
    `public_metrics` = NULL,
    `referenced_tweets` = NULL,
    `reply_settings` = NULL,
    `source` = NULL,
    `text` = NULL,
    `withheld` = NULL,
    `_field_list` = c("attachments", "author_id", "context_annotations", "conversation_id", "created_at", "entities", "geo", "id", "in_reply_to_user_id", "lang", "non_public_metrics", "organic_metrics", "possibly_sensitive", "promoted_metrics", "public_metrics", "referenced_tweets", "reply_settings", "source", "text", "withheld"),
    `additional_properties` = list(),
    #' Initialize a new Tweet class.
    #'
    #' @description
    #' Initialize a new Tweet class.
    #'
    #' @param id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param text The content of the Tweet.
    #' @param attachments attachments
    #' @param author_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param context_annotations context_annotations
    #' @param conversation_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param created_at Creation time of the Tweet.
    #' @param entities entities
    #' @param geo geo
    #' @param in_reply_to_user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param lang Language of the Tweet, if detected by Twitter. Returned as a BCP47 language tag.
    #' @param non_public_metrics non_public_metrics
    #' @param organic_metrics organic_metrics
    #' @param possibly_sensitive Indicates if this Tweet contains URLs marked as sensitive, for example content suitable for mature audiences.
    #' @param promoted_metrics promoted_metrics
    #' @param public_metrics public_metrics
    #' @param referenced_tweets A list of Tweets this Tweet refers to. For example, if the parent Tweet is a Retweet, a Quoted Tweet or a Reply, it will include the related Tweet referenced to by its parent.
    #' @param reply_settings reply_settings
    #' @param source The name of the app the user Tweeted from.
    #' @param withheld withheld
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `text`, `attachments` = NULL, `author_id` = NULL, `context_annotations` = NULL, `conversation_id` = NULL, `created_at` = NULL, `entities` = NULL, `geo` = NULL, `in_reply_to_user_id` = NULL, `lang` = NULL, `non_public_metrics` = NULL, `organic_metrics` = NULL, `possibly_sensitive` = NULL, `promoted_metrics` = NULL, `public_metrics` = NULL, `referenced_tweets` = NULL, `reply_settings` = NULL, `source` = NULL, `withheld` = NULL, additional_properties = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!is.null(`attachments`)) {
        stopifnot(R6::is.R6(`attachments`))
        self$`attachments` <- `attachments`
      }
      if (!is.null(`author_id`)) {
        if (!(is.character(`author_id`) && length(`author_id`) == 1)) {
          stop(paste("Error! Invalid data for `author_id`. Must be a string:", `author_id`))
        }
        self$`author_id` <- `author_id`
      }
      if (!is.null(`context_annotations`)) {
        stopifnot(is.vector(`context_annotations`), length(`context_annotations`) != 0)
        sapply(`context_annotations`, function(x) stopifnot(R6::is.R6(x)))
        self$`context_annotations` <- `context_annotations`
      }
      if (!is.null(`conversation_id`)) {
        if (!(is.character(`conversation_id`) && length(`conversation_id`) == 1)) {
          stop(paste("Error! Invalid data for `conversation_id`. Must be a string:", `conversation_id`))
        }
        self$`conversation_id` <- `conversation_id`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`entities`)) {
        stopifnot(R6::is.R6(`entities`))
        self$`entities` <- `entities`
      }
      if (!is.null(`geo`)) {
        stopifnot(R6::is.R6(`geo`))
        self$`geo` <- `geo`
      }
      if (!is.null(`in_reply_to_user_id`)) {
        if (!(is.character(`in_reply_to_user_id`) && length(`in_reply_to_user_id`) == 1)) {
          stop(paste("Error! Invalid data for `in_reply_to_user_id`. Must be a string:", `in_reply_to_user_id`))
        }
        self$`in_reply_to_user_id` <- `in_reply_to_user_id`
      }
      if (!is.null(`lang`)) {
        if (!(is.character(`lang`) && length(`lang`) == 1)) {
          stop(paste("Error! Invalid data for `lang`. Must be a string:", `lang`))
        }
        self$`lang` <- `lang`
      }
      if (!is.null(`non_public_metrics`)) {
        stopifnot(R6::is.R6(`non_public_metrics`))
        self$`non_public_metrics` <- `non_public_metrics`
      }
      if (!is.null(`organic_metrics`)) {
        stopifnot(R6::is.R6(`organic_metrics`))
        self$`organic_metrics` <- `organic_metrics`
      }
      if (!is.null(`possibly_sensitive`)) {
        if (!(is.logical(`possibly_sensitive`) && length(`possibly_sensitive`) == 1)) {
          stop(paste("Error! Invalid data for `possibly_sensitive`. Must be a boolean:", `possibly_sensitive`))
        }
        self$`possibly_sensitive` <- `possibly_sensitive`
      }
      if (!is.null(`promoted_metrics`)) {
        stopifnot(R6::is.R6(`promoted_metrics`))
        self$`promoted_metrics` <- `promoted_metrics`
      }
      if (!is.null(`public_metrics`)) {
        stopifnot(R6::is.R6(`public_metrics`))
        self$`public_metrics` <- `public_metrics`
      }
      if (!is.null(`referenced_tweets`)) {
        stopifnot(is.vector(`referenced_tweets`), length(`referenced_tweets`) != 0)
        sapply(`referenced_tweets`, function(x) stopifnot(R6::is.R6(x)))
        self$`referenced_tweets` <- `referenced_tweets`
      }
      if (!is.null(`reply_settings`)) {
        stopifnot(R6::is.R6(`reply_settings`))
        self$`reply_settings` <- `reply_settings`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
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
    #' @return Tweet in JSON format
    #' @export
    toJSON = function() {
      TweetObject <- list()
      if (!is.null(self$`attachments`)) {
        TweetObject[["attachments"]] <-
          self$`attachments`$toJSON()
      }
      if (!is.null(self$`author_id`)) {
        TweetObject[["author_id"]] <-
          self$`author_id`
      }
      if (!is.null(self$`context_annotations`)) {
        TweetObject[["context_annotations"]] <-
          lapply(self$`context_annotations`, function(x) x$toJSON())
      }
      if (!is.null(self$`conversation_id`)) {
        TweetObject[["conversation_id"]] <-
          self$`conversation_id`
      }
      if (!is.null(self$`created_at`)) {
        TweetObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`entities`)) {
        TweetObject[["entities"]] <-
          self$`entities`$toJSON()
      }
      if (!is.null(self$`geo`)) {
        TweetObject[["geo"]] <-
          self$`geo`$toJSON()
      }
      if (!is.null(self$`id`)) {
        TweetObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`in_reply_to_user_id`)) {
        TweetObject[["in_reply_to_user_id"]] <-
          self$`in_reply_to_user_id`
      }
      if (!is.null(self$`lang`)) {
        TweetObject[["lang"]] <-
          self$`lang`
      }
      if (!is.null(self$`non_public_metrics`)) {
        TweetObject[["non_public_metrics"]] <-
          self$`non_public_metrics`$toJSON()
      }
      if (!is.null(self$`organic_metrics`)) {
        TweetObject[["organic_metrics"]] <-
          self$`organic_metrics`$toJSON()
      }
      if (!is.null(self$`possibly_sensitive`)) {
        TweetObject[["possibly_sensitive"]] <-
          self$`possibly_sensitive`
      }
      if (!is.null(self$`promoted_metrics`)) {
        TweetObject[["promoted_metrics"]] <-
          self$`promoted_metrics`$toJSON()
      }
      if (!is.null(self$`public_metrics`)) {
        TweetObject[["public_metrics"]] <-
          self$`public_metrics`$toJSON()
      }
      if (!is.null(self$`referenced_tweets`)) {
        TweetObject[["referenced_tweets"]] <-
          lapply(self$`referenced_tweets`, function(x) x$toJSON())
      }
      if (!is.null(self$`reply_settings`)) {
        TweetObject[["reply_settings"]] <-
          self$`reply_settings`$toJSON()
      }
      if (!is.null(self$`source`)) {
        TweetObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`text`)) {
        TweetObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`withheld`)) {
        TweetObject[["withheld"]] <-
          self$`withheld`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetObject[[key]] <- self$additional_properties[[key]]
      }

      TweetObject
    },
    #' Deserialize JSON string into an instance of Tweet
    #'
    #' @description
    #' Deserialize JSON string into an instance of Tweet
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tweet
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attachments`)) {
        attachments_object <- TweetAttachments$new()
        attachments_object$fromJSON(jsonlite::toJSON(this_object$attachments, auto_unbox = TRUE, digits = NA))
        self$`attachments` <- attachments_object
      }
      if (!is.null(this_object$`author_id`)) {
        self$`author_id` <- this_object$`author_id`
      }
      if (!is.null(this_object$`context_annotations`)) {
        self$`context_annotations` <- ApiClient$new()$deserializeObj(this_object$`context_annotations`, "array[ContextAnnotation]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`conversation_id`)) {
        self$`conversation_id` <- this_object$`conversation_id`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`entities`)) {
        entities_object <- FullTextEntities$new()
        entities_object$fromJSON(jsonlite::toJSON(this_object$entities, auto_unbox = TRUE, digits = NA))
        self$`entities` <- entities_object
      }
      if (!is.null(this_object$`geo`)) {
        geo_object <- TweetGeo$new()
        geo_object$fromJSON(jsonlite::toJSON(this_object$geo, auto_unbox = TRUE, digits = NA))
        self$`geo` <- geo_object
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`in_reply_to_user_id`)) {
        self$`in_reply_to_user_id` <- this_object$`in_reply_to_user_id`
      }
      if (!is.null(this_object$`lang`)) {
        self$`lang` <- this_object$`lang`
      }
      if (!is.null(this_object$`non_public_metrics`)) {
        non_public_metrics_object <- TweetNonPublicMetrics$new()
        non_public_metrics_object$fromJSON(jsonlite::toJSON(this_object$non_public_metrics, auto_unbox = TRUE, digits = NA))
        self$`non_public_metrics` <- non_public_metrics_object
      }
      if (!is.null(this_object$`organic_metrics`)) {
        organic_metrics_object <- TweetOrganicMetrics$new()
        organic_metrics_object$fromJSON(jsonlite::toJSON(this_object$organic_metrics, auto_unbox = TRUE, digits = NA))
        self$`organic_metrics` <- organic_metrics_object
      }
      if (!is.null(this_object$`possibly_sensitive`)) {
        self$`possibly_sensitive` <- this_object$`possibly_sensitive`
      }
      if (!is.null(this_object$`promoted_metrics`)) {
        promoted_metrics_object <- TweetPromotedMetrics$new()
        promoted_metrics_object$fromJSON(jsonlite::toJSON(this_object$promoted_metrics, auto_unbox = TRUE, digits = NA))
        self$`promoted_metrics` <- promoted_metrics_object
      }
      if (!is.null(this_object$`public_metrics`)) {
        public_metrics_object <- TweetPublicMetrics$new()
        public_metrics_object$fromJSON(jsonlite::toJSON(this_object$public_metrics, auto_unbox = TRUE, digits = NA))
        self$`public_metrics` <- public_metrics_object
      }
      if (!is.null(this_object$`referenced_tweets`)) {
        self$`referenced_tweets` <- ApiClient$new()$deserializeObj(this_object$`referenced_tweets`, "array[TweetReferencedTweetsInner]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`reply_settings`)) {
        reply_settings_object <- ReplySettings$new()
        reply_settings_object$fromJSON(jsonlite::toJSON(this_object$reply_settings, auto_unbox = TRUE, digits = NA))
        self$`reply_settings` <- reply_settings_object
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`withheld`)) {
        withheld_object <- TweetWithheld$new()
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
    #' @return Tweet in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`attachments`)) {
          sprintf(
            '"attachments":
          %s
          ',
            jsonlite::toJSON(self$`attachments`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`author_id`)) {
          sprintf(
            '"author_id":
            "%s"
                    ',
            self$`author_id`
          )
        },
        if (!is.null(self$`context_annotations`)) {
          sprintf(
            '"context_annotations":
          [%s]
',
            paste(sapply(self$`context_annotations`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`conversation_id`)) {
          sprintf(
            '"conversation_id":
            "%s"
                    ',
            self$`conversation_id`
          )
        },
        if (!is.null(self$`created_at`)) {
          sprintf(
            '"created_at":
            "%s"
                    ',
            self$`created_at`
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
        if (!is.null(self$`in_reply_to_user_id`)) {
          sprintf(
            '"in_reply_to_user_id":
            "%s"
                    ',
            self$`in_reply_to_user_id`
          )
        },
        if (!is.null(self$`lang`)) {
          sprintf(
            '"lang":
            "%s"
                    ',
            self$`lang`
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
        if (!is.null(self$`possibly_sensitive`)) {
          sprintf(
            '"possibly_sensitive":
            %s
                    ',
            tolower(self$`possibly_sensitive`)
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
        if (!is.null(self$`referenced_tweets`)) {
          sprintf(
            '"referenced_tweets":
          [%s]
',
            paste(sapply(self$`referenced_tweets`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`reply_settings`)) {
          sprintf(
            '"reply_settings":
          %s
          ',
            jsonlite::toJSON(self$`reply_settings`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`source`)) {
          sprintf(
            '"source":
            "%s"
                    ',
            self$`source`
          )
        },
        if (!is.null(self$`text`)) {
          sprintf(
            '"text":
            "%s"
                    ',
            self$`text`
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
    #' Deserialize JSON string into an instance of Tweet
    #'
    #' @description
    #' Deserialize JSON string into an instance of Tweet
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tweet
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`attachments` <- TweetAttachments$new()$fromJSON(jsonlite::toJSON(this_object$attachments, auto_unbox = TRUE, digits = NA))
      self$`author_id` <- this_object$`author_id`
      self$`context_annotations` <- ApiClient$new()$deserializeObj(this_object$`context_annotations`, "array[ContextAnnotation]", loadNamespace("twitter"))
      self$`conversation_id` <- this_object$`conversation_id`
      self$`created_at` <- this_object$`created_at`
      self$`entities` <- FullTextEntities$new()$fromJSON(jsonlite::toJSON(this_object$entities, auto_unbox = TRUE, digits = NA))
      self$`geo` <- TweetGeo$new()$fromJSON(jsonlite::toJSON(this_object$geo, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`in_reply_to_user_id` <- this_object$`in_reply_to_user_id`
      self$`lang` <- this_object$`lang`
      self$`non_public_metrics` <- TweetNonPublicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$non_public_metrics, auto_unbox = TRUE, digits = NA))
      self$`organic_metrics` <- TweetOrganicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$organic_metrics, auto_unbox = TRUE, digits = NA))
      self$`possibly_sensitive` <- this_object$`possibly_sensitive`
      self$`promoted_metrics` <- TweetPromotedMetrics$new()$fromJSON(jsonlite::toJSON(this_object$promoted_metrics, auto_unbox = TRUE, digits = NA))
      self$`public_metrics` <- TweetPublicMetrics$new()$fromJSON(jsonlite::toJSON(this_object$public_metrics, auto_unbox = TRUE, digits = NA))
      self$`referenced_tweets` <- ApiClient$new()$deserializeObj(this_object$`referenced_tweets`, "array[TweetReferencedTweetsInner]", loadNamespace("twitter"))
      self$`reply_settings` <- ReplySettings$new()$fromJSON(jsonlite::toJSON(this_object$reply_settings, auto_unbox = TRUE, digits = NA))
      self$`source` <- this_object$`source`
      self$`text` <- this_object$`text`
      self$`withheld` <- TweetWithheld$new()$fromJSON(jsonlite::toJSON(this_object$withheld, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Tweet
    #'
    #' @description
    #' Validate JSON input with respect to Tweet and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tweet: the required field `id` is missing."))
      }
      # check the required field `text`
      if (!is.null(input_json$`text`)) {
        if (!(is.character(input_json$`text`) && length(input_json$`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", input_json$`text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tweet: the required field `text` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Tweet
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
      if (!str_detect(self$`author_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      if (length(self$`context_annotations`) < 1) {
        return(FALSE)
      }

      if (!str_detect(self$`conversation_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`in_reply_to_user_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      if (length(self$`referenced_tweets`) < 1) {
        return(FALSE)
      }

      # check if the required `text` is null
      if (is.null(self$`text`)) {
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
      if (!str_detect(self$`author_id`, "^[0-9]{1,19}$")) {
        invalid_fields["author_id"] <- "Invalid value for `author_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      if (length(self$`context_annotations`) < 1) {
        invalid_fields["context_annotations"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (!str_detect(self$`conversation_id`, "^[0-9]{1,19}$")) {
        invalid_fields["conversation_id"] <- "Invalid value for `conversation_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      if (!str_detect(self$`in_reply_to_user_id`, "^[0-9]{1,19}$")) {
        invalid_fields["in_reply_to_user_id"] <- "Invalid value for `in_reply_to_user_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      if (length(self$`referenced_tweets`) < 1) {
        invalid_fields["referenced_tweets"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      # check if the required `text` is null
      if (is.null(self$`text`)) {
        invalid_fields["text"] <- "Non-nullable required field `text` cannot be null."
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
# Tweet$unlock()
#
## Below is an example to define the print fnuction
# Tweet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Tweet$lock()
