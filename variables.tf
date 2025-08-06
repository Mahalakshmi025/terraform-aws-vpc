variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    default = "true"
}

variable "common_tags" {
    default = {}
}

variable "vpc_tags" {
    default ={}
}

variable "igw_tags" {
    default = {}
}

#public subnet
variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please provide 2 valid public subnet cidrs"
    }
}

variable "public_subnet_tags" {
    default = {}
}

#private subnet
variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please provide 2 valid private subnet cidrs"
    }
}

variable "private_subnet_tags" {
    default = {}
}

#database subnet
variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please provide 2 valid database subnet cidrs"
    }
}

variable "database_subnet_tags" {
    default = {}
}

#DB group for RDS
variable "db_subnet_group_tags" {
    default = {}
}

#fot nat gateway
variable "nat_gateway_tags" {
    default ={}
}