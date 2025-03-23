# Final Exam - Main Branch

## What it Does

This project is a simple Flask web app that shows AWS information (EC2, VPCs, Load Balancers, AMIs).  
The project is used in different CI/CD tools and cloud environments:

- **Docker**: Run the app in a container.
- **Azure Pipeline**: Build and push Docker image to Docker Hub.
- **Jenkins**: Automate build and push to Docker Hub.
- **Kubernetes & Helm**: Deploy the app to Kubernetes.
- **Terraform**: Create AWS infrastructure.

## Features

- Shows AWS resources:
  - EC2: ID, state, type, IP.
  - VPCs: ID, CIDR.
  - Load Balancers: name, DNS.
  - AMIs: ID, name.
- Dockerfile to containerize the app.
- Azure DevOps Pipeline for CI/CD.
- Jenkins pipeline for CI/CD.
- Kubernetes YAML files.
- Helm chart for easy k8s deployment.
- Terraform code to deploy AWS infrastructure.

## What You Need

- AWS account.
- Docker & Docker Hub.
- Azure DevOps or Jenkins.
- Kubernetes & Helm.
- Terraform installed.

## Basic Local Run (Docker)

1. Set AWS credentials:

```bash
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"
export AWS_DEFAULT_REGION="your_region"
```

2. Build Docker image:

```bash
docker build -t final-exam-app .
```

3. Run app:

```bash
docker run -d -p 5001:5001 \
-e AWS_ACCESS_KEY_ID="your-access-key-id" \
-e AWS_SECRET_ACCESS_KEY="your-secret-access-key" \
-e AWS_DEFAULT_REGION="your-region" \
--name final-exam-container final-exam-app
```

4. Open browser at `http://localhost:5001`

---

## Project Structure

- `/azure`: Azure Pipeline files.
- `/jenkins`: Jenkins pipeline files.
- `/k8s`: Kubernetes YAMLs and inside also the Helm chart.
- `/terraform`: Terraform AWS infra.
