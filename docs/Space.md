# twitter::Space



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** | Creation time of the Space. | [optional] 
**creator_id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**ended_at** | **character** | End time of the Space. | [optional] 
**host_ids** | **array[character]** | The user ids for the hosts of the Space. | [optional] 
**id** | **character** | The unique identifier of this Space. | [Pattern: ^[a-zA-Z0-9]{1,13}$] 
**invited_user_ids** | **array[character]** | An array of user ids for people who were invited to a Space. | [optional] 
**is_ticketed** | **character** | Denotes if the Space is a ticketed Space. | [optional] 
**lang** | **character** | The language of the Space. | [optional] 
**participant_count** | **integer** | The number of participants in a Space. | [optional] 
**scheduled_start** | **character** | A date time stamp for when a Space is scheduled to begin. | [optional] 
**speaker_ids** | **array[character]** | An array of user ids for people who were speakers in a Space. | [optional] 
**started_at** | **character** | When the Space was started as a date string. | [optional] 
**state** | **character** | The current state of the Space. | [Enum: [live, scheduled, ended]] 
**subscriber_count** | **integer** | The number of people who have either purchased a ticket or set a reminder for this Space. | [optional] 
**title** | **character** | The title of the Space. | [optional] 
**topics** | [**array[SpaceTopicsInner]**](Space_topics_inner.md) | The topics of a Space, as selected by its creator. | [optional] 
**updated_at** | **character** | When the Space was last updated. | [optional] 


