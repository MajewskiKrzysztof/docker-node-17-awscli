FROM node:17.9.1

# Install packages
RUN apt-get update && \
    apt-get install -y \
        python \
        python-dev \
        python3-pip \
        python-setuptools \
        groff \
        less \
    && pip install --upgrade awscli \
    && apt-get clean

CMD ["/bin/bash"]
