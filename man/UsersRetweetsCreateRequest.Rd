% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/users_retweets_create_request.R
\docType{class}
\name{UsersRetweetsCreateRequest}
\alias{UsersRetweetsCreateRequest}
\title{UsersRetweetsCreateRequest}
\format{
An \code{R6Class} generator object
}
\description{
UsersRetweetsCreateRequest Class
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
\item{\code{tweet_id}}{character}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-UsersRetweetsCreateRequest-new}{\code{UsersRetweetsCreateRequest$new()}}
\item \href{#method-UsersRetweetsCreateRequest-toJSON}{\code{UsersRetweetsCreateRequest$toJSON()}}
\item \href{#method-UsersRetweetsCreateRequest-fromJSON}{\code{UsersRetweetsCreateRequest$fromJSON()}}
\item \href{#method-UsersRetweetsCreateRequest-toJSONString}{\code{UsersRetweetsCreateRequest$toJSONString()}}
\item \href{#method-UsersRetweetsCreateRequest-fromJSONString}{\code{UsersRetweetsCreateRequest$fromJSONString()}}
\item \href{#method-UsersRetweetsCreateRequest-validateJSON}{\code{UsersRetweetsCreateRequest$validateJSON()}}
\item \href{#method-UsersRetweetsCreateRequest-toString}{\code{UsersRetweetsCreateRequest$toString()}}
\item \href{#method-UsersRetweetsCreateRequest-isValid}{\code{UsersRetweetsCreateRequest$isValid()}}
\item \href{#method-UsersRetweetsCreateRequest-getInvalidFields}{\code{UsersRetweetsCreateRequest$getInvalidFields()}}
\item \href{#method-UsersRetweetsCreateRequest-clone}{\code{UsersRetweetsCreateRequest$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-new"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new UsersRetweetsCreateRequest class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$new(tweet_id, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{tweet_id}}{Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
UsersRetweetsCreateRequest in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of UsersRetweetsCreateRequest
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of UsersRetweetsCreateRequest
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
UsersRetweetsCreateRequest in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of UsersRetweetsCreateRequest
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of UsersRetweetsCreateRequest
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to UsersRetweetsCreateRequest and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-toString"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of UsersRetweetsCreateRequest
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UsersRetweetsCreateRequest-clone"></a>}}
\if{latex}{\out{\hypertarget{method-UsersRetweetsCreateRequest-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UsersRetweetsCreateRequest$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
