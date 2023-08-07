variable "aws_region" {
  description = "AWS region for the cluster"
  default     = "us-east-1"
}

variable "worker_count" {
  description = "Number of worker nodes"
  default     = 2
}
