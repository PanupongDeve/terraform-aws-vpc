output "aws_vpc_name" {
  description = "AWS VPC Name."
  value       = module.vpc.name
}

output "region" {
  description = "AWS region."
  value       = var.region
}


output "aws_availability_zones" {
  description = "AWS Availability Zones"
  value       = data.aws_availability_zones.available.names
}

output "provision_environment" {
  description = "provision environment"
  value       = var.environment
}

output "s3_terraform_remote_state_config" {
    description = "provisioning s3 config"
    value = [
        aws_s3_bucket.terraform_state.bucket,
        aws_s3_bucket.terraform_state.bucket_domain_name,
        aws_s3_bucket.terraform_state.bucket_regional_domain_name
    ]
}