# DSLockRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lockDurationInSeconds** | **NSString*** | The number of seconds to lock the envelope for editing.  Must be greater than 0 seconds. | [optional] 
**lockedByApp** | **NSString*** | A friendly name of the application used to lock the envelope.  Will be used in error messages to the user when lock conflicts occur. | [optional] 
**lockType** | **NSString*** | The type of envelope lock.  Currently \&quot;edit\&quot; is the only supported type. | [optional] 
**templatePassword** | **NSString*** |  | [optional] 
**useScratchPad** | **NSString*** | Reserved for future use.  Indicates whether a scratchpad is used for editing information.   | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


