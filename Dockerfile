FROM python:3.9-trixie AS builder
WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install -y build-essential default-libmysqlclient-dev libssl-dev libffi-dev git wget && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
RUN pip install --user --no-cache-dir -r requirements.txt

FROM python:3.9-slim-trixie
WORKDIR /app
RUN apt-get update && apt-get install -y mariadb-client libmariadb3 xvfb libsm6 libxext6 libxrender1 fonts-liberation && rm -rf /var/lib/apt/lists/*
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH
ENV MYSQL_HOST=127.0.0.1
ENV MYSQL_PORT=3306
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=BreastCancer2026
ENV MYSQL_DB=epca
COPY . .
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--timeout", "120", "app:app"]
