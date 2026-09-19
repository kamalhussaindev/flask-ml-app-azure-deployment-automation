# ---------- Stage 1: Builder ----------
FROM python:3.9-trixie AS builder

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        default-libmysqlclient-dev \
        libssl-dev \
        libffi-dev \
        git \
        wget && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install --user --no-cache-dir -r requirements.txt

# ---------- Stage 2: Runtime ----------
FROM python:3.9-slim-trixie

WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
        libmariadb3 \
        xvfb \
        libsm6 \
        libxext6 \
        libxrender1 \
        fonts-liberation && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

COPY . .

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--timeout", "120", "app:app"]
