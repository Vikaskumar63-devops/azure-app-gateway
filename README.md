# Azure Application Gateway Demo with Terraform

## What it does

- Creates Resource Group and VNet with 2 subnets (appgw subnet + VM subnet)
- Creates 2 Linux VMs running nginx in the backend subnet
- Creates Application Gateway with public IP
- Configures HTTP listener on port 80 and routes traffic to VMs
- Installs nginx on VMs to respond to HTTP requests

## How to use

1. Run `terraform init`
2. Run `terraform apply` and confirm
3. After deployment, get the App Gateway public IP from output
4. Open a browser and navigate to `http://<appgw_public_ip>`
5. You should see the default nginx welcome page served by one of the backend VMs.

## Notes

- Admin username and password are configurable in `variables.tf`
- VMs use password authentication for SSH (adjust in code if you want to use keys)
- Destroy resources with `terraform destroy` when done
