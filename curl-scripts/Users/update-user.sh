
curl "http://localhost:4741/users/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "user": {
        "email": "'"${EMAIL}"'",
        "group_id": "'"${GROUP}"'"
      }
    }'

echo
