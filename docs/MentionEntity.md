# twitter::MentionEntity


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end** | **integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. | [Min: 0] 
**start** | **integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. | [Min: 0] 
**id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**username** | **character** | The Twitter handle (screen name) of this user. | [Pattern: ^[A-Za-z0-9_]{1,15}$] 


