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
1. After the Key Vault references have been successfully resolved, there may be an error message in the Azure Functions Overview page in the Azure portal which indicates the _"System.Private.CoreLib: The network path was not found. : 'C:\home\site\wwwroot\host.json'"_.
1. This is a good sign.  It seems that the Azure Functions runtime has resolved the Key Vault references and is attempting to look for the expected files on the specified Azure Files share. The files are apparently not there, and thus the error.  Now the runtime needs to be "kicked" to create the files. This can be done in one of the following ways:
   1. Browse to the SCM site's /DebugConsole endpoint (e.g., [https://contoso.scm.azurewebsites.net/DebugConsole](https://contoso.scm.azurewebsites.net/DebugConsole))
   1. Scale UP the Azure Functions Premium plan size.
   1. Deploy code (not reliable for me)
1. Deploy the application code.
