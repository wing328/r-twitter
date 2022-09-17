# twitter::UrlEntity

Represent the portion of text recognized as a URL, and its start and end position within the text.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end** | **integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. | [Min: 0] 
**start** | **integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. | [Min: 0] 
**description** | **character** | Description of the URL landing page. | [optional] 
**display_url** | **character** | The URL as displayed in the Twitter client. | [optional] 
**expanded_url** | **character** | A validly formatted URL. | [optional] 
**images** | [**array[UrlImage]**](UrlImage.md) |  | [optional] [Min. items: 1] 
**media_key** | **character** | The Media Key identifier for this attachment. | [optional] [Pattern: ^([0-9]+)_([0-9]+)$] 
**status** | **integer** | HTTP Status Code. | [optional] [Max: 599] [Min: 100] 
**title** | **character** | Title of the page the URL points to. | [optional] 
**unwound_url** | **character** | Fully resolved url. | [optional] 
**url** | **character** | A validly formatted URL. | 


