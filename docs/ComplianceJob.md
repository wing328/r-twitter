# twitter::ComplianceJob


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** | Creation time of the compliance job. | 
**download_expires_at** | **character** | Expiration time of the download URL. | 
**download_url** | **character** | URL from which the user will retrieve their compliance results. | 
**id** | **character** | Compliance Job ID. | [Pattern: ^[0-9]{1,19}$] 
**name** | **character** | User-provided name for a compliance job. | [optional] [Max. length: 64] 
**status** | [**ComplianceJobStatus**](ComplianceJobStatus.md) |  | 
**type** | [**ComplianceJobType**](ComplianceJobType.md) |  | 
**upload_expires_at** | **character** | Expiration time of the upload URL. | 
**upload_url** | **character** | URL to which the user will upload their Tweet or user IDs. | 


