param resourceGroupName string
param resourceGroupLocation string
param storageAccountKind string
param storageAccountName string
param storageAccountSKU string

targetScope = 'subscription'

module ResourceGroup 'br:bicepregistrymp.azurecr.io/modules/resourcegroups:0.1' = {
  name: resourceGroupName
  params: {
    resourceGroupLocation: resourceGroupLocation
    resourceGroupName: resourceGroupName
  }
  scope: subscription()
}

module StorageAccount 'br:bicepregistrymp.azurecr.io/modules/storageaccount:0.1' = {
  name: storageAccountName
  params: {
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
  scope: resourceGroup(resourceGroupName)
  dependsOn: [ResourceGroup]
}

