variable "region" {
  default = "us-east-1"
}

variable "account_name" {
  default = "craig.m@perceptilabs.com"

variable "admin_users" {
  type    = "list"
  default = ["craig.m@perceptilabs.com", "jon.p@perceptilabs.com", "robert.l@perceptilabs.com"]
}

variable "delegated_account_ids" {
  type    ="list"
  default = ["670755136744"]
}

variable "features" {
  default = {
    users   = false
    vpc     = true
    dns     = false
    infosec = false
    account = false
  }
}

variable "users" {
  default = {
    create_access_keys           = true
    write_access_files           = true
    create_delegated_permissions = false
  }
}

variable "vpc" {
  default = {
    name                        = "it-sre-apps"
    vpc_cidr                    = "10.0.0.1/16"
    az_placement                = "3"
    enable_nat_gateway          = true
    enable_single_nat_gateway   = true
    enable_multiple_nat_gateway = false
    enable_dynamodb_endpoint    = false
    enable_s3_endpoint          = false
  }
}

#variable "cloudhealth" {
#  default = {
#    role_name   = "cloud_health_role"
#    external_id 
#  }
#}

variable "default_tags" {
  default = {
    Region           = "us-east-1"
    TechnicalContact = "ops@perceptilabs.com"
    Terraform        = "true"
  }
}
