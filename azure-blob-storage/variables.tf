
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
