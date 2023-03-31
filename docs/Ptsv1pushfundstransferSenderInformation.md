# CyberSource::Ptsv1pushfundstransferSenderInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of sender.  Funds Disbursement  This value is the name of the originator sending the funds disbursement.  | [optional] 
**first_name** | **String** | This field contains the first name of the entity funding the transaction.  | [optional] 
**last_name** | **String** | This field contains the last name of the entity funding the transaction.  | [optional] 
**middle_name** | **String** | Supported only for Mastercard  transactions. This field contains the  middle name of the entity funding the transaction  | [optional] 
**postal_code** | **String** | Sender’s postal code.  For USA, this must be a valid value of 5 digits or 5 digits hyphen 4 digits, for example &#39;63368&#39;, &#39;63368-5555&#39;. For other regions, this can be alphanumeric, length 1-10.  Required for FDCCompass.  | [optional] 
**address1** | **String** | Street address of sender.  Funds Disbursement  This value is the address of the originator sending the funds disbursement.  Visa Platform Connect Required for transactions using business application id of AA, BI, PP, and WT.  | [optional] 
**address2** | **String** | Used for additional address information. For example: Attention: Accounts Payable Optional field.  This field is supported for only Mastercard Send.  | [optional] 
**locality** | **String** | The sender&#39;s city  Visa Platform Connect Required for transactions using business application id of AA, BI, PP, and WT.  | [optional] 
**administrative_area** | **String** | Sender’s state. Use the State, Province, and Territory Codes for the United States and Canada.The sender&#39;s province, state or territory. Conditional, required if sender&#39;s country is USA or CAN. Must be uppercase alpha 2 or 3 character country subdivision code.  See https://developer.cybersource.com/library/documentation/sbc/quickref/states_and_provinces.pdf  | [optional] 
**country** | **String** | Sender&#39;s country code. Use ISO Standard Alpha Country Codes.  https://developer.cybersource.com/library/documentation/sbc/quickref/countries_alpha_list.pdf  Visa Platform Connect Required for transactions using business application id of AA, BI, PP, and WT.  Required for Mastercard Send  | [optional] 
**vat_registration_number** | **String** | Customer&#39;s government-assigned tax identification number.  | [optional] 
**date_of_birth** | **String** | Sender’s date of birth in YYYYMMDD format.  | [optional] 
**phone_number** | **String** | Sender’s phone number.  | [optional] 
**payment_information** | [**Ptsv1pushfundstransferSenderInformationPaymentInformation**](Ptsv1pushfundstransferSenderInformationPaymentInformation.md) |  | [optional] 
**reference_number** | **String** | Reference number generated by you that uniquely identifies the sender.  | [optional] 
**account** | [**Ptsv1pushfundstransferSenderInformationAccount**](Ptsv1pushfundstransferSenderInformationAccount.md) |  | [optional] 
**personal_identification** | [**Ptsv1pushfundstransferSenderInformationPersonalIdentification**](Ptsv1pushfundstransferSenderInformationPersonalIdentification.md) |  | [optional] 

