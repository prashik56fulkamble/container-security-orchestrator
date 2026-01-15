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

## 🏗 Architecture
