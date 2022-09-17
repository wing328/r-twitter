# twitter::Video


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**height** | **integer** | The height of the media in pixels. | [optional] [Min: 0] 
**media_key** | **character** | The Media Key identifier for this attachment. | [optional] [Pattern: ^([0-9]+)_([0-9]+)$] 
**type** | **character** |  | 
**width** | **integer** | The width of the media in pixels. | [optional] [Min: 0] 
**duration_ms** | **integer** |  | [optional] 
**non_public_metrics** | [**VideoAllOfNonPublicMetrics**](Video_allOf_non_public_metrics.md) |  | [optional] 
**organic_metrics** | [**VideoAllOfOrganicMetrics**](Video_allOf_organic_metrics.md) |  | [optional] 
**preview_image_url** | **character** |  | [optional] 
**promoted_metrics** | [**VideoAllOfPromotedMetrics**](Video_allOf_promoted_metrics.md) |  | [optional] 
**public_metrics** | [**VideoAllOfPublicMetrics**](Video_allOf_public_metrics.md) |  | [optional] 
**variants** | [**array[Variant]**](Variant.md) | An array of all available variants of the media. | [optional] 


