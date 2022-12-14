% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/client_disconnected_problem.R
\docType{class}
\name{ClientDisconnectedProblem}
\alias{ClientDisconnectedProblem}
\title{ClientDisconnectedProblem}
\format{
An \code{R6Class} generator object
}
\description{
ClientDisconnectedProblem Class
}
\details{
Twitter API v2

Twitter API v2 available endpoints

The version of the OpenAPI document: 2.49
Generated by: https://openapi-generator.tech
}
\section{Super class}{
\code{\link[twitter:Problem]{twitter::Problem}} -> \code{ClientDisconnectedProblem}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{detail}}{character [optional]}

\item{\code{status}}{integer [optional]}

\item{\code{title}}{character}

\item{\code{type}}{character}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ClientDisconnectedProblem-new}{\code{ClientDisconnectedProblem$new()}}
\item \href{#method-ClientDisconnectedProblem-toJSON}{\code{ClientDisconnectedProblem$toJSON()}}
\item \href{#method-ClientDisconnectedProblem-fromJSON}{\code{ClientDisconnectedProblem$fromJSON()}}
\item \href{#method-ClientDisconnectedProblem-toJSONString}{\code{ClientDisconnectedProblem$toJSONString()}}
\item \href{#method-ClientDisconnectedProblem-fromJSONString}{\code{ClientDisconnectedProblem$fromJSONString()}}
\item \href{#method-ClientDisconnectedProblem-validateJSON}{\code{ClientDisconnectedProblem$validateJSON()}}
\item \href{#method-ClientDisconnectedProblem-toString}{\code{ClientDisconnectedProblem$toString()}}
\item \href{#method-ClientDisconnectedProblem-isValid}{\code{ClientDisconnectedProblem$isValid()}}
\item \href{#method-ClientDisconnectedProblem-getInvalidFields}{\code{ClientDisconnectedProblem$getInvalidFields()}}
\item \href{#method-ClientDisconnectedProblem-clone}{\code{ClientDisconnectedProblem$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-new"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new ClientDisconnectedProblem class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$new(title, type, detail = NULL, status = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{title}}{title}

\item{\code{type}}{type}

\item{\code{detail}}{detail}

\item{\code{status}}{status}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ClientDisconnectedProblem in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of ClientDisconnectedProblem
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ClientDisconnectedProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ClientDisconnectedProblem in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of ClientDisconnectedProblem
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ClientDisconnectedProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to ClientDisconnectedProblem and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ClientDisconnectedProblem-toString"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of ClientDisconnectedProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ClientDisconnectedProblem-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ClientDisconnectedProblem-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ClientDisconnectedProblem$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
