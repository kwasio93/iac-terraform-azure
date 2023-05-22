resource "azurem_resource_group" "example"{
	naza = "zasoby"
	lokacja = "West Europe"
}
resource "azurem_storage_account" "example"{
	nazwa = "przykład_zasobow"
	grupa_zasobow = azurem_resource_group.example.nazwa
	lokacja = azurem_resource_group.example.lokacja
	rodzaj_konta = "Standard"
	Typ_powielnia = "LRS"
}
resource "azurem_storage_conatiner" "example" {
	nazwa = "content"
	rodzaj_konta = azurem_storage_account.example.nazwa
	dostep_kontenr = "private"
}
resource "azurem_storage_blob" "example"{
	nazwa = "moj-plik.zip"
	grupa_zasobow = azurem_resource_group.example.nazwa
	nazwa_kontenra = azurem_storage_conatiner.example.nazwa
	typ = "BlocK"
	zrodło = "plik.zip"	
}
