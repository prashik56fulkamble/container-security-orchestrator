FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    apt-transport-https \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Add Trivy official repository
RUN curl -fsSL https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor -o /usr/share/keyrings/trivy.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb stable main" \
    > /etc/apt/sources.list.d/trivy.list

# Install Trivy
RUN apt-get update && apt-get install -y trivy

# Set working directory
WORKDIR /app

# Copy project files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY orchestrator.py .

CMD ["python", "orchestrator.py"]

