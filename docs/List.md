# twitter::List

A Twitter List is a curated group of accounts.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**follower_count** | **integer** |  | [optional] 
**id** | **character** | The unique identifier of this List. | [Pattern: ^[0-9]{1,19}$] 
**member_count** | **integer** |  | [optional] 
**name** | **character** | The name of this List. | 
**owner_id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**item_private** | **character** |  | [optional] 


