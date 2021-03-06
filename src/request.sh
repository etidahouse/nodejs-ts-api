#!/bin/bash

curl http://localhost:7000/api/menu/items -i

curl http://localhost:7000/api/menu/items/2 -i

curl -X POST -H 'Content-Type: application/json' -d '{
  "name": "Salad",
  "price": 499,
  "description": "Fresh",
  "image": "https://images.ctfassets.net/23aumh6u8s0i/5pnNAeu0kev0P5Neh9W0jj/5b62440be149d0c1a9cb84a255662205/whatabyte_salad-sm.png"
}' http://localhost:7000/api/menu/items -i

curl http://localhost:7000/api/menu/items/ -i

curl -X PUT -H 'Content-Type: application/json' -d '{
  "name": "Spicy Pizza",
  "price": 599,
  "description": "Blazing Good",
  "image": "https://images.ctfassets.net/23aumh6u8s0i/2x1D2KeepKoZlsUq0SEsOu/bee61947ed648848e99c71ce22563849/whatabyte_pizza-sm.png"
}' http://localhost:7000/api/menu/items/2 -i

curl http://localhost:7000/api/menu/items/2 -i

curl http://localhost:7000/api/menu/items/ -i

curl -X POST -H 'Content-Type: application/json' -d '{
  "id": 0,
  "name": "Salad",
  "age": 42
}' http://localhost:7000/api/personnes -i