# Terraform Project: VPC with Load-Balanced Applications

This Terraform project automates the deployment of a **VPC**, two applications in different **Availability Zones (AZs)**, and an **Elastic Load Balancer (ELB)** to distribute traffic between the instances.  

## Overview

This project demonstrates:

- Creating a custom **VPC** with subnets across multiple AZs.  
- Launching **two EC2 instances** in separate AZs.  
- Configuring a **Load Balancer** to automatically distribute traffic.  
- Using **Terraform** for IaC (Infrastructure as Code) to automate provisioning.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) installed  
- AWS CLI configured with credentials (`aws configure`)  
- AWS account with permissions to create: VPC, EC2, ELB, Security Groups  

## Terraform Configuration

Key files:

- `main.tf` – defines resources (VPC, subnets, EC2 instances, ELB)  
- `variables.tf` – configurable parameters (region, instance type, AMI ID)   
- `providers.tf` – AWS provider configuration  

## Deployment & Cleanup

```bash
# 1. Initialize Terraform
terraform init

# 2. Preview the deployment plan
terraform plan

# 3. Apply the plan
terraform apply

# 4. Destroy all resources to avoid AWS charges
terraform destroy

### ✅ Note:
All screenshots are referenced from the `screenshots` folder.  

# Author: Sylvia – Infrastructure Creation using Terraform
