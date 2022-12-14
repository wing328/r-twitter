% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report_users_request.R
\docType{class}
\name{ReportUsersRequest}
\alias{ReportUsersRequest}
\title{ReportUsersRequest}
\format{
An \code{R6Class} generator object
}
\description{
ReportUsersRequest Class
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
\item{\code{description}}{character}

\item{\code{user_ids}}{list( character )}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ReportUsersRequest-new}{\code{ReportUsersRequest$new()}}
\item \href{#method-ReportUsersRequest-toJSON}{\code{ReportUsersRequest$toJSON()}}
\item \href{#method-ReportUsersRequest-fromJSON}{\code{ReportUsersRequest$fromJSON()}}
\item \href{#method-ReportUsersRequest-toJSONString}{\code{ReportUsersRequest$toJSONString()}}
\item \href{#method-ReportUsersRequest-fromJSONString}{\code{ReportUsersRequest$fromJSONString()}}
\item \href{#method-ReportUsersRequest-validateJSON}{\code{ReportUsersRequest$validateJSON()}}
\item \href{#method-ReportUsersRequest-toString}{\code{ReportUsersRequest$toString()}}
\item \href{#method-ReportUsersRequest-isValid}{\code{ReportUsersRequest$isValid()}}
\item \href{#method-ReportUsersRequest-getInvalidFields}{\code{ReportUsersRequest$getInvalidFields()}}
\item \href{#method-ReportUsersRequest-clone}{\code{ReportUsersRequest$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-new"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new ReportUsersRequest class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$new(description, user_ids, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{description}}{description}

\item{\code{user_ids}}{user_ids}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ReportUsersRequest in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of ReportUsersRequest
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ReportUsersRequest
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ReportUsersRequest in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of ReportUsersRequest
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ReportUsersRequest
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to ReportUsersRequest and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ReportUsersRequest-toString"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of ReportUsersRequest
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ReportUsersRequest-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ReportUsersRequest-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReportUsersRequest$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
