# 🌱 Robotani-DevOps

Robotani-DevOps is a smart farming project that integrates **IoT devices**, **Odoo ERP**, and **cloud-based DevOps automation**.  
This repo showcases how to use **Docker, AWS, and CI/CD pipelines** to deploy, monitor, and scale smart farming operations.

---

## 🚀 Features
- IoT integration (pH, temperature, TUYA smart sensors)
- Odoo ERP 17 on Docker with PostgreSQL
- CI/CD pipelines using GitHub Actions + AWS CodePipeline
- Automated backup & restore scripts
- Real-time monitoring dashboard for IoT data

---

## 📐 Architecture
![Architecture](docs/architecture.png)

Flow:
1. IoT sensors → API → Odoo ERP (Dockerized)
2. ERP + PostgreSQL deployed on AWS EC2
3. CI/CD ensures continuous deployment
4. Backup & monitoring scripts maintain reliability

---

## ⚡ Tech Stack
- **Cloud**: AWS EC2, S3, IAM
- **DevOps**: Docker, Portainer, GitHub Actions, CodePipeline
- **ERP**: Odoo 17 + PostgreSQL
- **IoT**: Raspberry Pi CM4, TUYA sensors, Node-RED
- **Automation**: Python, Bash

---

## 🔄 CI/CD Workflow
![Pipeline](docs/pipeline.png)

1. Developer pushes code → GitHub  
2. GitHub Actions builds Docker images  
3. Deploys to AWS EC2 (staging/production)  
4. Automated tests run  
5. Backup script triggered  

---

## 📦 Quick Start (Local)
```bash
git clone https://github.com/<your-username>/Robotani-DevOps.git
cd Robotani-DevOps/infra
docker-compose up -d