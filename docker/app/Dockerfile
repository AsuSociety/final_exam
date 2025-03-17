# Stage 1: Build the application
FROM python:3.11-slim AS builder

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11-slim

# Set working directory
WORKDIR /app

COPY --from=builder /root/.local /root/.local

COPY app.py .

ENV PATH=/root/.local/bin:$PATH

ENV AWS_ACCESS_KEY_ID=""
ENV AWS_SECRET_ACCESS_KEY=""

# Expose port 5001
EXPOSE 5001

# Run the application
CMD ["python", "app.py"]


# Steps to build and run the container:
# After building the image, you can run the container with the following command:
# first login to ec2 with ssh (how? in the section 2 part)
# then clone the repo and cd to the directory
#   docker build -t <image_name> .
# if its not working then try with sudo
#   sudo usermod -aG docker $USER
#   newgrp docker
#   docker build -t <image_name> .
# then run the container with the following command:
#   docker run -d -p 5001:5001 \
#       -e AWS_ACCESS_KEY_ID="your-access-key-id" \
#       -e AWS_SECRET_ACCESS_KEY="your-secret-access-key" \
#       --name <container_name> <image_name>
#   docker logs <container_name>  # to see the logs
# then to test if its worked - 
#   curl http://localhost:5001 or curl http://54.123.45.67:5001/ (public ip of ec2)
# you should see the output of the app