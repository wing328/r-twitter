% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_delete_response.R
\docType{class}
\name{ListDeleteResponse}
\alias{ListDeleteResponse}
\title{ListDeleteResponse}
\format{
An \code{R6Class} generator object
}
\description{
ListDeleteResponse Class
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
\item{\code{data}}{\link{ListDeleteResponseData} [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ListDeleteResponse-new}{\code{ListDeleteResponse$new()}}
\item \href{#method-ListDeleteResponse-toJSON}{\code{ListDeleteResponse$toJSON()}}
\item \href{#method-ListDeleteResponse-fromJSON}{\code{ListDeleteResponse$fromJSON()}}
\item \href{#method-ListDeleteResponse-toJSONString}{\code{ListDeleteResponse$toJSONString()}}
\item \href{#method-ListDeleteResponse-fromJSONString}{\code{ListDeleteResponse$fromJSONString()}}
\item \href{#method-ListDeleteResponse-validateJSON}{\code{ListDeleteResponse$validateJSON()}}
\item \href{#method-ListDeleteResponse-toString}{\code{ListDeleteResponse$toString()}}
\item \href{#method-ListDeleteResponse-isValid}{\code{ListDeleteResponse$isValid()}}
\item \href{#method-ListDeleteResponse-getInvalidFields}{\code{ListDeleteResponse$getInvalidFields()}}
\item \href{#method-ListDeleteResponse-clone}{\code{ListDeleteResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new ListDeleteResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$new(data = NULL, errors = NULL, ...)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ListDeleteResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ListDeleteResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of ListDeleteResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ListDeleteResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ListDeleteResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of ListDeleteResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ListDeleteResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to ListDeleteResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ListDeleteResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of ListDeleteResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ListDeleteResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ListDeleteResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ListDeleteResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
