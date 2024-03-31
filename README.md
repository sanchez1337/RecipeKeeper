# recipe-app
Following udemy course "Build a Backend REST API with Python Django - Advanced
Will be trying to firstly follow the course and create an API, 
then try to create a frontend with VueJS and hopefully using TDD with Cypress.

My programming knowledge is still very limited so you are looking at the code at your own risk,
but if you happen to see it and perhaps have any suggestions on how to improve it,
please let me know - I will very much appreciate it!

# Installation
I will contain that whole project with a docker image so for now all you have to do
is run:
```
docker compose up
```
It will grab ```python:3.9-alpine3.13``` image from docker hub, install all python packages
from ```requirements.txt*``` and additionally set up Postgres container.

# Usage
Go to ```localhost:8000/admin``` to open Django admin panel.\
Go to ```localhost:8000/api/docs``` to open Swagger automatic API documentation.



## Note
 Please note, I also have no idea yet how to write a proper README file so it's kind of messy, sorry about that

 I am also not really experienced with proper way of working with Git 
 so my commits might look kind of messy, will try to read up on that and 
 improve as I go.
 Currently working on main branch - 
 I am aware this isn't really realistic scenario but want to start using 
 develop or feature branches when I will be sure I know what I am doing.