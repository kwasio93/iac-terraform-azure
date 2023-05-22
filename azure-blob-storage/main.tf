resource "azurem_resource_group" "aplication"{
	name = "resorces"
	location = "West Europe"
}
resource "azurem_storage_account" "aplication"{
	name = "example_resorces"
	resource_name = azurem_resource_group.aplication.name
	location = azurem_resource_group.aplication.location
	account_tier = var.storage_account_account_tier
	account_replication_type = var.storage_account_account_replication_type
}
resource "azurem_storage_conatiner" "aplication" {
	name = "my_containers"
	account_tier = azurem_storage_account.aplication.name
	container_access_type = var.storage_conatiner_container_access_type
}
resource "azurem_storage_blob" "aplication"{
	name = "moj-plik.zip"
	storage_acountname = azurem_resource_group.aplication.name
	storage_container_name = azurem_storage_conatiner.aplication.name
	type = var.storage_blob_type
	size = var.storage_blob_size
	source = var.storage_blob_source	
}
