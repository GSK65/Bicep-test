resource nsg2 'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
  name: 'networkSecurityGroup'
  location: 'westeurope'
    properties: {
       securityRules:  [
       ]
    }
}
