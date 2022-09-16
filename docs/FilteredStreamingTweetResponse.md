# twitter::FilteredStreamingTweetResponse

A Tweet or error that can be returned by the streaming Tweet API. The values returned with a successful streamed Tweet includes the user provided rules that the Tweet matched.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Tweet**](Tweet.md) |  | [optional] 
**errors** | [**array[Problem]**](Problem.md) |  | [optional] [Min. items: 1] 
**includes** | [**Expansions**](Expansions.md) |  | [optional] 
**matching_rules** | [**array[FilteredStreamingTweetResponseMatchingRulesInner]**](FilteredStreamingTweetResponse_matching_rules_inner.md) | The list of rules which matched the Tweet | [optional] 


