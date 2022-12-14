% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_followed_response.R
\docType{class}
\name{ListFollowedResponse}
\alias{ListFollowedResponse}
\title{ListFollowedResponse}
\format{
An \code{R6Class} generator object
}
\description{
ListFollowedResponse Class
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
\item{\code{data}}{\link{ListFollowedResponseData} [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ListFollowedResponse-new}{\code{ListFollowedResponse$new()}}
\item \href{#method-ListFollowedResponse-toJSON}{\code{ListFollowedResponse$toJSON()}}
\item \href{#method-ListFollowedResponse-fromJSON}{\code{ListFollowedResponse$fromJSON()}}
\item \href{#method-ListFollowedResponse-toJSONString}{\code{ListFollowedResponse$toJSONString()}}
\item \href{#method-ListFollowedResponse-fromJSONString}{\code{ListFollowedResponse$fromJSONString()}}
\item \href{#method-ListFollowedResponse-validateJSON}{\code{ListFollowedResponse$validateJSON()}}
\item \href{#method-ListFollowedResponse-toString}{\code{ListFollowedResponse$toString()}}
\item \href{#method-ListFollowedResponse-isValid}{\code{ListFollowedResponse$isValid()}}
\item \href{#method-ListFollowedResponse-getInvalidFields}{\code{ListFollowedResponse$getInvalidFields()}}
\item \href{#method-ListFollowedResponse-clone}{\code{ListFollowedResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new ListFollowedResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$new(data = NULL, errors = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{data}

\item{\code{errors}}{errors}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ListFollowedResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of ListFollowedResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ListFollowedResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ListFollowedResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of ListFollowedResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ListFollowedResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to ListFollowedResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ListFollowedResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of ListFollowedResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListFollowedResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ListFollowedResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListFollowedResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
