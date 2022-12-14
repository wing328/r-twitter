% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/context_annotation_entity_fields.R
\docType{class}
\name{ContextAnnotationEntityFields}
\alias{ContextAnnotationEntityFields}
\title{ContextAnnotationEntityFields}
\format{
An \code{R6Class} generator object
}
\description{
ContextAnnotationEntityFields Class
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
\item{\code{description}}{character [optional]}

\item{\code{id}}{character}

\item{\code{name}}{character [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ContextAnnotationEntityFields-new}{\code{ContextAnnotationEntityFields$new()}}
\item \href{#method-ContextAnnotationEntityFields-toJSON}{\code{ContextAnnotationEntityFields$toJSON()}}
\item \href{#method-ContextAnnotationEntityFields-fromJSON}{\code{ContextAnnotationEntityFields$fromJSON()}}
\item \href{#method-ContextAnnotationEntityFields-toJSONString}{\code{ContextAnnotationEntityFields$toJSONString()}}
\item \href{#method-ContextAnnotationEntityFields-fromJSONString}{\code{ContextAnnotationEntityFields$fromJSONString()}}
\item \href{#method-ContextAnnotationEntityFields-validateJSON}{\code{ContextAnnotationEntityFields$validateJSON()}}
\item \href{#method-ContextAnnotationEntityFields-toString}{\code{ContextAnnotationEntityFields$toString()}}
\item \href{#method-ContextAnnotationEntityFields-isValid}{\code{ContextAnnotationEntityFields$isValid()}}
\item \href{#method-ContextAnnotationEntityFields-getInvalidFields}{\code{ContextAnnotationEntityFields$getInvalidFields()}}
\item \href{#method-ContextAnnotationEntityFields-clone}{\code{ContextAnnotationEntityFields$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-new"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new ContextAnnotationEntityFields class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$new(id, description = NULL, name = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{id}}{The unique id for a context annotation entity.}

\item{\code{description}}{Description of the context annotation entity.}

\item{\code{name}}{Name of the context annotation entity.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ContextAnnotationEntityFields in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of ContextAnnotationEntityFields
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ContextAnnotationEntityFields
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ContextAnnotationEntityFields in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of ContextAnnotationEntityFields
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ContextAnnotationEntityFields
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to ContextAnnotationEntityFields and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-toString"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of ContextAnnotationEntityFields
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ContextAnnotationEntityFields-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ContextAnnotationEntityFields-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ContextAnnotationEntityFields$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
