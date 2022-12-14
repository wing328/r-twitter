% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resource_unavailable_problem.R
\docType{class}
\name{ResourceUnavailableProblem}
\alias{ResourceUnavailableProblem}
\title{ResourceUnavailableProblem}
\format{
An \code{R6Class} generator object
}
\description{
ResourceUnavailableProblem Class
}
\details{
Twitter API v2

Twitter API v2 available endpoints

The version of the OpenAPI document: 2.49
Generated by: https://openapi-generator.tech
}
\section{Super class}{
\code{\link[twitter:Problem]{twitter::Problem}} -> \code{ResourceUnavailableProblem}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{detail}}{character [optional]}

\item{\code{status}}{integer [optional]}

\item{\code{title}}{character}

\item{\code{type}}{character}

\item{\code{parameter}}{character}

\item{\code{resource_id}}{character}

\item{\code{resource_type}}{character}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ResourceUnavailableProblem-new}{\code{ResourceUnavailableProblem$new()}}
\item \href{#method-ResourceUnavailableProblem-toJSON}{\code{ResourceUnavailableProblem$toJSON()}}
\item \href{#method-ResourceUnavailableProblem-fromJSON}{\code{ResourceUnavailableProblem$fromJSON()}}
\item \href{#method-ResourceUnavailableProblem-toJSONString}{\code{ResourceUnavailableProblem$toJSONString()}}
\item \href{#method-ResourceUnavailableProblem-fromJSONString}{\code{ResourceUnavailableProblem$fromJSONString()}}
\item \href{#method-ResourceUnavailableProblem-validateJSON}{\code{ResourceUnavailableProblem$validateJSON()}}
\item \href{#method-ResourceUnavailableProblem-toString}{\code{ResourceUnavailableProblem$toString()}}
\item \href{#method-ResourceUnavailableProblem-isValid}{\code{ResourceUnavailableProblem$isValid()}}
\item \href{#method-ResourceUnavailableProblem-getInvalidFields}{\code{ResourceUnavailableProblem$getInvalidFields()}}
\item \href{#method-ResourceUnavailableProblem-clone}{\code{ResourceUnavailableProblem$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-new"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new ResourceUnavailableProblem class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$new(
  title,
  type,
  parameter,
  resource_id,
  resource_type,
  detail = NULL,
  status = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{title}}{title}

\item{\code{type}}{type}

\item{\code{parameter}}{parameter}

\item{\code{resource_id}}{resource_id}

\item{\code{resource_type}}{resource_type}

\item{\code{detail}}{detail}

\item{\code{status}}{status}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ResourceUnavailableProblem in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of ResourceUnavailableProblem
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ResourceUnavailableProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
ResourceUnavailableProblem in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of ResourceUnavailableProblem
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of ResourceUnavailableProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to ResourceUnavailableProblem and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-ResourceUnavailableProblem-toString"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of ResourceUnavailableProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ResourceUnavailableProblem-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ResourceUnavailableProblem-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResourceUnavailableProblem$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
