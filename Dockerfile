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

USER jenkins

ENV JAVA_OPTS=-Djenkins.model.Jenkins.crumbIssuerProxyCompatibility=true