terraform{
	required_providers{
		azurerm = {
			source = "hashicorp/azurem"
			version = "3.0.0"
		}
	}
}
provider "azurem"{
	features{}
}
