# 🚀 Azure Infrastructure Deployment using Terraform

This repository contains Infrastructure as Code (IaC) for provisioning Azure resources using **Terraform**. The setup is modular, reusable, and environment-specific (`development`, `prepods`, `production`).

---

## 📁 Repository Structure

```bash
.
├── modules/                    # Reusable Terraform modules
│   ├── virtual_machine/        # VM definition
│   ├── network_interface/      # NIC definition
│   ├── network_security_group/ # NSG rules
│   ├── public_ip/              # Public IP setup
│   ├── subnet/                 # Subnet resources
│   ├── vnet/                   # VNet resources
│   ├── key_vault/              # Key Vault module
│   ├── key_secret/             # Key Vault secrets
│   ├── mssql_server/           # SQL Server
│   ├── mssql_database/         # SQL Database
│   ├── storage_account/        # Azure Storage
│   └── storage_container/      # Azure Storage Containers
└── environments/               # Environment-specific folders
    ├── dev/
    ├── prepods/
    │   ├── main.tf                     # Root configuration
    │   ├── variables.tf                # Input variables
    │   ├── local.tf                    # Local values and expressions
    │   └── outputs.tf                  # Output definitions
    └── prod/
```

---

## ✅ Features

* 🔁 Modular Terraform code using `for_each`
* 🔐 Azure Key Vault integration with secrets
* 🖥️ VM provisioning with custom NIC, NSG, and Public IP
* 🌐 VNet and Subnet setup per environment
* 📦 Environment-specific deployments
* 📄 Outputs for chaining infrastructure modules
* ☁️ Centralized management of secrets and configs

---

## ⚙️ Prerequisites

* Azure Subscription (Pay-As-You-Go or Free Tier)
* Terraform v1.5+
* Azure CLI (`az login`)
* SSH Key Pair (for VM access)

---

## 🔐 Authentication

Ensure Azure CLI is logged in and using the correct subscription:

```bash
az login
az account set --subscription "YOUR_SUBSCRIPTION_ID"
```

---

## 🚀 How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/iac-terraform-azure.git
cd iac-terraform-azure
```

### 2. Select an Environment

Navigate to your target environment (e.g. `environments/prepods/`).

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Review the Plan

```bash
terraform plan
```

### 5. Apply Infrastructure

```bash
terraform apply
```

---

## 📤 Outputs

After successful deployment, key outputs like VM IP, subnet IDs, and resource IDs will be displayed.

To retrieve them anytime:

```bash
terraform output
```

---

## 🧹 Destroy Infrastructure

To clean up deployed resources:

```bash
terraform destroy
```

---

## 📄 Best Practices

* Use environment folders for isolated configurations
* Keep secrets out of Git — use Azure Key Vault
* Follow GitHub flow: feature → PR → main
* Use `terraform validate` and `terraform fmt` for clean code

---

## 📌 TODO

* [ ] Integrate Azure Monitor
* [ ] Add Application Gateway/Load Balancer
* [ ] Set up GitHub Actions pipeline
* [ ] Include Terraform remote backend configuration

---

## 📬 Contact

For contributions or questions, feel free to:

* Open a GitHub Issue
* Submit a Pull Request

---

## 📝 License

MIT License

---

# 🔐 GitHub Branch Protection Template

This repository also includes automation to enforce **branch protection rules** using GitHub CLI.

## 🔧 What It Does

* Protects `main` branch
* Enforces required PR review
* Disables force-push and branch deletion
* Enables status checks
* Requires CODEOWNERS approval

## 📂 Files Included

* `.github/CODEOWNERS` → Require `@mohit-maharan` review
* `.github/branch-protection.md` → Rule documentation
* `protect-main-branch.sh` → Script for enforcement

## 🚀 Usage

1. Install GitHub CLI:

```bash
winget install --id GitHub.cli
```

2. Authenticate:

```bash
gh auth login
```

3. Run the script:

```bash
bash protect-main-branch.sh
```

---

✅ **Ready for real-world, production-grade infrastructure management in Azure!**
