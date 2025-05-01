$VmName = 'vm-yopass-usea-prod01'
$ResourceGroup = 'rg-yopass-usea-prod'

az vm create `
  --resource-group $ResourceGroup `
  --name $VmName `
  --image Ubuntu2404 `
  --size Standard_B2s `
  --admin-username cadmin `
  --admin-password 'secret-password' `
  --public-ip-sku Standard `
  --os-disk-size-gb 30

# Add NSG rules
## SSH-in
## HTTP-in
## HTTPS-in

# Install Docker on Ubuntu VM
## sudo apt-get update && sudo apt-get upgrade -y
## curl -fsSL https://get.docker.com -o get-docker.sh
## sudo sh get-docker.sh

# Install Systemd service
## sudo cp ~/yopass/yopass.service /etc/systemd/system
## sudo systemctl daemon-reload
## sudo systemctl enable yopass
## sudo systemctl start yopass
## sudo systemctl status yopass