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

module StorageAccount 'ts:5dff5b4b-6a38-472c-a5a2-33eb2aba9992/testbicep-rg-001/storageSpec:0.1a' = {
  name: storageAccountName
  params: {
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName
    storageAccountSKU: storageAccountSKU
  }
  scope: resourceGroup(resourceGroupName)
  dependsOn: [ResourceGroup]
}

