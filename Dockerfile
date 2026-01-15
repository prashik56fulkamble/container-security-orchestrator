FROM python:3.10-slim

RUN apt-get update && apt-get install -y wget \
 && wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.49.1_Linux-64bit.deb \
 && dpkg -i trivy_0.49.1_Linux-64bit.deb

WORKDIR /app
COPY orchestrator.py .
COPY requirements.txt .
RUN pip install -r requirements.txt


CMD ["python", "orchestrator.py"]
