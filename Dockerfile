FROM node:17.9.1

# Install packages
RUN apk update && apk add --update --no-cache \
    git \
    bash \
    curl \
    openssh \
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
