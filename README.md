# anh4n/docker-deployment-action

GitHub Action for deploying Docker containers on a remote server via docker-compose.

## Usage

```yml
jobs:
  deployment:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: anh4n/docker-deployment-action@v2
        with:
          host: 'example.com'
          port: '2376' # optional
          ca-pem: 'MY_SECRET_CA_PEM'
          cert-pem: 'MY_SECRET_CERT_PEM'
          key-pem: 'MY_SECRET_KEY_PEM'
          docker-compose-file: 'docker-compose.prod.yml' # optional file which is merged with docker-compose.yml
        env:
          TAG: '1.0.0' # example: how to pass env to your docker-compose.yml 
```
