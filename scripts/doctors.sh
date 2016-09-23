curl --include --request POST http://localhost:3000/doctors \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "given_name": "Jane",
      "surname": "Franklin",
      "specialty": "orthopedic surgery"
    }
  }'

curl --include --request GET http://localhost:3000/doctors

curl --include --request GET http://localhost:3000/doctors/5

curl --include --request PATCH http://localhost:3000/doctors/5 \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "given_name": "Jane",
      "surname": "Franklin",
      "specialty": "cardiothoracic surgery"
    }
  }'

curl --include --request DELETE http://localhost:3000/doctors/5