# anh4n/docker-deployment-action@v1

GitHub Action for deplyoing Docker containers via docker-compose

## Usage

```yml
jobs:
  deployment:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: anh4n/docker-deployment-action@v1
        with:
          host: 'example.com'
          port: '2376' # optionial
          ca-pem: 'MY_SECRET_CA_PEM'
          cert-pem: 'MY_SECRET_CERT_PEM'
          key-pem: 'MY_SECRET_KEY_PEM'
```