# Terraform Settings Block test 3
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "e86ebfed-c6a3-4771-8d41-8453ddb5d32a"
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"  
}
