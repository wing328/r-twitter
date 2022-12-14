% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delete_rules_request_delete.R
\docType{class}
\name{DeleteRulesRequestDelete}
\alias{DeleteRulesRequestDelete}
\title{DeleteRulesRequestDelete}
\format{
An \code{R6Class} generator object
}
\description{
DeleteRulesRequestDelete Class
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
\item{\code{ids}}{list( character ) [optional]}

\item{\code{values}}{list( character ) [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-DeleteRulesRequestDelete-new}{\code{DeleteRulesRequestDelete$new()}}
\item \href{#method-DeleteRulesRequestDelete-toJSON}{\code{DeleteRulesRequestDelete$toJSON()}}
\item \href{#method-DeleteRulesRequestDelete-fromJSON}{\code{DeleteRulesRequestDelete$fromJSON()}}
\item \href{#method-DeleteRulesRequestDelete-toJSONString}{\code{DeleteRulesRequestDelete$toJSONString()}}
\item \href{#method-DeleteRulesRequestDelete-fromJSONString}{\code{DeleteRulesRequestDelete$fromJSONString()}}
\item \href{#method-DeleteRulesRequestDelete-validateJSON}{\code{DeleteRulesRequestDelete$validateJSON()}}
\item \href{#method-DeleteRulesRequestDelete-toString}{\code{DeleteRulesRequestDelete$toString()}}
\item \href{#method-DeleteRulesRequestDelete-isValid}{\code{DeleteRulesRequestDelete$isValid()}}
\item \href{#method-DeleteRulesRequestDelete-getInvalidFields}{\code{DeleteRulesRequestDelete$getInvalidFields()}}
\item \href{#method-DeleteRulesRequestDelete-clone}{\code{DeleteRulesRequestDelete$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-new"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new DeleteRulesRequestDelete class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$new(ids = NULL, values = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{ids}}{IDs of all deleted user-specified stream filtering rules.}

\item{\code{values}}{Values of all deleted user-specified stream filtering rules.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
DeleteRulesRequestDelete in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of DeleteRulesRequestDelete
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of DeleteRulesRequestDelete
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
DeleteRulesRequestDelete in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of DeleteRulesRequestDelete
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of DeleteRulesRequestDelete
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to DeleteRulesRequestDelete and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-toString"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of DeleteRulesRequestDelete
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-DeleteRulesRequestDelete-clone"></a>}}
\if{latex}{\out{\hypertarget{method-DeleteRulesRequestDelete-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{DeleteRulesRequestDelete$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
