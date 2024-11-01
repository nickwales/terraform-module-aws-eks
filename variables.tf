variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "name"
}

variable "node_group_name" {
  default = "node-group-one"
}

variable "vpc_id" {}
variable "public_subnets" {}
variable "private_subnets" {}

variable "desired_size" {
  default = 2
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 5
}

variable "instance_type" {
  default = "t3.small"
}

variable "cluster_endpoint_private_access" {
  default = false
}

variable "cluster_endpoint_public_access" {
  default = true
}