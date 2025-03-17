# Final Exam - Azure Branch

## What it Does

This project shows a simple web app using Flask.

It also has an Azure Pipeline that:

- Sets up tools.
- Checks code quality and security.
- Builds a Docker image and pushes it to Docker Hub.

## How to Use It

### What You Need

- Docker.
- Azure DevOps account.
- Docker Hub account.
- AWS account.

### Set Up

1.  **AWS Keys**: Set AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env vars.

```bash
    export AWS_ACCESS_KEY_ID="your_access_key"
    export AWS_SECRET_ACCESS_KEY="your_secret_key"
    export AWS_DEFAULT_REGION="your_region"
```

### Steps

1. Clone this repo and go to the Azure branch:
   ```bash
   git clone https://github.com/AsuSociety/final_exam.git
   git checkout feature/azure
   cd azure/app
   ```
2. Build Docker image:
   ```bash
   docker build -t final-exam-azure .
   ```
3. Run Docker container:

   ```bash
       docker run -d -p 5001:5001 \
       -e AWS_ACCESS_KEY_ID="your-access-key-id" \
       -e AWS_SECRET_ACCESS_KEY="your-secret-access-key" \
       -e AWS_DEFAULT_REGION="your-region" \
       --name final-exam-container final-exam-app

   ```

4. Open `http://localhost:5001` in browser.

### Azure Pipeline

1. Connect your git to Azure DevOps.
2. Set up Docker Hub connection (need to create Service connection -> docker registery -> docker-hub).
3. Set pipeline vars:
   - `DOCKER_REGISTRY`: your Docker Hub name.
   - `REPO_NAME`: your repo name.
   - `containerRegistry`: your Service connection name.
4. Run the pipeline to build and push image.

## SCREENSHOT'S

1. Here you can see that the pipeline is running and the image is being pushed to the docker hub.
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/azure/azure/screenshots/azure-pipe-sucsses.png)

2. Here you can see that the image has been pushed to the docker hub.
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/azure/azure/screenshots/dockerhub-after-azure.png)

---
