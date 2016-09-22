curl --include --request POST http://localhost:3000/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Ben Franklin",
      "sickness": "Gout",
      "age": 99
    }
  }'

curl --include --request GET http://localhost:3000/patients

curl --include --request GET http://localhost:3000/patients/5

curl --include --request PATCH http://localhost:3000/patients/5 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Ben Franklin",
      "sickness": "Dysentery",
      "age": 99
    }
  }'

curl --include --request DELETE http://localhost:3000/patients/5