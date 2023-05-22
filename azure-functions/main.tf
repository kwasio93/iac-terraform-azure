resource "azurem_resource_group" "example"{
	nazwa = "azure-funcyions-test-rg"
	lokacja = "West Europe"
}

resource "azurem_storage_account" "example"{
	nazwa = "functionsapptestsa"
	grupa_zasobow = azurem_resource_group.example.nazwa
	lokacja = azurem_resource_group.example.lokacja
	rodzaj_konta = "Standard"
	Typ_powielania_konta = "LRS"	
}

resource "azurem_app_service_plan" "example"{
	nazwa = "azure-functions-test-service-plan"
	lokacja = azurem_resource_group.example.lokacja
	grupa_zasobow = azurem_resource_group.example.nazwa
	
	sku{
		poziom = "Standard"
		rozmiar = "S1"
	}
	
}

resource "azurem_linux_function_app" "example"{
	nazwa = "azure-linux-app-functions-plan"
	lokacja = azurem_resource_group.example.lokacja
	grupa_zasobow = azurem_resource_group.example.nazwa
	plan_testow = azurem_app_service_plan.example.nazwa
	system_operacyjny = "linux"
}
resource "azurem_function_app_function" "example"{
	nazwa = "test-azure-functions"
	grupa_zasobow = azurem_resource_group.example.nazwa
	app_service_plan_id = azurem_app_service.example.id
	przechowywanie = azurem_storage_account.example.nazwa
	przechowanie_access_key = azurem_storage_account.example.primary_access_key 
	system = azurem_linux_function_app.example.system_operacyjny
}




