param resourceGroupName string
param resourceGroupLocation string
param storageAccountKind string
param storageAccountName string
param storageAccountSKU string

targetScope = 'subscription'

module ResourceGroup 'modules/ResourceGroup.bicep'= {
  name: resourceGroupName
  params: {
    resourceGroupLocation: resourceGroupLocation
    resourceGroupName: resourceGroupName
  }
  scope: subscription()
}

module StorageAccount 'modules/StorageAccount.bicep' = {
  name: storageAccountName
  params: {
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
  scope: resourceGroup(resourceGroupName)
  dependsOn: [ResourceGroup]
}
