resource "azurerm_subnet_route_table_association" "assoc" {
  for_each       = { for subnet in var.routes_subnets : subnet.name => subnet }
  subnet_id      = each.value.id
  route_table_id = azurerm_route_table.rtable.id
}
