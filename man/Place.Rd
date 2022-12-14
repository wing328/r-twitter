% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/place.R
\docType{class}
\name{Place}
\alias{Place}
\title{Place}
\format{
An \code{R6Class} generator object
}
\description{
Place Class
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
\item{\code{contained_within}}{list( character ) [optional]}

\item{\code{country}}{character [optional]}

\item{\code{country_code}}{character [optional]}

\item{\code{full_name}}{character}

\item{\code{geo}}{\link{Geo} [optional]}

\item{\code{id}}{character}

\item{\code{name}}{character [optional]}

\item{\code{place_type}}{\link{PlaceType} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Place-new}{\code{Place$new()}}
\item \href{#method-Place-toJSON}{\code{Place$toJSON()}}
\item \href{#method-Place-fromJSON}{\code{Place$fromJSON()}}
\item \href{#method-Place-toJSONString}{\code{Place$toJSONString()}}
\item \href{#method-Place-fromJSONString}{\code{Place$fromJSONString()}}
\item \href{#method-Place-validateJSON}{\code{Place$validateJSON()}}
\item \href{#method-Place-toString}{\code{Place$toString()}}
\item \href{#method-Place-isValid}{\code{Place$isValid()}}
\item \href{#method-Place-getInvalidFields}{\code{Place$getInvalidFields()}}
\item \href{#method-Place-clone}{\code{Place$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-new"></a>}}
\if{latex}{\out{\hypertarget{method-Place-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Place class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$new(
  full_name,
  id,
  contained_within = NULL,
  country = NULL,
  country_code = NULL,
  geo = NULL,
  name = NULL,
  place_type = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{full_name}}{The full name of this place.}

\item{\code{id}}{The identifier for this place.}

\item{\code{contained_within}}{contained_within}

\item{\code{country}}{The full name of the county in which this place exists.}

\item{\code{country_code}}{A two-letter ISO 3166-1 alpha-2 country code.}

\item{\code{geo}}{geo}

\item{\code{name}}{The human readable name of this place.}

\item{\code{place_type}}{place_type}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Place-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Place in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Place-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Place
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Place
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Place-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Place in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Place-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Place
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Place
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Place-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Place and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-Place-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Place-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Place
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Place-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Place-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Place-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Place-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Place$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
