# INFRA

## instructions for GCP:

- Install: `make install`
- Remove: `make remove`

## envs after create jenkins container:

- DOCKER_HOST: endpoint pod jenkins_docker
- DOCKER_CERT_PATH: /certs/client
- DOCKER_TLS_VERIFY: 1