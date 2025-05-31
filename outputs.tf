output "appgw_public_ip" {
  value       = azurerm_public_ip.appgw_public_ip.ip_address
  description = "Public IP of the Application Gateway"
}

output "vm_private_ips" {
  value       = [for nic in azurerm_network_interface.vm_nic : nic.private_ip_address]
  description = "Private IPs of backend VMs"
}
