variable "file" {
  type = string
  default = "members.txt"
}

variable "use_special_characters" {
  type = bool
  default = true
}

variable "password_length" {
  type = number
  default = 12
}