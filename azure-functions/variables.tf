variable "resource_group_name"{
	descryption = "resource name"
	type = string
	default = "exapmle_resorces"
	
}

variable "resource_group_location"{
	descryption = "Lokalizacja"
	type = string
	default = "West Europe"
	
}
	
}
variable "storage_account_name"{
	descryption = "function name"
	type = string
	default = "example-azure-function"
}

variable "storage_account_account_tier"{
	descryption = "account tier"
	type = string
	default = "Standard"
	}
variable "storage_account_account_replication_type"{
	descryption = "account replication type"
	type = string
	default = "LRS"
	}
variable "service_plan_name"{
	descryption = "function name"
	type = string
	default = "example-function-name"	
}
variable "service_plan_tier"{
	descryption = "Tier"
	type = string
	default = "Basic"	
}
variable "service_plan_size"{
	descryption = "Size"
	type = string
	default = "B1"	
}
variable "linux_function_app_name" {
	descryption = "function name"
	type = string
	default = "example-function-name"
}
variable "linux_function_app_version" {
	descryption = "version"
	type = string
	default = "Standard"
}
variable "linux_function_app_runtime_stack" {
	descryption = "runtime_stack"
	type = string
	default = "LRS"
}
variable "function_app_function_name" {
	descryption = "function name"
	type = string
	default = "example-function-name
}
