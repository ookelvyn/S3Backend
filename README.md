# Terraform AWS Backend Configuration

This Terraform code repository is designed to create an AWS infrastructure for managing Terraform state files using S3 and DynamoDB as the backend.
It helps in managing your terraform statefile securely and enables developers within a Team work more efficiently.

## Prerequisites

Before you get started, make sure you have the following prerequisites in place:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS credentials configured with the necessary permissions.

## Getting Started

1. Clone this repository to your local machine:

   ```sh
   git clone <repository_url>
   cd terraform-aws-backend

2. Apply the terraform code
   terraform init
   terraform apply 

#  Codes here are written from terraform registry. Codes might be deprecated later in the future, hence refer to the rigistry; 
    https://registry.terraform.io/providers/hashicorp/aws/latest/docs

