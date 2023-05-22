resource "azurem_resource_group" "aplication"{
	name = var.resource_group_name
	location = var.resource_group_location
}

resource "azurem_storage_account" "aplication"{
	name = var.storage_aaccount_name
	resource_group_name = azurem_resource_group.aplication.name
	location = azurem_resource_group.aplication.lokaction
	account_tier = var.storage_aaccount_account_tier
	account_replication_type = var.storage_aaccount_account_replication_type	
}

resource "azurem_app_service_plan" "aplication"{
	name = var.app_service_plan_name
	location = azurem_resource_group.aplication.lokacja
	resource_group_name = azurem_resource_group.example.nazwa
	Kind = "Linux"
	reserved = true
	
	
	sku{
		tier = var.app_service_plan_tier
		size = var.app_service_plan_size
	}
	
}

resource "azurem_linux_function_app" "aplication"{
	name = var.functions_app_name
	location = azurem_resource_group.aplication.location
	resourc_group_name = azurem_resource_group.aplication.name
	app_service_plan = azurem_app_service_plan.aplication.name
	version = var.function_app_version
	runtime_stack = var.function_app_runtime_stack
}
resource "azurem_function_app_function" "aplication"{
	name = var.app_function_name
	grupa_zasobow = azurem_resource_group.aplication.nazwa
	app_service_plan_id = azurem_app_service.aplication.id
	przechowywanie = azurem_storage_account.aplication.nazwa
	przechowanie_access_key = azurem_storage_account.aplication.primary_access_key 
	os_type = "linux"
	version = azurem_linux_function_app.example_linux_function_app.version
	runtime_version =  azurem_linux_function_app.example_linux_function_app.runtime_version
	function_app_settings = {
		"FUNCTIONS_WORKER_RUNTIME" = azurem_linux_function_app.aplcation.runtime_version
	}
		
}




