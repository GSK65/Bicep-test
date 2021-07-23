module sa './storageacc.bicep' = {
  name: 'deploystorage'
}

module nw01 './Network01.bicep' = {
  name: 'network001'
  
}

module nw02 './network02.bicep' = {
  name: 'network002'
  
}

module nsg 'nsg.bicep' = {
  name: 'nsg001'
  
}

module peering 'peering.bicep' = {
  name: 'peering01'
  
}
