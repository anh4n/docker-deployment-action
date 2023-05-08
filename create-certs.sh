if [[ -z "$CA_PEM" || -z "$CERT_PEM" || -z "$KEY_PEM" ]]; then
  echo "ca.pem, cert.pem or key.pem missing!";
  exit 1;
fi

echo "$CA_PEM" > ca.pem \
&& echo "$CERT_PEM" > cert.pem \
&& echo "$KEY_PEM" > key.pem