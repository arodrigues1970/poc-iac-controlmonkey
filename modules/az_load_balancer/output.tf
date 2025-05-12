output "id" {
  description = "The Load Balancer ID."
  value       = azurerm_lb.lb.id
}

output "private_ip_address" {
  description = "The first private IP address assigned to the load balancer in frontend_ip_configuration blocks"
  value       = azurerm_lb.lb.private_ip_address
}

output "private_ip_addresses" {
  description = "The list of private IP address assigned to the load balancer in frontend_ip_configuration blocks"
  value       = azurerm_lb.lb.private_ip_addresses
}

output "lb" {
  value = azurerm_lb.lb
}
