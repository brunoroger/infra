FROM jenkinsci/blueocean:latest

USER root

RUN apk -U add py-pip

RUN apk -U add python-dev

RUN apk -U add libffi-dev

RUN apk -U add openssl-dev

RUN apk -U add gcc

RUN apk -U add libc-dev

RUN apk -U add make

RUN pip install docker-compose

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl

RUN mv ./kubectl /usr/local/bin/kubectl