module "static-website-cdn" {
  source                  = "github.com/tietoevry-infra-as-code/terraform-azurerm-static-website-cdn?ref=v1.0.0"

# Resource Group
  create_resource_group   = false
  resource_group_name     = "rg-demo-westeurope-01"
  location                = "westeurope"
  storage_account_name    = "storageaccwesteupore01"

# Static Website options
  enable_static_website   = true
  static_website_source_folder = var.static_website_source_folder

# Tags for Azure Resources  
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Owner       = "test-user"
  }
}