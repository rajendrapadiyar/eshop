param(
$Aks_rg_name,
$Aks_name,
$Subscription
)

# Script to get DNS of AKS when HTTP routing is enabled

$key=(Get-AzAksCluster -ResourceGroupName $Aks_rg_name -Name $Aks_name).addonProfiles.httpApplicationRouting.config.HTTPApplicationRoutingZoneName

Write-Host "##vso[task.setvariable variable=K8s_dns]$key"