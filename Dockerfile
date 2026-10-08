FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends git ca-certificates && \
    rm -rf /var/lib/apt/lists/*

ARG REPO_URL=https://git.bonnie.qzz.io/bonnie/nurospobeda.git
ARG REPO_REF=main

RUN git clone --depth 1 --branch ${REPO_REF} ${REPO_URL} . && \
    pip install --no-cache-dir -r requirements.txt

ENV PYTHONUNBUFFERED=1
ENV CONFIG_PATH=/data/config.json

VOLUME ["/data"]

CMD ["python", "bot.py"]
