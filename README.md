# Container Image Security Scan Orchestrator

## 📌 Overview
This project implements a **container image security scanning orchestrator** using **Python and Docker**.  
It automates the process of pulling container images, scanning them for known vulnerabilities (CVEs) using **Trivy**, aggregating the scan results, and sending a summarized security report to **Slack**.

The goal of this project is to demonstrate **container security, vulnerability management, and security automation**, which are critical responsibilities of a **Cybersecurity Analyst** in modern cloud-native environments.

---

## 🎯 Key Objectives
- Detect vulnerabilities in container images before deployment
- Automate security scanning as part of CI/CD (Shift-Left Security)
- Provide real-time security alerts to teams
- Improve visibility into container security risks

---

## 🧰 Technologies Used
- **Python 3** – Orchestration and report processing
- **Docker** – Container execution and isolation
- **Trivy** – Container image vulnerability scanner
- **Slack Webhook** – Security alert notifications
- **GitHub Actions** – CI/CD automation

---

## Project Structure
container-security-orchestrator/
│
├── orchestrator.py              # Python orchestration logic
├── Dockerfile                   # Docker image definition
├── requirements.txt             # Python dependencies
├── sample-reports/
│   └── trivy-report.json        # Sample vulnerability scan output
│
├── .github/
│   └── workflows/
│       └── security-scan.yml    # CI/CD pipeline configuration
│
└── README.md

---

## Build & Run Locally
**Build the Docker image**
docker build -t container-security-orchestrator .
**Run the orchestrator**
docker run --rm container-security-orchestrator

---

## How It Works
1.The orchestrator pulls a target Docker image
2.Trivy scans the image for:
    OS vulnerabilities
    Package vulnerabilities
3.Scan results are saved in JSON format
4.Reports can be consumed by CI/CD pipelines or security teams
