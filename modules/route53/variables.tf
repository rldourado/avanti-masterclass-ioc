variable "aws_access_key_id" {
  description = "Access key to AWS console"
  type        = string
}

variable "aws_secret_access_key" {
  description = "Secret key to AWS console"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "sa-east-1"
}

variable "www_record_ip" {
  type    = string
  default = "192.168.1.220"
}
