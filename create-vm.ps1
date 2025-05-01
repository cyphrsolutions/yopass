$VmName = 'vm-yopass-usea-prod01'
$ResourceGroup = 'rg-yopass-usea-prod'

az vm create `
  --resource-group $ResourceGroup `
  --name $VmName `
  --image Ubuntu24.02 `
  --size Standard_B1ms `
  --admin-username cadmin `
  --password 'secret-password' `
  --public-ip-sku Standard `
  --os-disk-size-gb 30