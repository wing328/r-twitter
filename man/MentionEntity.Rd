% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mention_entity.R
\docType{class}
\name{MentionEntity}
\alias{MentionEntity}
\title{MentionEntity}
\format{
An \code{R6Class} generator object
}
\description{
MentionEntity Class
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

\item{\code{id}}{character [optional]}

\item{\code{username}}{character}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MentionEntity-new}{\code{MentionEntity$new()}}
\item \href{#method-MentionEntity-toJSON}{\code{MentionEntity$toJSON()}}
\item \href{#method-MentionEntity-fromJSON}{\code{MentionEntity$fromJSON()}}
\item \href{#method-MentionEntity-toJSONString}{\code{MentionEntity$toJSONString()}}
\item \href{#method-MentionEntity-fromJSONString}{\code{MentionEntity$fromJSONString()}}
\item \href{#method-MentionEntity-validateJSON}{\code{MentionEntity$validateJSON()}}
\item \href{#method-MentionEntity-toString}{\code{MentionEntity$toString()}}
\item \href{#method-MentionEntity-isValid}{\code{MentionEntity$isValid()}}
\item \href{#method-MentionEntity-getInvalidFields}{\code{MentionEntity$getInvalidFields()}}
\item \href{#method-MentionEntity-clone}{\code{MentionEntity$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-new"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new MentionEntity class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$new(end, start, username, id = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{end}}{Index (zero-based) at which position this entity ends.  The index is exclusive.}

\item{\code{start}}{Index (zero-based) at which position this entity starts.  The index is inclusive.}

\item{\code{username}}{The Twitter handle (screen name) of this user.}

\item{\code{id}}{Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
MentionEntity in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of MentionEntity
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of MentionEntity
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
MentionEntity in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of MentionEntity
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of MentionEntity
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to MentionEntity and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-MentionEntity-toString"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of MentionEntity
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MentionEntity-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MentionEntity-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MentionEntity$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
