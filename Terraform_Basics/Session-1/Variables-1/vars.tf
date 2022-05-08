variable "name" {
  type    = string
  default = "Narayanan"
}

variable "age" {
  type    = number
  default = 37
}

variable "numbers" {
  type    = list(number)
  default = [1, 6, 2, 7, 3, 8, 4, 9, 5, 10]
}

variable "list-1" {
  type    = list(any)
  default = ["Narayanan", 37]
}

variable "is_human" {
  type    = bool
  default = false
}

variable "full_names" {
  type = map(string)
  default = {
    first_name = "Narayanan"
    last_name  = "Krishnan"
  }
}

variable "employees" {
  type = map(map(string))
  default = {
    emp1 = {
      name     = "Karthick"
      role     = "Devops Manager"
      location = "Chennai"
    }
    emp2 = {
      name     = "Narayanan"
      role     = "Devops Engineer"
      location = "Cambridge"
    }
    emp3 = {
      name     = "Senthil"
      role     = "Devops Engineer"
      location = "Austin"
    }
  }
}

variable "prime_set" {
  type    = set(number)
  default = [7, 3, 5, 1]
}

variable "general_set" {
  type    = set(any)
  default = ["Narayanan", "Gandhi Madhi", "Vaanadhi", "Govardhan", "Narayanan"]
}
