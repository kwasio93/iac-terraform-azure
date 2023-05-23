variable "resource_group_name"{
	descryption = "resource name"
	type = string
	default = "exapmle_resorces"
	
}

variable "resource_group_location"{
	descryption = "Lokalizacja"
	type = string
	default = "West Europe"
	
}
variable "storage_account_account_name" {
	description ="resorce name"
	type = string
	default = ""example_resorces"
}

variable "storage_container_name"{
	description ="resorce name"
	type = string
	default = "my_containers"
}


variable "storage_account_account_tier" {
	description ="Tier account"
	type = string
	default = "Standard"
}
variable "storage_account_account_replication_type" {
	description ="account_replication_type"
	type = string
	default = "LRS"
}
variable "storage_conatiner_storage_account_container_access_type" {
	description ="container_access_type"
	type = string
	default = "Public"
}

variable "storage_blob_name" {
	description ="File name"
	type = string
	default = "moj-plik.zip"	
}

variable "storage_blob_type" {
	description ="type_name"
	type = string
	default = "Page"	
}
variable "storage_blob_type" {
	description ="size"
	type = number
	default = 0	
}
variable "storage_blob_type" {
	description ="source_name"
	type = string
	default = "Page"	
}
