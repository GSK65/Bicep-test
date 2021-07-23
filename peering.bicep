param vnet01name string = 'vnet01'
param vnet02name string = 'vnet02'

resource peer 'microsoft.network/virtualNetworks/virtualNetworkPeerings@2020-05-01'  = {
  name: '${vnet01name}/peering-to-vnet002'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: true
    allowGatewayTransit: false
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: resourceId('RG001', 'Microsoft.Network/virtualNetworks', '${vnet02name}')
    }
  }
}


        resource peer02 'microsoft.network/virtualNetworks/virtualNetworkPeerings@2020-05-01'  = {
  name: '${vnet02name}/peering-to-vnet001'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: true
    allowGatewayTransit: false
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: resourceId('RG001', 'Microsoft.Network/virtualNetworks', '${vnet01name}')
    }
  }
}
