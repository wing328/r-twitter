% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_or_delete_rules_response.R
\docType{class}
\name{AddOrDeleteRulesResponse}
\alias{AddOrDeleteRulesResponse}
\title{AddOrDeleteRulesResponse}
\format{
An \code{R6Class} generator object
}
\description{
AddOrDeleteRulesResponse Class
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
\item{\code{data}}{list( \link{Rule} ) [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}

\item{\code{meta}}{\link{RulesResponseMetadata}}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AddOrDeleteRulesResponse-new}{\code{AddOrDeleteRulesResponse$new()}}
\item \href{#method-AddOrDeleteRulesResponse-toJSON}{\code{AddOrDeleteRulesResponse$toJSON()}}
\item \href{#method-AddOrDeleteRulesResponse-fromJSON}{\code{AddOrDeleteRulesResponse$fromJSON()}}
\item \href{#method-AddOrDeleteRulesResponse-toJSONString}{\code{AddOrDeleteRulesResponse$toJSONString()}}
\item \href{#method-AddOrDeleteRulesResponse-fromJSONString}{\code{AddOrDeleteRulesResponse$fromJSONString()}}
\item \href{#method-AddOrDeleteRulesResponse-validateJSON}{\code{AddOrDeleteRulesResponse$validateJSON()}}
\item \href{#method-AddOrDeleteRulesResponse-toString}{\code{AddOrDeleteRulesResponse$toString()}}
\item \href{#method-AddOrDeleteRulesResponse-isValid}{\code{AddOrDeleteRulesResponse$isValid()}}
\item \href{#method-AddOrDeleteRulesResponse-getInvalidFields}{\code{AddOrDeleteRulesResponse$getInvalidFields()}}
\item \href{#method-AddOrDeleteRulesResponse-clone}{\code{AddOrDeleteRulesResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new AddOrDeleteRulesResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$new(meta, data = NULL, errors = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{meta}}{meta}

\item{\code{data}}{All user-specified stream filtering rules that were created.}

\item{\code{errors}}{errors}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AddOrDeleteRulesResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of AddOrDeleteRulesResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AddOrDeleteRulesResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AddOrDeleteRulesResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of AddOrDeleteRulesResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AddOrDeleteRulesResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to AddOrDeleteRulesResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of AddOrDeleteRulesResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AddOrDeleteRulesResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AddOrDeleteRulesResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AddOrDeleteRulesResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
