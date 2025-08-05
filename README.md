# Jenkins with Docker on Ubuntu EC2

This project sets up Jenkins on an Ubuntu EC2 instance with Docker support, allowing Jenkins to build and run Docker containers.

##  Requirements

- AWS EC2 instance (Ubuntu)
- SSH access
- Jenkins installed
- Docker installed

## Installation Steps

### 1. Update the system
```bash
   sudo apt update && sudo apt upgrade -y
2. Install Docker
bash
Copy
Edit
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
3. Add Jenkins to Docker group
bash
Copy
Edit
sudo usermod -aG docker jenkins
4. Restart Docker and Jenkins
bash
Copy
Edit
sudo systemctl restart docker
sudo systemctl restart jenkins
5. Verify Docker access for Jenkins user
bash
Copy
Edit
sudo su - jenkins
docker ps
If no error is shown and docker ps runs without permission denied, Jenkins is correctly configured to use Docker.

Test
Go to Jenkins web UI

Create a new freestyle or pipeline project

Use a build step with Docker commands to validate functionality

Notes
After running usermod, a restart or logout/login may be required to apply group changes

Ensure Docker is running and Jenkins is active before running pipeline jobs

Security Consideration
Adding Jenkins to the Docker group gives it root-level privileges. Ensure your Jenkins instance is secured and monitored.
