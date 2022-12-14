% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twitter_api.R
\docType{class}
\name{twitter_api}
\alias{twitter_api}
\title{ApiClient}
\format{
An \code{R6Class} generator object
}
\description{
ApiClient Class
}
\details{
Twitter API v2

Twitter API v2 available endpoints

The version of the OpenAPI document: 2.49
Generated by: https://openapi-generator.tech

twitter API Class

A single point of access to the twitter API.

NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
Ref: https://openapi-generator.tech
Do not edit the class manually.
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{api_client}}{API client}

\item{\code{bookmarks_api}}{an instance of BookmarksApi}

\item{\code{compliance_api}}{an instance of ComplianceApi}

\item{\code{general_api}}{an instance of GeneralApi}

\item{\code{lists_api}}{an instance of ListsApi}

\item{\code{spaces_api}}{an instance of SpacesApi}

\item{\code{tweets_api}}{an instance of TweetsApi}

\item{\code{users_api}}{an instance of UsersApi}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-twitter_api-new}{\code{twitter_api$new()}}
\item \href{#method-twitter_api-clone}{\code{twitter_api$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-twitter_api-new"></a>}}
\if{latex}{\out{\hypertarget{method-twitter_api-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new twitter API Class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{twitter_api$new(api_client)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{api_client}}{An instance of API client (optional).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-twitter_api-clone"></a>}}
\if{latex}{\out{\hypertarget{method-twitter_api-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{twitter_api$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
