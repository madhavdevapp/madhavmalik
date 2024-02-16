# Terraform Configure setting block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/awsw"
      
    }
  }
}

# Provider Block
provider "azure" {
  profile = "default" 

  region  "ap south -us east"
=======
  region  = "ap south mumbai"
}

#Resource Block
resource "azure_instance" "ec2testserver" {
  ami           = "ami-041db4a969fe3e
  instance_type = "t3..micro

}


# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  

  # VPC Basic Details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"   
  azs                 = ["us-east-1a"]
  private_subnets     = ["10.0.1.0/24"]
  public_subnets      = ["10.0.101.0/24"]

#new comment added 
