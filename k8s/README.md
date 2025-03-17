# Final Exam - Kubernetes & Helm Branch

## What it Does

This project runs a simple Flask web app inside Kubernetes.

It also has Helm charts to make the deployment easier.

## How to Use It

### What You Need

- Kubernetes cluster (local with Minikube or cloud).
- Helm installed.
- Docker Hub account.
- AWS account.

### Set Up

1.  **AWS Keys**: Set AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY env vars.

```bash
    export AWS_ACCESS_KEY_ID="your_access_key"
    export AWS_SECRET_ACCESS_KEY="your_secret_key"
    export AWS_DEFAULT_REGION="your_region"
```

2. **Build Docker image and push to Docker Hub:**

```bash
docker build -t your-dockerhub-username/final-exam-k8s .
docker push your-dockerhub-username/final-exam-k8s
```

### Kubernetes (Without Helm)

1. **Clone repo and go to this branch**:

```bash
git clone https://github.com/AsuSociety/final_exam.git
git checkout feature/k8s-helm
cd k8s-helm/k8s
```

2. **Deploy to Kubernetes**:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

3. **Check everything**:

```bash
kubectl get pods
kubectl get svc
```

4. Open app from your Kubernetes service IP.

---

### Helm Deployment

1. **Go to Helm folder**:

```bash
cd ../helm
```

2. **Install the Helm chart**:

```bash
helm install final-exam-app . \
  --set aws.accessKeyId=$AWS_ACCESS_KEY_ID \
  --set aws.secretAccessKey=$AWS_SECRET_ACCESS_KEY \
  —-set aws.region=$AWS_REGION

```

3. **Check the release**:

```bash
helm list
```

4. **App should now be running in Kubernetes**.

### Notes

- Edit values in `values.yaml` to change image name or settings.
- To remove Helm release:

```bash
helm uninstall final-exam
```

## SCREENSHOT'S

1. Kubernetes resources running:
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/k8s/k8s/screenshots/k8s.png)

2. Kubernetes svc and pods:
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/k8s/k8s/screenshots/k8s-svc-pods.png)

3. helm resources running:
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/k8s/k8s/screenshots/helm.png)
   4.helm versions:
   ![Alt text](https://github.com/AsuSociety/final_exam/blob/feature/k8s/k8s/screenshots/helm-versions.png)
