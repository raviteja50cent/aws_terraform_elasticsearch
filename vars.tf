variable "region" {
  type    = "string"
  default = "us-east-1"
}

variable "domain_name" {
  type        = string
  default     = "terraformawsES"
}

variable "elasticsearch_version" {
  type        = string
  default     = "7.10"
}

variable "instance_type" {
  type        = string
  default     = "t2.small.elasticsearch"
}

variable "instance_count" {
  type        = number
  default     = 1
}

variable "zone_awareness_enabled" {
  type        = bool
  default     = true
}

variable "availability_zone_count" {
  type        = number
  default     = 2
}

variable "ebs_volume_size" {
  type        = number
  default     = 10
}

variable "ebs_volume_type" {
  type        = string
  default     = "gp2"
}

variable "ebs_iops" {
  type        = number
  default     = 0
}

variable "encrypt_at_rest_enabled" {
  type        = bool
  default     = false
}

variable "encrypt_at_rest_kms_key_id" {
  type        = string
  default     = ""
}

variable "automated_snapshot_start_hour" {
  type        = number
  default     = 0
}

variable "dedicated_master_enabled" {
  type        = bool
  default     = false
}

variable "dedicated_master_count" {
  type        = number
  default     = 0
}

variable "dedicated_master_type" {
  type        = string
  default     = "t2.small.elasticsearch"
}

variable "advanced_options" {
  type        = map(string)
  default     = {}
}


variable "node_to_node_encryption_enabled" {
  type        = bool
  default     = false
}
