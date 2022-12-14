% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/entity_indices_inclusive_exclusive.R
\docType{class}
\name{EntityIndicesInclusiveExclusive}
\alias{EntityIndicesInclusiveExclusive}
\title{EntityIndicesInclusiveExclusive}
\format{
An \code{R6Class} generator object
}
\description{
EntityIndicesInclusiveExclusive Class
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
\item{\code{end}}{integer}

\item{\code{start}}{integer}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-EntityIndicesInclusiveExclusive-new}{\code{EntityIndicesInclusiveExclusive$new()}}
\item \href{#method-EntityIndicesInclusiveExclusive-toJSON}{\code{EntityIndicesInclusiveExclusive$toJSON()}}
\item \href{#method-EntityIndicesInclusiveExclusive-fromJSON}{\code{EntityIndicesInclusiveExclusive$fromJSON()}}
\item \href{#method-EntityIndicesInclusiveExclusive-toJSONString}{\code{EntityIndicesInclusiveExclusive$toJSONString()}}
\item \href{#method-EntityIndicesInclusiveExclusive-fromJSONString}{\code{EntityIndicesInclusiveExclusive$fromJSONString()}}
\item \href{#method-EntityIndicesInclusiveExclusive-validateJSON}{\code{EntityIndicesInclusiveExclusive$validateJSON()}}
\item \href{#method-EntityIndicesInclusiveExclusive-toString}{\code{EntityIndicesInclusiveExclusive$toString()}}
\item \href{#method-EntityIndicesInclusiveExclusive-isValid}{\code{EntityIndicesInclusiveExclusive$isValid()}}
\item \href{#method-EntityIndicesInclusiveExclusive-getInvalidFields}{\code{EntityIndicesInclusiveExclusive$getInvalidFields()}}
\item \href{#method-EntityIndicesInclusiveExclusive-clone}{\code{EntityIndicesInclusiveExclusive$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-new"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new EntityIndicesInclusiveExclusive class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$new(end, start, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{end}}{Index (zero-based) at which position this entity ends.  The index is exclusive.}

\item{\code{start}}{Index (zero-based) at which position this entity starts.  The index is inclusive.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
EntityIndicesInclusiveExclusive in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of EntityIndicesInclusiveExclusive
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of EntityIndicesInclusiveExclusive
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
EntityIndicesInclusiveExclusive in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of EntityIndicesInclusiveExclusive
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of EntityIndicesInclusiveExclusive
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to EntityIndicesInclusiveExclusive and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-toString"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of EntityIndicesInclusiveExclusive
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-EntityIndicesInclusiveExclusive-clone"></a>}}
\if{latex}{\out{\hypertarget{method-EntityIndicesInclusiveExclusive-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{EntityIndicesInclusiveExclusive$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
