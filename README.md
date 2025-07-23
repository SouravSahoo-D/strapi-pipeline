# 🚀 Automate Strapi Deployment with GitHub Actions + Terraform

This project demonstrates how to **automate the deployment of a Strapi application** using **GitHub Actions** and **Terraform**. It includes a CI pipeline to build and push Docker images and a CD pipeline to provision and deploy to AWS EC2 manually.

---

## 📦 What’s Included

### 1. Continuous Integration (CI)
- **Workflow File:** `.github/workflows/ci.yml`
- **Triggered On:** Push to `main` branch
- **Actions Performed:**
  - Build Docker image of the Strapi app
  - Push the image to Docker Hub or AWS ECR
  - Save the image tag as output for use in deployment

### 2. Continuous Deployment (CD) with Terraform
- **Workflow File:** `.github/workflows/terraform.yml`
- **Triggered Manually:** via `workflow_dispatch`
- **Actions Performed:**
  - Run `terraform init`, `plan`, and `apply`
  - Use GitHub Secrets to access AWS credentials securely
  - Pull the latest Docker image using the tag from CI
  - SSH into EC2 and deploy the Strapi container
  - Verify deployment via EC2 public IP

---

## ✅ What Has Been Done

- 🔧 Configured GitHub Actions for CI and CD workflows  
- 🐳 Built Docker image for Strapi and pushed to Docker registry on code push  
- 🌍 Provisioned AWS EC2 instance using Terraform  
- 🔐 Used GitHub Secrets for secure credential handling  
- 🔁 Passed image tag from CI to CD pipeline for consistent deployments  
- 🧪 Verified deployment using EC2 public IP and SSH  

---

## 🔐 GitHub Secrets Required

Set the following secrets in your repository:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `DOCKER_USERNAME`
- `DOCKER_PASSWORD`

---

## 📌 Deployment Workflow

1. **Push code** to `main` → triggers `ci.yml` to build and push Docker image.
2. **Trigger manually** the `terraform.yml` workflow from GitHub Actions.
3. **Terraform provisions** or updates EC2 with the latest image.
4. **App is live** on the EC2 instance, accessible via public IP.

---

## 📎 Notes

- Uses SSH for secure deployment to EC2.
- Strapi is containerized and deployed without Docker Compose.
- Terraform maintains infrastructure as code and handles resource provisioning.

---

Feel free to fork and adapt this setup for other Node.js or CMS-based apps!

