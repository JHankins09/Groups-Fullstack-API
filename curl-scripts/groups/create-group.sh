#!/bin/bash

curl "http://localhost:4741/groups" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "Name": "'"${name}"'",
      "Type": "'"${type}"'",
      "Intro": "'"${intro}"'"
    }
  }'

echo
