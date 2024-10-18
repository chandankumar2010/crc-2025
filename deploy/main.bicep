// Parameters declarations
@description('Azure region location')
param location string = 'centralindia'

@description('Subscription ID for subcription scope resources')
param subID string = 'dc338097-850c-4d63-bbdc-82f68756831b'


// Resource Declarations
module resourceGroup 'modules/rg.bicep' = {
  scope: subscription(subID)
  name: 'rgDeployment'
  params: {
    location: location
  }
}
