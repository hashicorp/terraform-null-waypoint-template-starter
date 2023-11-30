# Copyright (c) HashiCorp, Inc.

variable "waypoint_application" {
  description = "Name of the waypoint application, to be used in all resource names."
  type        = string
}

variable "string_variable" {
  type        = string
  description = "An optional string variable."
  default     = "string"
}

variable "number_variable" {
  type        = number
  description = "An optional number variable."
  default     = "number"
}

variable "bool_variable" {
  type        = bool
  description = "An optional boolean variable."
  default     = "bool"
}

variable "list_string_variable" {
  type        = list(string)
  description = "An optional list of string variable."
  default     = ["list", "of", "string"]
}

variable "map_string_variable" {
  type        = map(string)
  description = "An optional map of string variable."
  default = {
    "map" = "string"
  }
}

variable "set_string_variable" {
  type        = set(string)
  description = "An optional set of string variable."
  default     = ["set", "of", "string"]
}

variable "object_variable" {
  type = object({
    x = string
    y = optional(number)
    z = optional(bool, true)
  })
  description = <<EOF
An optional object variable, with three arguments. The arguments include:
1. A required string.
2. An optional number.
3. An optional bool, which is true by default.
EOF
  default = {
    x = "value"
    y = 1
    z = true
  }
}
