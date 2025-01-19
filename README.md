

# AWS Infrastructure Deploy: API Gateway, Lambda, DynamoDB with Terraform  

This repository provides a complete example of deploying a serverless application infrastructure on AWS using Terraform. The infrastructure supports multiple environments: **Development**, **Staging**, and **Production**.  

---

![AWS Serverless Diagram](https://arifhossen.net/github_resources/aws_serverless_diagram_with_terraform.png "AWS Serverless Diagram Deploy by terraform")

## Table of Contents  

1. [Features](#features)  
2. [Architecture](#architecture)  
3. [Prerequisites](#prerequisites)  
4. [Setup Instructions](#setup-instructions)  
5. [Directory Structure](#directory-structure)  
6. [Environment Management](#environment-management)  
7. [Contributing](#contributing)  
8. [License](#license)  

---

## Features  

- **Fully modularized** Terraform codebase for reusability.  
- **Multi-environment support**: Dev, Stage, and Prod.  
- **AWS Services**:  
  - **API Gateway**: Exposes RESTful API endpoints.  
  - **Lambda**: Processes requests with serverless compute.  
  - **DynamoDB**: Manages application data in a NoSQL database.  
- Remote Terraform state management with `backend.tf`.  

---

## Architecture  

### Components  

1. **API Gateway**: Handles incoming HTTP requests.  
2. **Lambda**: Serverless compute to process requests and business logic.  
3. **DynamoDB**: NoSQL database for high-performance and scalable data storage.  

### Flow  

1. A client sends a request to an API Gateway endpoint.  
2. The API Gateway triggers the Lambda function.  
3. The Lambda function processes the request and interacts with DynamoDB for CRUD operations.  
4. The response is sent back to the client.  

---

## Prerequisites  

Before deploying this infrastructure, ensure you have the following tools installed and configured:  

1. **AWS CLI**: [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).  
2. **Terraform CLI**: [Install Terraform](https://www.terraform.io/downloads.html) (version >= 1.0).  
3. **AWS Account** with permissions to create API Gateway, Lambda, and DynamoDB resources.  

---

## Setup Instructions  

### 1. Clone the Repository  

```bash  
git clone https://github.com/arifhossen/aws-infra-terraform-apigateway-lambda-dynamodb.git  
cd aws-infra-terraform-apigateway-lambda-dynamodb  
```  

### 2. Initialize Terraform  

Navigate to the desired environment folder (e.g., `env/dev`) and initialize Terraform:  

```bash  
cd env/dev  
terraform init  
```  

### 3. Configure Variables  

Edit the `terraform.tfvars` file in the environment folder (e.g., `env/dev`) to define environment-specific variables:  

```hcl  
region = "us-east-1"  
dynamodb_table_name = "example-table-dev"  
environment = "dev"  
```  

### 4. Deploy the Infrastructure  

Run the following commands to review and deploy the infrastructure:  

```bash  
terraform plan  
terraform apply  
```  

---

## Directory Structure  

```plaintext  
aws-infra-terraform-apigateway-lambda-dynamodb/  
├── modules/                  # Reusable Terraform modules  
│   ├── main.tf               # Module entry point  
│   ├── provider.tf           # AWS provider configuration  
│   ├── variables.tf          # Input variables for modules  
│   ├── lambda/               # Lambda module files  
│   │   ├── main.tf           # Lambda resource definitions  
│   │   ├── outputs.tf        # Outputs for Lambda module  
│   │   └── variables.tf      # Input variables for Lambda  
│   ├── dynamodb/             # DynamoDB module files  
│   │   ├── main.tf           # DynamoDB resource definitions  
│   │   ├── outputs.tf        # Outputs for DynamoDB  
│   │   └── variables.tf      # Input variables for DynamoDB  
│   ├── apigateway/           # API Gateway module files  
│   │   ├── main.tf           # API Gateway resource definitions  
│   │   ├── outputs.tf        # Outputs for API Gateway  
│   │   └── variables.tf      # Input variables for API Gateway  
├── env/                      # Environment-specific configurations  
│   ├── dev/                  # Development environment  
│   │   ├── backend.tf        # Remote backend configuration  
│   │   ├── main.tf           # Main Terraform file for dev  
│   │   ├── terraform.tfvars  # Environment-specific variables  
│   │   └── variables.tf      # Input variable definitions  
│   ├── stage/                # Staging environment  
│   └── prod/                 # Production environment  
├── README.md                 # Documentation  
```  

---

## Environment Management  

Navigate to the respective environment folder (`env/dev`, `env/stage`, or `env/prod`) to manage infrastructure deployments:  

- **Development**:  
  ```bash  
  cd env/dev  
  terraform apply  
  ```  

- **Staging**:  
  ```bash  
  cd env/stage  
  terraform apply  
  ```  

- **Production**:  
  ```bash  
  cd env/prod  
  terraform apply  
  ```  

---

## Contributing  

Contributions are welcome! Please submit issues or pull requests via GitHub.  

