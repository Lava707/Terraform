🚀 Terraform EC2 Deployment

This project demonstrates how to **provision an AWS EC2 instance** using **Terraform (HCL)**. It includes a basic setup with a security group, default VPC data source, and output of the instance’s public IP.



📁 Project Structure

terraform-EC2/
│
├── main.tf # Main Terraform configuration (HCL)
├── .gitignore # Excludes Terraform state & cache files
└── terraform.tfstate # Terraform state file (excluded from repo)




🧠 Overview

The configuration file (`main.tf`) performs the following:

- Fetches the **default VPC** in your AWS region  
- Creates a **security group** allowing inbound SSH (port 22) and HTTP (port 80)  
- Launches a **t2.micro EC2 instance** using the **Amazon Linux 2 AMI**  
- Outputs the **public IP** of the running instance  



## 🛠️ Prerequisites

Before using this project, ensure you have:

- ✅ [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.13+ installed  
- ✅ An active [AWS account](https://aws.amazon.com/)  
- ✅ Proper AWS credentials configured locally  
  ```bash
  aws configure

  
⚙️ How to Deploy
1️⃣ Initialize Terraform

terraform init

2️⃣ Review the Plan

terraform plan

3️⃣ Apply the Configuration

terraform apply

🌐 Output Example

After a successful apply, Terraform displays:

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ec2_public_ip = "18.212.237.59"

🧹 Destroy Resources
To clean up and avoid AWS charges:

terraform destroy

🧩 Resources Created

| Resource Type        | Name    | Description                     |
| -------------------- | ------- | ------------------------------- |
| `aws_instance`       | example | EC2 instance (Amazon Linux 2)   |
| `aws_security_group` | ec2_sg  | Allows SSH (22) and HTTP (80)   |
| `data.aws_vpc`       | default | Uses default VPC for deployment |


🧑‍💻 Author
Lava Srinivas
Terraform | AWS | Cloud Automation
GitHub Profile

