#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/resources/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "resource": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'"
    }
  }'
  # --header "Authorization: Token token=$TOKEN"

echo
