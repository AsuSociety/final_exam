# Final Exam - Terraform Branch

## What it Does

This project shows a simple web app using Flask.

It also has Terraform code to:

- Create AWS infrastructure (EC2 instance and security group, using a VPC that provides).
- Install by ssh docker and docker-compose.

## What It Deploys on AWS

- **EC2 Instance** with Docker installed.
- **Security Group** to allow inbound traffic on port 5001.

## How to Use It

### What You Need

- AWS account.
- Terraform.

### Set Up

1.  **AWS Keys**: Set AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env vars.

```bash
    export AWS_ACCESS_KEY_ID="your_access_key"
    export AWS_SECRET_ACCESS_KEY="your_secret_key"
    export AWS_DEFAULT_REGION="your_region"
```

### Steps

1. Clone this repo and go to the Terraform branch:

   ```bash
   git clone https://github.com/AsuSociety/final_exam.git
   git checkout feature/terraform
   cd terraform/terraform
   ```

2. **Initialize Terraform:**

   ```bash
   terraform init
   ```

3. **Plan the deployment:**

   ```bash
   terraform plan
   ```

4. **Apply the deployment:**

   ```bash
   terraform apply
   ```

   Type `yes` when asked.

5. After Terraform finishes, it will show the **public IP** of the EC2 instance and create ssh key .
6. Now to connect to the ec2 by ssh you need to

```bash
terraform output -raw private_key_pem > builder_key.pem
chmod 400 builder_key.pem
```

7. Now you can connect to your ec2-

```bash
ssh -i builder_key.pem ubuntu@<public_ip>
```

## SCREENSHOT'S

1. Here you can see output we get from Terraform applying .
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/terraform/terraform/screenshots/terraform-output.png)

2. Here you can see the versions of docker and docker-compose.
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/terraform/terraform/screenshots/docker%20and%20compse%20ver.png)
