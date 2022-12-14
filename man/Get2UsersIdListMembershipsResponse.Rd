% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get2_users_id_list_memberships_response.R
\docType{class}
\name{Get2UsersIdListMembershipsResponse}
\alias{Get2UsersIdListMembershipsResponse}
\title{Get2UsersIdListMembershipsResponse}
\format{
An \code{R6Class} generator object
}
\description{
Get2UsersIdListMembershipsResponse Class
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
\item{\code{data}}{list( \link{List} ) [optional]}

\item{\code{errors}}{list( \link{Problem} ) [optional]}

\item{\code{includes}}{\link{Expansions} [optional]}

\item{\code{meta}}{\link{Get2ListsIdFollowersResponseMeta} [optional]}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Get2UsersIdListMembershipsResponse-new}{\code{Get2UsersIdListMembershipsResponse$new()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-toJSON}{\code{Get2UsersIdListMembershipsResponse$toJSON()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-fromJSON}{\code{Get2UsersIdListMembershipsResponse$fromJSON()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-toJSONString}{\code{Get2UsersIdListMembershipsResponse$toJSONString()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-fromJSONString}{\code{Get2UsersIdListMembershipsResponse$fromJSONString()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-validateJSON}{\code{Get2UsersIdListMembershipsResponse$validateJSON()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-toString}{\code{Get2UsersIdListMembershipsResponse$toString()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-isValid}{\code{Get2UsersIdListMembershipsResponse$isValid()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-getInvalidFields}{\code{Get2UsersIdListMembershipsResponse$getInvalidFields()}}
\item \href{#method-Get2UsersIdListMembershipsResponse-clone}{\code{Get2UsersIdListMembershipsResponse$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-new"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new Get2UsersIdListMembershipsResponse class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$new(
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
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$toJSON()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2UsersIdListMembershipsResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
Deserialize JSON string into an instance of Get2UsersIdListMembershipsResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$fromJSON(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2UsersIdListMembershipsResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
To JSON String
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$toJSONString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Get2UsersIdListMembershipsResponse in JSON format
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
Deserialize JSON string into an instance of Get2UsersIdListMembershipsResponse
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$fromJSONString(input_json)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_json}}{the JSON input}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the instance of Get2UsersIdListMembershipsResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-validateJSON"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-validateJSON}{}}}
\subsection{Method \code{validateJSON()}}{
Validate JSON input with respect to Get2UsersIdListMembershipsResponse and throw an exception if invalid
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$validateJSON(input)}\if{html}{\out{</div>}}
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
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-toString"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-toString}{}}}
\subsection{Method \code{toString()}}{
To string (JSON format)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$toString()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
String representation of Get2UsersIdListMembershipsResponse
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-isValid}{}}}
\subsection{Method \code{isValid()}}{
Return true if the values in all fields are valid.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$isValid()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
true if the values in all fields are valid.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-getInvalidFields"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-getInvalidFields}{}}}
\subsection{Method \code{getInvalidFields()}}{
Return a list of invalid fields (if any).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$getInvalidFields()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of invalid fields (if any).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Get2UsersIdListMembershipsResponse-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Get2UsersIdListMembershipsResponse-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Get2UsersIdListMembershipsResponse$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
