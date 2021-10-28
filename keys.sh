cd ./custom/keys
openssl genrsa -out private.pem 2048
openssl req -x509 -new -nodes -days 3650 -key private.pem -out server.crt
awk -v ORS='\\n' '1' server.crt
