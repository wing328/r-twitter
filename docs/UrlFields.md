# twitter::UrlFields

Represent the portion of text recognized as a URL.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **character** | Description of the URL landing page. | [optional] 
**display_url** | **character** | The URL as displayed in the Twitter client. | [optional] 
**expanded_url** | **character** | A validly formatted URL. | [optional] 
**images** | [**array[UrlImage]**](UrlImage.md) |  | [optional] [Min. items: 1] 
**media_key** | **character** | The Media Key identifier for this attachment. | [optional] [Pattern: ^([0-9]+)_([0-9]+)$] 
**status** | **integer** | HTTP Status Code. | [optional] [Max: 599] [Min: 100] 
**title** | **character** | Title of the page the URL points to. | [optional] 
**unwound_url** | **character** | Fully resolved url. | [optional] 
**url** | **character** | A validly formatted URL. | 


