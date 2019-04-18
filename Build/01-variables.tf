variable "presentation" {
    description = "The name of the presentation - used for tagging Azure resources so I know what they belong to"
    default = "__Presentation__"
}

variable "ResourceGroupName" {
  description = "The Prefix used for all resources in this example"
  default     = "__ResourceGroupName__"
}

variable "location" {
  description = "The Azure Region in which the resources in this example should exist"
  default     = "__location__"
}

variable "SqlServerName" {
  description = "The name of the Azure SQL Server to be created or to have the database on - needs to be unique, lowercase between 3 and 24 characters including the prefix"
  default     = "__SqlServerName__"
}

variable "SqlDatabaseName" {
  description = "The name of the Azure SQL database on - needs to be unique, lowercase between 3 and 24 characters including the prefix"
  default     = "__SqlDatabaseName__"
}

