provider "azurerm" {
    version = "=1.24.0"
}

resource "azurerm_resource_group" "presentation" {
  name     = "${var.ResourceGroupName}"
  location = "${var.location}"
    tags = {
    environment = "${var.presentation}"
  }
}

resource "azurerm_sql_server" "presentation" {
  name                         = "${var.SqlServerName}"
  resource_group_name          = "${azurerm_resource_group.presentation.name}"
  location                     = "${var.location}"
  version                      = "12.0"
  administrator_login          = "${var.SQLServerAdminUser}"
  administrator_login_password = "${var.SQLServerAdminPassword}"
    tags = {
    environment = "${var.presentation}"
  }
}

resource "azurerm_sql_database" "presentation" {
  name                = "${var.SqlDatabaseName}"
  resource_group_name = "${azurerm_sql_server.presentation.resource_group_name}"
  location            = "${var.location}"
  server_name         = "${azurerm_sql_server.presentation.name}"
  edition                          = "${var.Edition}"
  requested_service_objective_name = "${var.ServiceObjective}"

  tags = {
    environment = "${var.presentation}"
  }
}
