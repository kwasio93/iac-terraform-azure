variable "azurem_resource_group" {
	naza = string
	lokacja = string
}
variable "azurem_storage_account" {
	nazwa = string
	grupa_zasobow = zamiena typu terraform
	lokacja = zamiena typu terraform
	rodzaj_konta = string
	Typ_powielnia = string
}
variable "azurem_storage_conatiner" {
	nazwa = string
	rodzaj_konta = zamiena typu terraform
	dostep_kontenr = string
}
variable "azurem_storage_blob" {
	nazwa = string
	grupa_zasobow = zamiena typu terraform
	nazwa_kontenra = zamiena typu terraform
	typ = string
	zrodło = string	
}
