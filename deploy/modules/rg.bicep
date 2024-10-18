targetScope = 'subscription'

// Parameters declarations
@description('Azure region location')
param location string

// Variables declarations
var resourceGroupName = 'crc-2025'

// Resources declarations
resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}


