variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}

variable "aws_access_key" {
  description = "Your AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "Your AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "strapi-keypair-srs"
}

variable "docker_image_tag" {
  description = "Docker image tag"
  type        = string
  default     = "latest"
}

