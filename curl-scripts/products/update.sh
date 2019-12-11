# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/products/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "name": "'"${NAME}"'",
      "strength": "'"${STR}"'",
      "quantity": "'"${QTY}"'",
      "unit": "'"${UNIT}"'",
      "user_id": "'"${USER}"'"
    }
  }'

  echo
