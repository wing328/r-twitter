#' @docType class
#' @title UserComplianceData
#'
#' @description UserComplianceData Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserComplianceData <- R6::R6Class(
  "UserComplianceData",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("UserDeleteComplianceSchema", "UserProfileModificationComplianceSchema", "UserProtectComplianceSchema", "UserScrubGeoSchema", "UserSuspendComplianceSchema", "UserUndeleteComplianceSchema", "UserUnprotectComplianceSchema", "UserUnsuspendComplianceSchema", "UserWithheldComplianceSchema"),
    #' Initialize a new UserComplianceData.
    #'
    #' @description
    #' Initialize a new UserComplianceData.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "UserDeleteComplianceSchema", "UserProfileModificationComplianceSchema", "UserProtectComplianceSchema", "UserScrubGeoSchema", "UserSuspendComplianceSchema", "UserUndeleteComplianceSchema", "UserUnprotectComplianceSchema", "UserUnsuspendComplianceSchema", "UserWithheldComplianceSchema"
    #' @export
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserDeleteComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserDeleteComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserProfileModificationComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserProfileModificationComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserProtectComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserProtectComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserScrubGeoSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserScrubGeoSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserSuspendComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserSuspendComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserUndeleteComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserUndeleteComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserUnprotectComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserUnprotectComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserUnsuspendComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserUnsuspendComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserWithheldComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "UserWithheldComplianceSchema"
      } else {
        stop(paste("Failed to initialize UserComplianceData with oneOf schemas UserDeleteComplianceSchema, UserProfileModificationComplianceSchema, UserProtectComplianceSchema, UserScrubGeoSchema, UserSuspendComplianceSchema, UserUndeleteComplianceSchema, UserUnprotectComplianceSchema, UserUnsuspendComplianceSchema, UserWithheldComplianceSchema. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },
    #' Deserialize JSON string into an instance of UserComplianceData.
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserComplianceData.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #' @return An instance of UserComplianceData.
    #' @export
    fromJSONString = function(input) {
      self$fromJSON(input)
    },
    #' Deserialize JSON string into an instance of UserComplianceData.
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserComplianceData.
    #'
    #' @param input The input JSON.
    #' @return An instance of UserComplianceData.
    #' @export
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      UserProtectComplianceSchema_result <- tryCatch({
          UserProtectComplianceSchema$public_methods$validateJSON(input)
          UserProtectComplianceSchema_instance <- UserProtectComplianceSchema$new()
          instance <- UserProtectComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserProtectComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserProtectComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserProtectComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserProtectComplianceSchema_result["message"])
      }

      UserUnprotectComplianceSchema_result <- tryCatch({
          UserUnprotectComplianceSchema$public_methods$validateJSON(input)
          UserUnprotectComplianceSchema_instance <- UserUnprotectComplianceSchema$new()
          instance <- UserUnprotectComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserUnprotectComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserUnprotectComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserUnprotectComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserUnprotectComplianceSchema_result["message"])
      }

      UserDeleteComplianceSchema_result <- tryCatch({
          UserDeleteComplianceSchema$public_methods$validateJSON(input)
          UserDeleteComplianceSchema_instance <- UserDeleteComplianceSchema$new()
          instance <- UserDeleteComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserDeleteComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserDeleteComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserDeleteComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserDeleteComplianceSchema_result["message"])
      }

      UserUndeleteComplianceSchema_result <- tryCatch({
          UserUndeleteComplianceSchema$public_methods$validateJSON(input)
          UserUndeleteComplianceSchema_instance <- UserUndeleteComplianceSchema$new()
          instance <- UserUndeleteComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserUndeleteComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserUndeleteComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserUndeleteComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserUndeleteComplianceSchema_result["message"])
      }

      UserSuspendComplianceSchema_result <- tryCatch({
          UserSuspendComplianceSchema$public_methods$validateJSON(input)
          UserSuspendComplianceSchema_instance <- UserSuspendComplianceSchema$new()
          instance <- UserSuspendComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserSuspendComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserSuspendComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserSuspendComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserSuspendComplianceSchema_result["message"])
      }

      UserUnsuspendComplianceSchema_result <- tryCatch({
          UserUnsuspendComplianceSchema$public_methods$validateJSON(input)
          UserUnsuspendComplianceSchema_instance <- UserUnsuspendComplianceSchema$new()
          instance <- UserUnsuspendComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserUnsuspendComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserUnsuspendComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserUnsuspendComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserUnsuspendComplianceSchema_result["message"])
      }

      UserWithheldComplianceSchema_result <- tryCatch({
          UserWithheldComplianceSchema$public_methods$validateJSON(input)
          UserWithheldComplianceSchema_instance <- UserWithheldComplianceSchema$new()
          instance <- UserWithheldComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserWithheldComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserWithheldComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserWithheldComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserWithheldComplianceSchema_result["message"])
      }

      UserScrubGeoSchema_result <- tryCatch({
          UserScrubGeoSchema$public_methods$validateJSON(input)
          UserScrubGeoSchema_instance <- UserScrubGeoSchema$new()
          instance <- UserScrubGeoSchema_instance$fromJSON(input)
          instance_type <- "UserScrubGeoSchema"
          matched_schemas <- append(matched_schemas, "UserScrubGeoSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserScrubGeoSchema_result["error"])) {
        error_messages <- append(error_messages, UserScrubGeoSchema_result["message"])
      }

      UserProfileModificationComplianceSchema_result <- tryCatch({
          UserProfileModificationComplianceSchema$public_methods$validateJSON(input)
          UserProfileModificationComplianceSchema_instance <- UserProfileModificationComplianceSchema$new()
          instance <- UserProfileModificationComplianceSchema_instance$fromJSON(input)
          instance_type <- "UserProfileModificationComplianceSchema"
          matched_schemas <- append(matched_schemas, "UserProfileModificationComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(UserProfileModificationComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, UserProfileModificationComplianceSchema_result["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop("Multiple matches found when deserializing the payload into UserComplianceData with oneOf schemas UserDeleteComplianceSchema, UserProfileModificationComplianceSchema, UserProtectComplianceSchema, UserScrubGeoSchema, UserSuspendComplianceSchema, UserUndeleteComplianceSchema, UserUnprotectComplianceSchema, UserUnsuspendComplianceSchema, UserWithheldComplianceSchema.")
      } else {
        # no match
        stop(paste("No match found when deserializing the payload into UserComplianceData with oneOf schemas UserDeleteComplianceSchema, UserProfileModificationComplianceSchema, UserProtectComplianceSchema, UserScrubGeoSchema, UserSuspendComplianceSchema, UserUndeleteComplianceSchema, UserUnprotectComplianceSchema, UserUnsuspendComplianceSchema, UserWithheldComplianceSchema. Details: ",
                   paste(error_messages, collapse = ", ")))
      }

      self
    },
    #' Serialize UserComplianceData to JSON string.
    #'
    #' @description
    #' Serialize UserComplianceData to JSON string.
    #'
    #' @return JSON string representation of the UserComplianceData.
    #' @export
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },
    #' Serialize UserComplianceData to JSON.
    #'
    #' @description
    #' Serialize UserComplianceData to JSON.
    #'
    #' @return JSON representation of the UserComplianceData.
    #' @export
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },
    #' Validate the input JSON with respect to UserComplianceData.
    #'
    #' @description
    #' Validate the input JSON with respect to UserComplianceData and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    #' @export
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },
    #' Returns the string representation of the instance.
    #'
    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    #' @export
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"one_of": "%s"', paste(unlist(self$one_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
    }
  )
)
