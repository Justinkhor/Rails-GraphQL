#!/bin/bash

curl -X POST -H "Content-Type: application/json" -d '{
  "query": "query GetMenu($menuId: ID!) { menu(id: $menuId) { id identifier label state startDate endDate sections { id label identifier description items { id identifier label description type price modifierGroups { id identifier selectionRequiredMin selectionRequiredMax items { id identifier label description type price } } } } } }",
  "variables": {
    "menuId": 1
  }
}' http://localhost:3000/graphql
