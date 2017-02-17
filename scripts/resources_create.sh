#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/resources"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "resource": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'",
      "tag": "'"${TAG}"'",
      "content_type": "'"${CONTENT_TYPE}"'"
    }
  }'
  # --header "Authorization: Token token=$TOKEN" \

echo
