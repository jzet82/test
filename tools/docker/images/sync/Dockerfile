FROM debian:stretch-slim

# Install AWS CLI
RUN apt-get update && apt-get install -y python3 curl mysql-client zip unzip redis-tools
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip install awscli --upgrade

# AWS Credentials
ENV AWS_DEFAULT_REGION=eu-west-2
ENV AWS_ACCESS_KEY_ID=AKIAJQIOHXHRU26BGLVA
ENV AWS_SECRET_ACCESS_KEY=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

# Copy & set up the entry point script
COPY ./images/sync /code

WORKDIR /code/scripts

# Entrypoint is set to exit immediately to prevent the updater from running on docker-compose up.
ENTRYPOINT "true"
