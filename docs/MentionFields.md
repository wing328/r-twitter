# twitter::MentionFields

Represent the portion of text recognized as a User mention, and its start and end position within the text.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**username** | **character** | The Twitter handle (screen name) of this user. | [Pattern: ^[A-Za-z0-9_]{1,15}$] 


