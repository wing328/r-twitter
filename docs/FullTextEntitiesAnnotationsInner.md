# twitter::FullTextEntitiesAnnotationsInner

Annotation for entities based on the Tweet text.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end** | **integer** | Index (zero-based) at which position this entity ends.  The index is inclusive. | [Min: 0] 
**start** | **integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. | [Min: 0] 
**normalized_text** | **character** | Text used to determine annotation. | [optional] 
**probability** | **numeric** | Confidence factor for annotation type. | [optional] [Max: 1] [Min: 0] 
**type** | **character** | Annotation type. | [optional] 


