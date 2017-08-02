# DSLockInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**lockDurationInSeconds** | **NSString*** | Sets the time, in seconds, until the lock expires when there is no activity on the envelope.  If no value is entered, then the default value of 300 seconds is used. The maximum value is 1,800 seconds.  The lock duration can be extended.  | [optional] 
**lockedByApp** | **NSString*** | Specifies the friendly name of  the application that is locking the envelope. | [optional] 
**lockedByUser** | [**DSUserInfo***](DSUserInfo.md) |  | [optional] 
**lockedUntilDateTime** | **NSString*** | The datetime until the envelope lock expires. | [optional] 
**lockToken** | **NSString*** | A unique identifier provided to the owner of the envelope lock.   Used to prove ownership of the lock. | [optional] 
**lockType** | **NSString*** | The type of envelope lock.  Currently \&quot;edit\&quot; is the only supported type. | [optional] 
**useScratchPad** | **NSString*** | Reserved for future use.  Indicates whether a scratchpad is used for editing information.   | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


