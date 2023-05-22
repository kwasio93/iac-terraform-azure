variable "azurem_resource_group"{
	nazwa = string
	lokacja = string
}
variable "azurem_storage_account"{
	nazwa = string
	grupa_zasobow = zmienna typyu terraform
	lokacja = zmienna typu terraform
	rodzaj_konta = string
	Typ_powielania_konta = string
}
variable "azurem_app_service_plan"{
	nazwa = string
	lokacja = zmienna typu terraform
	grupa_zasobow = zmienna typu terraform
	
	sku{
		poziom = string
		rozmiar = string
	}
}
variable "azurem_linux_function_app" {
	nazwa = string
	lokacja = zmienna typu terraform
	grupa_zasobow = zmienna typu terraform
	plan_testow = zmienna typu terraform
	system_operacyjny = string
}
variable "azurem_function_app_function" {
	nazwa = string
	grupa_zasobow = zmienna typu terraform
	app_service_plan_id = zmienna typu terraform
	przechowywanie = zmienna typu terraform
	przechowanie_access_key = zmienna typu terraform  
	system = zmienna typu terraform
}
