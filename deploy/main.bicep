// Parameters declarations
@description('Azure region location')
param location string = 'centralindia'

@description('Subscription ID for subcription scope resources')
param subID string = '32905001-71ad-45f2-b38b-ec3b493939cc'


// Resource Declarations
module resourceGroup 'modules/rg.bicep' = {
  scope: subscription(subID)
  name: 'rgDeployment'
  params: {
    location: location
  }
}
