# twitter::CreateComplianceJobRequest

A request to create a new batch compliance job.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | User-provided name for a compliance job. | [optional] [Max. length: 64] 
**resumable** | **character** | If true, this endpoint will return a pre-signed URL with resumable uploads enabled. | [optional] 
**type** | **character** | Type of compliance job to list. | [Enum: [tweets, users]] 


