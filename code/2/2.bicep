@description('Generated from /subscriptions/5307496e-acc6-4615-9def-b5edbd8c62e9/resourceGroups/backendrg2/providers/Microsoft.Storage/storageAccounts/backendrgtest')
resource backendrgtest 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  name: 'backendrgtest1'
  location: 'westeurope'
  tags: {
  }
  properties: {
    minimumTlsVersion: 'TLS1_0'
    allowBlobPublicAccess: true
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}
