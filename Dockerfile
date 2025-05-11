FROM python:3.10-slim

WORKDIR /app

# Copy project files
COPY . /app

# Install cron and dependencies
RUN apt-get update && apt-get install -y cron && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy entrypoint
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/docker-entrypoint.sh"]
