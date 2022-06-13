az login `
    --service-principal `
    --username $servicePrincipal `
    --password $servicePrincipalSecret `
    --tenant $servicePrincipalTenantId
Write-Output "Done"
Write-Output ""
#endregion



#restarting a specific VM in your resource group.
Write-Output "Restarting.."
az vm restart --resource-group JibberJabbberVM_group --name JibberJabbberVM --subscription 357ad59b-30a6-4d12-b0ad-dcfe18f5c0a4
