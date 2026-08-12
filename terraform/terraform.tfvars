# =====================================================================
# CredPay - REAL variable values
# =====================================================================
# Intentionally committed for this classroom capstone project so the
# Azure DevOps pipeline's Terraform stage has subscription_id available
# (Azure DevOps secret pipeline variables can't be expanded into a task's
# `commandOptions` input, only into script env: mappings - see the
# azure-pipelines.yml history for why this file is committed instead).
# =====================================================================

# Azure Subscription ID
subscription_id = "40f4ed45-fd9a-44dd-aefb-f83446de9465"

# Azure Region
location = "eastus2"

# ----- Networking -----
vnet_address_space     = "10.0.0.0/16"
aks_subnet_prefix      = "10.0.0.0/20"
postgres_subnet_prefix = "10.0.16.0/24"

# ----- AKS -----
node_count     = 2
node_min_count = 1
node_max_count = 2
vm_size        = "Standard_B2s_v2"

# ----- PostgreSQL -----
postgres_version        = "16"
postgres_admin_username = "credpayadmin"
database_name           = "credpay"

# ----- Monitoring -----
log_retention_days = 30

# ----- Key Vault (created out-of-band, in the CredProj bootstrap RG - see backend.tf) -----
key_vault_name                = "credpayvault"
key_vault_resource_group_name = "credpay_rg"
