variable "presentation" {
    description = "The name of the presentation - used for tagging Azure resources so I know what they belong to"
    default = "dataindevon"
}

variable "ResourceGroupName" {
  description = "The Resource Group Name"
  default     = "beardrules"
}

variable "location" {
  description = "The Azure Region in which the resources in this example should exist"
  default     = "uksouth"
}

variable "SqlServerName" {
  description = "The name of the Azure SQL Server to be created or to have the database on - needs to be unique, lowercase between 3 and 24 characters including the prefix"
  default     = "jeremy"
}
variable "SQLServerAdminUser" {
  description = "The name of the Azure SQL Server Admin user for the Azure SQL Database"
  default     = "Beard"
}
variable "SQLServerAdminPassword" {
  description = "The Azure SQL Database users password"
  default     = "JonathanlovesR3ge%"
}

variable "SqlDatabaseName" {
  description = "The name of the Azure SQL database on - needs to be unique, lowercase between 3 and 24 characters including the prefix"
  default     = "jsdb"
}

variable "Edition" {
  description = "The Edition of the Database - Basic, Standard, Premium, or DataWarehouse"
  default     = "Standard"
}

variable "ServiceObjective" {
  description = "The Service Tier S0, S1, S2, S3, P1, P2, P4, P6, P11 and ElasticPool"
  default     = "S0"
}

