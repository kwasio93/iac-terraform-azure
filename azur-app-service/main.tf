resource "azurem_resorce_group" "aplication"{
	name = var.resorce_group_name
	location = var.resorce_group_location
}
resource "azurerm_app_service_plan" "aplication" {
	name = var.app_service_plan_name
	location = azurerm_resource_group.aplication.location
	resource_group_name = azurerm_resource_group.aplication.name

	sku{
		tier = var.app_service_plan_tier
    		size = var.app_service_plan_size
  	}
}
resource "azurem_linux_web_app" "aplication" {
	name = var.web_app_name
	location = azurem_resorce_group.aplication.location
	resource_group_name = azurem_resorce_group.aplication.name
	service_plan_id = azurem_resorce_group.aplication.id
	
	site_config{
		python_version = var.python_version
		reomte_debuging_enabled = var.reomte_debuging_enabled
		http2_enabled = var.http2_enabled
	}
	backup{
		enable = var.enable
	}
	
}
resource "azurerm_app_service_source_control" "aplication"{
	application_id = azurem_linux_web_app.aplication.id
	manual_integration = var.aplcation.manual_integration
	rollback_integraton = var.aplication.rollback_integration
	use_mercurial = var.aplcation.use_mercurial
	branch = var.aplication.branch
} 


