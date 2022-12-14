% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mute_user_mutation_response.R
\docType{class}
\name{MuteUserMutationResponse}
\alias{MuteUserMutationResponse}
\title{MuteUserMutationResponse}
\format{
An \code{R6Class} generator object
}
\description{
MuteUserMutationResponse Class
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
\item{\code{data}}{\link{MuteUserMutationResponseData} [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MuteUserMutationResponse-new}{\code{MuteUserMutationResponse$new()}}
\item \href{#method-MuteUserMutationResponse-toJSON}{\code{MuteUserMutationResponse$toJSON()}}
\item \href{#method-MuteUserMutationResponse-fromJSON}{\code{MuteUserMutationResponse$fromJSON()}}
\item \href{#method-MuteUserMutationResponse-toJSONString}{\code{MuteUserMutationResponse$toJSONString()}}
\item \href{#method-MuteUserMutationResponse-fromJSONString}{\code{MuteUserMutationResponse$fromJSONString()}}
\item \href{#method-MuteUserMutationResponse-validateJSON}{\code{MuteUserMutationResponse$validateJSON()}}
\item \href{#method-MuteUserMutationResponse-toString}{\code{MuteUserMutationResponse$toString()}}
\item \href{#method-MuteUserMutationResponse-isValid}{\code{MuteUserMutationResponse$isValid()}}
\item \href{#method-MuteUserMutationResponse-getInvalidFields}{\code{MuteUserMutationResponse$getInvalidFields()}}
\item \href{#method-MuteUserMutationResponse-clone}{\code{MuteUserMutationResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new MuteUserMutationResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$new(data = NULL, errors = NULL, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{data}

\item{\code{errors}}{errors}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
MuteUserMutationResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of MuteUserMutationResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of MuteUserMutationResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
MuteUserMutationResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of MuteUserMutationResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of MuteUserMutationResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to MuteUserMutationResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-MuteUserMutationResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of MuteUserMutationResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MuteUserMutationResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MuteUserMutationResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MuteUserMutationResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
