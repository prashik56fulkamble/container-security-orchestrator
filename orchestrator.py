import subprocess
import json
import requests
import os

IMAGE = os.getenv("IMAGE_NAME", "nginx:latest")
SLACK_WEBHOOK = os.getenv("SLACK_WEBHOOK")

def run_trivy():
    cmd = [
        "trivy", "image",
        "--format", "json",
        "-o", "report.json",
        IMAGE
    ]
    subprocess.run(cmd, check=True)

def parse_report():
    with open("report.json") as f:
        data = json.load(f)

    severity_count = {"CRITICAL": 0, "HIGH": 0, "MEDIUM": 0, "LOW": 0}

    for result in data.get("Results", []):
        for vuln in result.get("Vulnerabilities", []):
            sev = vuln["Severity"]
            severity_count[sev] += 1

    return severity_count

def send_to_slack(summary):
    message = {
        "text": (
            f"🔐 *Container Security Scan Report*\n"
            f"*Image:* {IMAGE}\n"
            f"Critical: {summary['CRITICAL']}\n"
            f"High: {summary['HIGH']}\n"
            f"Medium: {summary['MEDIUM']}\n"
            f"Low: {summary['LOW']}"
        )
    }
    requests.post(SLACK_WEBHOOK, json=message)

if __name__ == "__main__":
    run_trivy()
    summary = parse_report()
    send_to_slack(summary)
