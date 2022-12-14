% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/non_compliant_rules_problem.R
\docType{class}
\name{NonCompliantRulesProblem}
\alias{NonCompliantRulesProblem}
\title{NonCompliantRulesProblem}
\format{
An \code{R6Class} generator object
}
\description{
NonCompliantRulesProblem Class
}
\details{
Twitter API v2

Twitter API v2 available endpoints

The version of the OpenAPI document: 2.49
Generated by: https://openapi-generator.tech
}
\section{Super class}{
\code{\link[twitter:Problem]{twitter::Problem}} -> \code{NonCompliantRulesProblem}
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
\item \href{#method-NonCompliantRulesProblem-new}{\code{NonCompliantRulesProblem$new()}}
\item \href{#method-NonCompliantRulesProblem-toJSON}{\code{NonCompliantRulesProblem$toJSON()}}
\item \href{#method-NonCompliantRulesProblem-fromJSON}{\code{NonCompliantRulesProblem$fromJSON()}}
\item \href{#method-NonCompliantRulesProblem-toJSONString}{\code{NonCompliantRulesProblem$toJSONString()}}
\item \href{#method-NonCompliantRulesProblem-fromJSONString}{\code{NonCompliantRulesProblem$fromJSONString()}}
\item \href{#method-NonCompliantRulesProblem-validateJSON}{\code{NonCompliantRulesProblem$validateJSON()}}
\item \href{#method-NonCompliantRulesProblem-toString}{\code{NonCompliantRulesProblem$toString()}}
\item \href{#method-NonCompliantRulesProblem-isValid}{\code{NonCompliantRulesProblem$isValid()}}
\item \href{#method-NonCompliantRulesProblem-getInvalidFields}{\code{NonCompliantRulesProblem$getInvalidFields()}}
\item \href{#method-NonCompliantRulesProblem-clone}{\code{NonCompliantRulesProblem$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-new"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new NonCompliantRulesProblem class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$new(title, type, detail = NULL, status = NULL, ...)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-NonCompliantRulesProblem-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
NonCompliantRulesProblem in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of NonCompliantRulesProblem
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of NonCompliantRulesProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
NonCompliantRulesProblem in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of NonCompliantRulesProblem
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of NonCompliantRulesProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to NonCompliantRulesProblem and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-NonCompliantRulesProblem-toString"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of NonCompliantRulesProblem
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-NonCompliantRulesProblem-clone"></a>}}
\if{latex}{\out{\hypertarget{method-NonCompliantRulesProblem-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{NonCompliantRulesProblem$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
