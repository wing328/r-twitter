% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get2_lists_id_followers_response_meta.R
\docType{class}
\name{Get2ListsIdFollowersResponseMeta}
\alias{Get2ListsIdFollowersResponseMeta}
\title{Get2ListsIdFollowersResponseMeta}
\format{
An \code{R6Class} generator object
}
\description{
Get2ListsIdFollowersResponseMeta Class
}
\details{
Twitter API v2

Twitter API v2 available endpoints

The version of the OpenAPI document: 2.49
Generated by: https://openapi-generator.tech
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{next_token}}{character [optional]}

\item{\code{previous_token}}{character [optional]}

\item{\code{result_count}}{integer [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Get2ListsIdFollowersResponseMeta-new}{\code{Get2ListsIdFollowersResponseMeta$new()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-toJSON}{\code{Get2ListsIdFollowersResponseMeta$toJSON()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-fromJSON}{\code{Get2ListsIdFollowersResponseMeta$fromJSON()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-toJSONString}{\code{Get2ListsIdFollowersResponseMeta$toJSONString()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-fromJSONString}{\code{Get2ListsIdFollowersResponseMeta$fromJSONString()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-validateJSON}{\code{Get2ListsIdFollowersResponseMeta$validateJSON()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-toString}{\code{Get2ListsIdFollowersResponseMeta$toString()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-isValid}{\code{Get2ListsIdFollowersResponseMeta$isValid()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-getInvalidFields}{\code{Get2ListsIdFollowersResponseMeta$getInvalidFields()}}
\item \href{#method-Get2ListsIdFollowersResponseMeta-clone}{\code{Get2ListsIdFollowersResponseMeta$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-new"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Get2ListsIdFollowersResponseMeta class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$new(
  next_token = NULL,
  previous_token = NULL,
  result_count = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{next_token}}{The next token.}

\item{\code{previous_token}}{The previous token.}

\item{\code{result_count}}{The number of results returned in this response.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2ListsIdFollowersResponseMeta in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Get2ListsIdFollowersResponseMeta
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2ListsIdFollowersResponseMeta
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2ListsIdFollowersResponseMeta in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Get2ListsIdFollowersResponseMeta
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2ListsIdFollowersResponseMeta
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Get2ListsIdFollowersResponseMeta and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$validateJSON(input)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input}}{the JSON input}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Get2ListsIdFollowersResponseMeta
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdFollowersResponseMeta-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdFollowersResponseMeta-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdFollowersResponseMeta$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
