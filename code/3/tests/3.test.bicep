module test '../3.bicep' = {
  name: 'test'
  params: {
    resourceGroupLocation: 'westeurope'
    resourceGroupName: 'test'
    storageAccountKind: 'StorageV2'
    storageAccountName: 'satesst01pobi'
    storageAccountSKU: 'Standard_LRS'
  }
  scope: subscription()
}
