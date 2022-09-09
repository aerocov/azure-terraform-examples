variable "location" {
  description = "(Required) Specifies the location of the storage account for the terraform state container"
  type        = string
  default     = "Australia Southeast"
}

variable "platform_name" {
  description = "(Optional) The name of the platform that is used to tag and name the resources."
  type        = string
  default     = "hoss"
}

variable "platform_env" {
  description = "(Optional) The environment name that is used to tag and name the resources."
  type        = string
  default     = "dev"
}
