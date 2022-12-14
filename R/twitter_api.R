#' Twitter API v2
#'
#' Twitter API v2 available endpoints
#'
#' The version of the OpenAPI document: 2.49
#' Generated by: https://openapi-generator.tech
#'
#' twitter API Class
#'
#' A single point of access to the twitter API.
#'
#' NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
#' Ref: https://openapi-generator.tech
#' Do not edit the class manually.
#'
#' @docType class
#' @title ApiClient
#' @description ApiClient Class
#' @format An \code{R6Class} generator object
#' @field api_client API client
#' @field bookmarks_api an instance of BookmarksApi
#' @field compliance_api an instance of ComplianceApi
#' @field general_api an instance of GeneralApi
#' @field lists_api an instance of ListsApi
#' @field spaces_api an instance of SpacesApi
#' @field tweets_api an instance of TweetsApi
#' @field users_api an instance of UsersApi
#' @importFrom rlang abort
#' @export
twitter_api <- R6::R6Class(
  "twitter_api",
  public = list(
    api_client = NULL,
    bookmarks_api = NULL,
    compliance_api = NULL,
    general_api = NULL,
    lists_api = NULL,
    spaces_api = NULL,
    tweets_api = NULL,
    users_api = NULL,
    #' Initialize a new twitter API Class.
    #'
    #' @description
    #' Initialize a new twitter API Class.
    #'
    #' @param api_client An instance of API client (optional).
    #' @export
    initialize = function(api_client) {
      if (missing(api_client)) {
        self$api_client <- ApiClient$new()
      } else {
        self$api_client <- api_client
      }

      self$bookmarks_api <- BookmarksApi$new(self$api_client)

      self$compliance_api <- ComplianceApi$new(self$api_client)

      self$general_api <- GeneralApi$new(self$api_client)

      self$lists_api <- ListsApi$new(self$api_client)

      self$spaces_api <- SpacesApi$new(self$api_client)

      self$tweets_api <- TweetsApi$new(self$api_client)

      self$users_api <- UsersApi$new(self$api_client)
    }
  )
)
