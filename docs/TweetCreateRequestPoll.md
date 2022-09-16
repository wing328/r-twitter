# twitter::TweetCreateRequestPoll

Poll options for a Tweet with a poll. This is mutually exclusive from Media and Quote Tweet Id.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration_minutes** | **integer** | Duration of the poll in minutes. | [Max: 10080] [Min: 5] 
**options** | **array[character]** |  | [Max. items: 4] [Min. items: 2] 
**reply_settings** | **character** | Settings to indicate who can reply to the Tweet. | [optional] [Enum: [following, mentionedUsers]] 


