variable "name" {
  description = "(Required) The name of the Container which should be created within the Storage Account."
  type        = string
}

variable "storage_account_name" {
  description = "(Required) The name of the Storage Account where the Container should be created."
  type        = string
}

variable "container_access_type" {
  description = "(Optional) The Access Level configured for this Container."
  default     = "blob"
  type        = string

  validation {
    condition     = contains(["blob", "container", "private"], var.container_access_type)
    error_message = "The container access type is invalid."
  }
}

variable "tags" {
  description = "(Optional) Specifies the tags of the storage account"
  default     = {}
}
