# Copyright (c) HashiCorp, Inc.

variable "waypoint_application" {
  description = "Name of the waypoint application, to be used in all resource names."
  type        = string
}

variable "string_variable" {
  type        = string
  description = "An optional string variable."
}

variable "number_variable" {
  type        = number
  description = "An optional number variable."
}

variable "bool_variable" {
  type        = bool
  description = "An optional boolean variable."
}

variable "list_string_variable" {
  type        = list(string)
  description = "An optional list of string variable."
}

variable "map_string_variable" {
  type        = map(string)
  description = "An optional map of string variable."
}

variable "set_string_variable" {
  type        = set(string)
  description = "An optional set of string variable."
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
}
