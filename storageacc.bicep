param location string = 'westeurope'
param namePrefix string = 'stg'
var storageaccountname = '${namePrefix}${uniqueString(resourceGroup().id)}'

resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageaccountname
  location: location
  sku: {
    name:   'Standard_LRS'
  }
  kind:  'StorageV2'
  
}
