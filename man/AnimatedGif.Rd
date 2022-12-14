% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animated_gif.R
\docType{class}
\name{AnimatedGif}
\alias{AnimatedGif}
\title{AnimatedGif}
\format{
An \code{R6Class} generator object
}
\description{
AnimatedGif Class
}
\details{
Twitter API v2

Twitter API v2 available endpoints

The version of the OpenAPI document: 2.49
Generated by: https://openapi-generator.tech
}
\section{Super class}{
\code{\link[twitter:Media]{twitter::Media}} -> \code{AnimatedGif}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{height}}{integer [optional]}

\item{\code{media_key}}{character [optional]}

\item{\code{type}}{character}

\item{\code{width}}{integer [optional]}

\item{\code{preview_image_url}}{character [optional]}

\item{\code{variants}}{list( \link{Variant} ) [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AnimatedGif-new}{\code{AnimatedGif$new()}}
\item \href{#method-AnimatedGif-toJSON}{\code{AnimatedGif$toJSON()}}
\item \href{#method-AnimatedGif-fromJSON}{\code{AnimatedGif$fromJSON()}}
\item \href{#method-AnimatedGif-toJSONString}{\code{AnimatedGif$toJSONString()}}
\item \href{#method-AnimatedGif-fromJSONString}{\code{AnimatedGif$fromJSONString()}}
\item \href{#method-AnimatedGif-validateJSON}{\code{AnimatedGif$validateJSON()}}
\item \href{#method-AnimatedGif-toString}{\code{AnimatedGif$toString()}}
\item \href{#method-AnimatedGif-isValid}{\code{AnimatedGif$isValid()}}
\item \href{#method-AnimatedGif-getInvalidFields}{\code{AnimatedGif$getInvalidFields()}}
\item \href{#method-AnimatedGif-clone}{\code{AnimatedGif$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-new"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new AnimatedGif class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$new(
  type,
  height = NULL,
  media_key = NULL,
  width = NULL,
  preview_image_url = NULL,
  variants = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{type}}{type}

\item{\code{height}}{The height of the media in pixels.}

\item{\code{media_key}}{The Media Key identifier for this attachment.}

\item{\code{width}}{The width of the media in pixels.}

\item{\code{preview_image_url}}{preview_image_url}

\item{\code{variants}}{An array of all available variants of the media.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AnimatedGif in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of AnimatedGif
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AnimatedGif
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
AnimatedGif in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of AnimatedGif
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of AnimatedGif
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to AnimatedGif and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-AnimatedGif-toString"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of AnimatedGif
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AnimatedGif-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AnimatedGif-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AnimatedGif$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
