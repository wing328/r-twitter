% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get2_users_id_response.R
\docType{class}
\name{Get2UsersIdResponse}
\alias{Get2UsersIdResponse}
\title{Get2UsersIdResponse}
\format{
An \code{R6Class} generator object
}
\description{
Get2UsersIdResponse Class
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
\item{\code{data}}{\link{User} [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}

\item{\code{includes}}{\link{Expansions} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Get2UsersIdResponse-new}{\code{Get2UsersIdResponse$new()}}
\item \href{#method-Get2UsersIdResponse-toJSON}{\code{Get2UsersIdResponse$toJSON()}}
\item \href{#method-Get2UsersIdResponse-fromJSON}{\code{Get2UsersIdResponse$fromJSON()}}
\item \href{#method-Get2UsersIdResponse-toJSONString}{\code{Get2UsersIdResponse$toJSONString()}}
\item \href{#method-Get2UsersIdResponse-fromJSONString}{\code{Get2UsersIdResponse$fromJSONString()}}
\item \href{#method-Get2UsersIdResponse-validateJSON}{\code{Get2UsersIdResponse$validateJSON()}}
\item \href{#method-Get2UsersIdResponse-toString}{\code{Get2UsersIdResponse$toString()}}
\item \href{#method-Get2UsersIdResponse-isValid}{\code{Get2UsersIdResponse$isValid()}}
\item \href{#method-Get2UsersIdResponse-getInvalidFields}{\code{Get2UsersIdResponse$getInvalidFields()}}
\item \href{#method-Get2UsersIdResponse-clone}{\code{Get2UsersIdResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Get2UsersIdResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$new(data = NULL, errors = NULL, includes = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{data}

\item{\code{errors}}{errors}

\item{\code{includes}}{includes}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2UsersIdResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Get2UsersIdResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2UsersIdResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2UsersIdResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Get2UsersIdResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2UsersIdResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Get2UsersIdResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-Get2UsersIdResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Get2UsersIdResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
