# microservicesSimpleExample

# This package contains 3 projects, an api and two worker-type consoles.

# Functionality: You can register a new recipe and consult a recipe already registered.

# Flow:
1. POST with the json that I will place below, api will send this contract to a rabbitmq queue.
2. The "ConsoleCadastro" console will be plugged into that queue, it consumes the message and performs the registration in DB SQL and sends a message with the registered id to another queue.
3. The "CadastroNoSql" console will be plugged into this queue, it consumes the message, queries the recipe in SQL and creates the document in Mongo DB
4. When performing the get in the API, the document is consulted in mongoDB (every query is made in NoSQL)

# HOW TO
1. access the Docker-Compose folder and run the docker-compose "docker-compose up -d"
2. Run the sql script from the "Sql Script" folder
3. Run the api project and the two worker consoles
4. Perform the requests post and get

# Requests:
POST: https: // localhost: 44376 / api / recipe
{
"Name": "Spicy ribs",

"Ingredients": [

"Mini pork rib",

"Salt to taste"
],
"PrepPreparation": "Season the Mini Ribs with pork, salt, pepper, rosemary and black beer. Let the meat season for one night. Add the pepper sauce, olive oil, grated cheese and Worcestershire sauce, and the latter passing the sauce over the pork ribs. Wrap with aluminum foil and place in a preheated oven at 180º C and bake for 40 minutes. Remove the aluminum foil, raise the oven temperature to 220º C and bake for another 10 minutes. Serve next. ",
"Difficulty": 2,
"User": "Daniel Porquin"
}

GET: https: // localhost: 44376 / api / recipe / id
