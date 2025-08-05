# Jenkins CI/CD Pipeline Demo

## 📌 Objective
Automate the build and deployment of a Node.js app using Jenkins and Docker.

## 🛠️ Tools Used
- Jenkins (on AWS EC2)
- Docker
- GitHub
- Node.js

## 🚀 CI/CD Pipeline Stages
1. **Clone**: Pulls the latest code from GitHub
2. **Build**: Builds Docker image
3. **Test**: (Optional) Runs basic test
4. **Deploy**: Deploys container

## 🔁 Trigger
Configured to trigger via GitHub Webhook on each `git push`.

