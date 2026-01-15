📌 Container Security Orchestrator

A Python-based container security orchestration tool that automates vulnerability scanning of Docker images using Trivy, generates structured JSON reports, and integrates with CI/CD pipelines like GitHub Actions.

This project demonstrates practical DevSecOps, container security, and security automation skills.

🚀 Features

🔍 Automated Docker image vulnerability scanning using Trivy
🐳 Dockerized execution for portability and consistency
📄 Generates machine-readable JSON vulnerability reports
🔄 Seamless CI/CD integration using GitHub Actions
🛡️ Designed with DevSecOps best practices

🏗  Architecture & Project Structure
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

🐳 Build & Run Locally
 Build the Docker image
 bash docker build -t container-security-orchestrator .

 Run the orchestrator
 bash docker run --rm container-security-orchestrator
