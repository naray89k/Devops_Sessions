variable "REGION" {
  type        = string
  description = "AWS REGION"
  default     = "eu-west-1"
}

variable "members" {
  type = map(object({
    is_adult  = bool
    full_name = string
  }))
  default = {
    "nakr" = {
      is_adult  = true
      full_name = "Narayanan Krishnan"
    },
    "gago" = {
      is_adult  = true
      full_name = "Gandhimathi Gopalakrishnan"
    },
    "vana" = {
      is_adult  = false
      full_name = "Vaanadhi Narayanan"
    },
    "gona" = {
      is_adult  = false
      full_name = "Govardhan Narayanan"
    }
  }
}

variable "machine_types" {
  type = map(map(object({
    instance_type = string
    vcpu          = number
    memory        = number
  })))
  default = {
    "nano" = {
      "t3" = {
        instance_type = "t3.nano"
        vcpu          = 2
        memory        = 0.5
      },
      "t3a" = {
        instance_type = "t3a.nano"
        vcpu          = 2
        memory        = 0.5
      },
      "t2" = {
        instance_type = "t2.nano"
        vcpu          = 1
        memory        = 0.5
      }
    },
    "micro" = {
      "t3" = {
        instance_type = "t3.micro"
        vcpu          = 2
        memory        = 1
      },
      "t3a" = {
        instance_type = "t3a.micro"
        vcpu          = 2
        memory        = 1
      },
      "t2" = {
        instance_type = "t2.micro"
        vcpu          = 1
        memory        = 1
      }
    },
    "small" = {
      "t3" = {
        instance_type = "t3.small"
        vcpu          = 2
        memory        = 2
      },
      "t3a" = {
        instance_type = "t3a.small"
        vcpu          = 2
        memory        = 2
      },
      "t2" = {
        instance_type = "t2.small"
        vcpu          = 1
        memory        = 2
      }
    },
    "medium" = {
      "t3" = {
        instance_type = "t3.medium"
        vcpu          = 2
        memory        = 4
      },
      "t3a" = {
        instance_type = "t3a.medium"
        vcpu          = 2
        memory        = 4
      },
      "t2" = {
        instance_type = "t2.medium"
        vcpu          = 2
        memory        = 4
      }
    },
    "large" = {
      "t3" = {
        instance_type = "t3.large"
        vcpu          = 2
        memory        = 8
      },
      "t3a" = {
        instance_type = "t3a.large"
        vcpu          = 2
        memory        = 8
      },
      "t2" = {
        instance_type = "t2.large"
        vcpu          = 2
        memory        = 8
      }
    },
  }
}

variable "type" {
  default = {
    "type" = "keywords"
  }
}

variable "instance_type" {
  #default = "t3.large"
}
