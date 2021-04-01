# Sample showing use of Azure Functions with Key Vault references

:construction:
This ARM template is still under construction. It's not yet working as I would expect.
:construction:

This sample shows

- Setting up an Azure Function Premium plan with virtual network integration.
- Setting up an Azure Key vault with a private endpoint.
- Setting a Key Vault reference to a Key Vault secret.
- Setting a the Azure Function's required Azure Storage account connection to be retrieved via a Key Vault reference.

## Notes

1. Deploy the ARM template
1. After the template is successfully deployed, wait for the Azure portal to show that Key Vault references have been successfully resolved. This can take several minutes (most of the time about 10 minutes).
1. After the Key Vault references have been successfully resolved, _then_ deploy the application code.
