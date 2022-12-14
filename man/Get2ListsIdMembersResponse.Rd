% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get2_lists_id_members_response.R
\docType{class}
\name{Get2ListsIdMembersResponse}
\alias{Get2ListsIdMembersResponse}
\title{Get2ListsIdMembersResponse}
\format{
An \code{R6Class} generator object
}
\description{
Get2ListsIdMembersResponse Class
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
\item{\code{data}}{list( \link{User} ) [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}

\item{\code{includes}}{\link{Expansions} [optional]}

\item{\code{meta}}{\link{Get2ListsIdFollowersResponseMeta} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Get2ListsIdMembersResponse-new}{\code{Get2ListsIdMembersResponse$new()}}
\item \href{#method-Get2ListsIdMembersResponse-toJSON}{\code{Get2ListsIdMembersResponse$toJSON()}}
\item \href{#method-Get2ListsIdMembersResponse-fromJSON}{\code{Get2ListsIdMembersResponse$fromJSON()}}
\item \href{#method-Get2ListsIdMembersResponse-toJSONString}{\code{Get2ListsIdMembersResponse$toJSONString()}}
\item \href{#method-Get2ListsIdMembersResponse-fromJSONString}{\code{Get2ListsIdMembersResponse$fromJSONString()}}
\item \href{#method-Get2ListsIdMembersResponse-validateJSON}{\code{Get2ListsIdMembersResponse$validateJSON()}}
\item \href{#method-Get2ListsIdMembersResponse-toString}{\code{Get2ListsIdMembersResponse$toString()}}
\item \href{#method-Get2ListsIdMembersResponse-isValid}{\code{Get2ListsIdMembersResponse$isValid()}}
\item \href{#method-Get2ListsIdMembersResponse-getInvalidFields}{\code{Get2ListsIdMembersResponse$getInvalidFields()}}
\item \href{#method-Get2ListsIdMembersResponse-clone}{\code{Get2ListsIdMembersResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Get2ListsIdMembersResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$new(
  data = NULL,
  errors = NULL,
  includes = NULL,
  meta = NULL,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{data}

\item{\code{errors}}{errors}

\item{\code{includes}}{includes}

\item{\code{meta}}{meta}

\item{\code{...}}{Other optional arguments.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2ListsIdMembersResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Get2ListsIdMembersResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2ListsIdMembersResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2ListsIdMembersResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Get2ListsIdMembersResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2ListsIdMembersResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Get2ListsIdMembersResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Get2ListsIdMembersResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2ListsIdMembersResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Get2ListsIdMembersResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2ListsIdMembersResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
