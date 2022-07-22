DYNATRACE_CLUSTER_HOST="[ID].live.dynatrace.com"
DYNATRACE_API_TOKEN="dt..."
ACTIVEGATE_GROUP="group-name"

wget -O Dynatrace-ActiveGate-Linux-x86-latest.sh "https://${DYNATRACE_CLUSTER_HOST}/api/v1/deployment/installer/gateway/unix/latest?arch=x86&flavor=default" --header="Authorization: Api-Token ${DYNATRACE_API_TOKEN}"
wget https://ca.dynatrace.com/dt-root.cert.pem ; ( echo 'Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="--SIGNED-INSTALLER"'; echo ; echo ; echo '----SIGNED-INSTALLER' ; cat Dynatrace-ActiveGate-Linux-x86-latest.sh ) | openssl cms -verify -CAfile dt-root.cert.pem > /dev/null
/bin/bash Dynatrace-ActiveGate-Linux-x86-latest.sh --set-group=${ACTIVEGATE_GROUP}