% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get2_spaces_id_tweets_response.R
\docType{class}
\name{Get2SpacesIdTweetsResponse}
\alias{Get2SpacesIdTweetsResponse}
\title{Get2SpacesIdTweetsResponse}
\format{
An \code{R6Class} generator object
}
\description{
Get2SpacesIdTweetsResponse Class
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
\item{\code{data}}{list( \link{Tweet} ) [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}

\item{\code{includes}}{\link{Expansions} [optional]}

\item{\code{meta}}{\link{Get2ListsIdFollowersResponseMeta} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Get2SpacesIdTweetsResponse-new}{\code{Get2SpacesIdTweetsResponse$new()}}
\item \href{#method-Get2SpacesIdTweetsResponse-toJSON}{\code{Get2SpacesIdTweetsResponse$toJSON()}}
\item \href{#method-Get2SpacesIdTweetsResponse-fromJSON}{\code{Get2SpacesIdTweetsResponse$fromJSON()}}
\item \href{#method-Get2SpacesIdTweetsResponse-toJSONString}{\code{Get2SpacesIdTweetsResponse$toJSONString()}}
\item \href{#method-Get2SpacesIdTweetsResponse-fromJSONString}{\code{Get2SpacesIdTweetsResponse$fromJSONString()}}
\item \href{#method-Get2SpacesIdTweetsResponse-validateJSON}{\code{Get2SpacesIdTweetsResponse$validateJSON()}}
\item \href{#method-Get2SpacesIdTweetsResponse-toString}{\code{Get2SpacesIdTweetsResponse$toString()}}
\item \href{#method-Get2SpacesIdTweetsResponse-isValid}{\code{Get2SpacesIdTweetsResponse$isValid()}}
\item \href{#method-Get2SpacesIdTweetsResponse-getInvalidFields}{\code{Get2SpacesIdTweetsResponse$getInvalidFields()}}
\item \href{#method-Get2SpacesIdTweetsResponse-clone}{\code{Get2SpacesIdTweetsResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Get2SpacesIdTweetsResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$new(
  data = NULL,
  errors = NULL,
  includes = NULL,
  meta = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{data}

\item{\code{errors}}{errors}

\item{\code{includes}}{includes}

\item{\code{meta}}{meta}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2SpacesIdTweetsResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Get2SpacesIdTweetsResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2SpacesIdTweetsResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2SpacesIdTweetsResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Get2SpacesIdTweetsResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2SpacesIdTweetsResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Get2SpacesIdTweetsResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Get2SpacesIdTweetsResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2SpacesIdTweetsResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Get2SpacesIdTweetsResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2SpacesIdTweetsResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
