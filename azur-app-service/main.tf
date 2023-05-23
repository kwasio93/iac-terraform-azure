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
		java_version = var.java_version
		java_container = var.java_container
		java_container_version = var.java_container_version
		http_only = var.http_only
	}
	
	app_settings = {
		"WEBSITE_JAVA_VERSION" = var.java_version
		"WEBSITE_WEB_CONTAINER" = var.java_container
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
	repo_url = var.aplication.repo_url
} 


