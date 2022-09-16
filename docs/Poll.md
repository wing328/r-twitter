# twitter::Poll

Represent a Poll attached to a Tweet.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration_minutes** | **integer** |  | [optional] [Max: 10080] [Min: 5] 
**end_datetime** | **character** |  | [optional] 
**id** | **character** | Unique identifier of this poll. | [Pattern: ^[0-9]{1,19}$] 
**options** | [**array[PollOption]**](PollOption.md) |  | [Max. items: 4] [Min. items: 2] 
**voting_status** | **character** |  | [optional] [Enum: [open, closed]] 


