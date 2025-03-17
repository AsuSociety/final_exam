# Final Exam - Jenkins Branch

## What it Does

This project shows a simple web app using Flask.

It also has a Jenkins pipeline that:

- Checks code quality and security.
- Builds a Docker image.
- Pushes the image to Docker Hub.

## How to Use It

### What You Need

- Docker.
- Jenkins installed.
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

1. Clone this repo and go to the Jenkins branch:

   ```bash
   git clone https://github.com/AsuSociety/final_exam.git
   git checkout feature/jenkins
   cd jenkins/app
   ```

2. **Run Jenkins** (if needed, using Docker):
   i used the docker-compose file that Yaniv provide us to run the jenkins, but you also can - .

   ```bash
   docker run -d -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts
   ```

3. **Setup Jenkins pipeline**:

   - Create a new pipeline job.
   - Connect to your GitHub repo.
   - Use the `Jenkinsfile` inside this branch.

4. **Set Jenkins environment variables**:

   - `DOCKER_USERNAME`: your Docker Hub username.
   - `DOCKER_PASSWORD`: your Docker Hub password or token.

5. **Run the pipeline** from Jenkins dashboard.

### What the Pipeline Does

- Lint and security checks.
- Build Docker image.
- Push Docker image to Docker Hub.

## SCREENSHOT'S

1. Here you can see the Jenkins pipeline running and pushing the image.
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/jenkins/jenkins/screenshots/jenkins-pipe-sucsses.png)

2. Here you can see the image pushed to Docker Hub.
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/jenkins/jenkins/screenshots/dockerhub-after-jenkins.png)
