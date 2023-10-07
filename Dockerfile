FROM python:3.12

RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install ipykernel matplotlib networkx numpy pandas
