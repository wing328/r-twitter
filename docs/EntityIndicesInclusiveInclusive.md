# twitter::EntityIndicesInclusiveInclusive

Represent a boundary range (start and end index) for a recognized entity (for example a hashtag or a mention). `start` must be smaller than `end`.  The start index is inclusive, the end index is inclusive.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end** | **integer** | Index (zero-based) at which position this entity ends.  The index is inclusive. | [Min: 0] 
**start** | **integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. | [Min: 0] 


