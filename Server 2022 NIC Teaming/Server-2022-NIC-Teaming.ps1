New-VMSwitch -Name "SET Team" -NetAdapterName "NIC 1",”NIC 2” -EnableEmbeddedTeaming $true
Get-NetAdapter
New-VMSwitch -Name "SET Team" -NetAdapterName "NIC 1","NIC 2"
Set-VMSwitchTeam -Name SET Team -NetAdapterName "NIC 1","NIC 2"
Set-VMSwitchTeam -Name "SET Team" -LoadBalancingAlgorithm Dynamic
Get-VMSwitchTeam -Name "SET Team" | FL
# If you need to Remove Switch 
Remove-VMSwitch "SET Team"
