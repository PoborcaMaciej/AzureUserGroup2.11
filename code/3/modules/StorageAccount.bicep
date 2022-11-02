param storageAccountKind string
param storageAccountLocation string = resourceGroup().location
param storageAccountName string
param storageAccountSKU string

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  kind: storageAccountKind
  location: storageAccountLocation
  name: storageAccountName
  sku: {
    name: storageAccountSKU
  }
}
