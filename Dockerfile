FROM node:17.9.1

# Install packages
RUN apt-get update && \
    apt-get install -y \
    bash \
    curl \
    python3 \
    py3-pip \
    py-cryptography \
    wget \
    curl

RUN apk --no-cache add --virtual builds-deps build-base python3

# Install AWSCLI
RUN pip install --upgrade pip && \
    pip install --upgrade awscli

CMD ["/bin/bash"]
