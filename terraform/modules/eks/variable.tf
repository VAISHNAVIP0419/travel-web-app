variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the EKS worker nodes"
  type        = list(string)
}

variable "cluster_role_arn" {
  description = "IAM role ARN for the EKS cluster"
  type        = string
}
variable "node_role_arn" {
  description = "IAM Role ARN for EKS worker nodes"
  type        = string
}
variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster control plane"
  type        = list(string)
}
