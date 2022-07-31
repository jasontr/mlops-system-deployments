KEY_FILE=../../external-tls.key
CERT_FILE=../../external-tls.cert
EXPIRE=35800
## essential
EXTERNAL_IP=gateway-7e0fe6b4
HOST=${EXTERNAL_IP}.nip.io
# create secret
## optional
CERT_NAME=tls-secret
NAMESPACE=argocd
kubectl create secret tls ${CERT_NAME:tls-secret} --key ${KEY_FILE} --cert ${CERT_FILE} -n ${NAMESPACE:-default} 