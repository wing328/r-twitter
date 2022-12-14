% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/video_all_of_promoted_metrics.R
\docType{class}
\name{VideoAllOfPromotedMetrics}
\alias{VideoAllOfPromotedMetrics}
\title{VideoAllOfPromotedMetrics}
\format{
An \code{R6Class} generator object
}
\description{
VideoAllOfPromotedMetrics Class
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
\item{\code{playback_0_count}}{integer [optional]}

\item{\code{playback_100_count}}{integer [optional]}

\item{\code{playback_25_count}}{integer [optional]}

\item{\code{playback_50_count}}{integer [optional]}

\item{\code{playback_75_count}}{integer [optional]}

\item{\code{view_count}}{integer [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-VideoAllOfPromotedMetrics-new}{\code{VideoAllOfPromotedMetrics$new()}}
\item \href{#method-VideoAllOfPromotedMetrics-toJSON}{\code{VideoAllOfPromotedMetrics$toJSON()}}
\item \href{#method-VideoAllOfPromotedMetrics-fromJSON}{\code{VideoAllOfPromotedMetrics$fromJSON()}}
\item \href{#method-VideoAllOfPromotedMetrics-toJSONString}{\code{VideoAllOfPromotedMetrics$toJSONString()}}
\item \href{#method-VideoAllOfPromotedMetrics-fromJSONString}{\code{VideoAllOfPromotedMetrics$fromJSONString()}}
\item \href{#method-VideoAllOfPromotedMetrics-validateJSON}{\code{VideoAllOfPromotedMetrics$validateJSON()}}
\item \href{#method-VideoAllOfPromotedMetrics-toString}{\code{VideoAllOfPromotedMetrics$toString()}}
\item \href{#method-VideoAllOfPromotedMetrics-isValid}{\code{VideoAllOfPromotedMetrics$isValid()}}
\item \href{#method-VideoAllOfPromotedMetrics-getInvalidFields}{\code{VideoAllOfPromotedMetrics$getInvalidFields()}}
\item \href{#method-VideoAllOfPromotedMetrics-clone}{\code{VideoAllOfPromotedMetrics$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-new"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new VideoAllOfPromotedMetrics class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$new(
  playback_0_count = NULL,
  playback_100_count = NULL,
  playback_25_count = NULL,
  playback_50_count = NULL,
  playback_75_count = NULL,
  view_count = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{playback_0_count}}{Number of users who made it through 0\% of the video.}

\item{\code{playback_100_count}}{Number of users who made it through 100\% of the video.}

\item{\code{playback_25_count}}{Number of users who made it through 25\% of the video.}

\item{\code{playback_50_count}}{Number of users who made it through 50\% of the video.}

\item{\code{playback_75_count}}{Number of users who made it through 75\% of the video.}

\item{\code{view_count}}{Number of times this video has been viewed.}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
VideoAllOfPromotedMetrics in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of VideoAllOfPromotedMetrics
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of VideoAllOfPromotedMetrics
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
VideoAllOfPromotedMetrics in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of VideoAllOfPromotedMetrics
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of VideoAllOfPromotedMetrics
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to VideoAllOfPromotedMetrics and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-toString"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of VideoAllOfPromotedMetrics
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-VideoAllOfPromotedMetrics-clone"></a>}}
\if{latex}{\out{\hypertarget{method-VideoAllOfPromotedMetrics-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{VideoAllOfPromotedMetrics$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
