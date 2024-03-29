$resourceGroupName = Read-Host -Prompt "Resource Group Name"
$locationName = Read-Host -Prompt "Location"
$vmName = Read-Host -Prompt "Vm Name"

New-AzVm `
    -ResourceGroupName $resourceGroupName `
    -Name $vmName `
    -Location $locationName `
    -Image "Win2019Datacenter" `
    -VirtualNetworkName $vmName `
    -SubnetName $vmName `
    -SecurityGroupName $vmName `
    -PublicIpAddressName $vmName `
    -OpenPorts 80, 3389 `
    -Size "Standard_B2s" `
    -Verbose

