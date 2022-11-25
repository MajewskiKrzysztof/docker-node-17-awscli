FROM node:17.9.1

# Install packages
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-setuptools \
        groff \
        less \
    && pip3 install --upgrade pip \
    && apt-get clean

# Install AWSCLI
RUN pip3 --no-cache-dir install --upgrade awscli


CMD ["/bin/bash"]
