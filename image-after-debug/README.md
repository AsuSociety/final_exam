# Final Exam - Docker Branch

## What it Does

This project shows a simple web app using Flask.

It also has a Dockerfile to:

- Build a Docker image.
- Run the app inside a Docker container.

### THIS IS THE SAME AS `feature/docker` BRANCH BUT WITH THE DEBUG `python app`.

## How to Use It

### What You Need

- Docker.
- AWS account.

### Set Up

1.  **AWS Keys**: Set AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env vars.

```bash
    export AWS_ACCESS_KEY_ID="your_access_key"
    export AWS_SECRET_ACCESS_KEY="your_secret_key"
    export AWS_DEFAULT_REGION="your_region"
```

### Steps

1. Clone this repo and go to the Docker branch:

   ```bash
   git clone https://github.com/AsuSociety/final_exam.git
   git checkout feature/docker
   cd docker/app
   ```

2. Build Docker image:
   ```bash
   docker build -t final-exam-docker .
   ```
3. Run Docker container:

   ```bash
       docker run -d -p 5001:5001 \
       -e AWS_ACCESS_KEY_ID="your-access-key-id" \
       -e AWS_SECRET_ACCESS_KEY="your-secret-access-key" \
       -e AWS_DEFAULT_REGION="your-region" \
       --name final-exam-container final-exam-docker
   ```

4. Open `http://localhost:5001` in browser.

## SCREENSHOT'S

1. Here you can see that the Docker image is running on the ec2 and show me the web app as he need.
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/debug-python/image-after-debug/screenshots/app-aftter-debug.png)
