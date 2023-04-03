# Task-Train-api
A simple task management app api. This is a RESTful API for a task management application that allows users to create and manage tasks. The API is built using Ruby on Rails and uses SQLite for data storage.

# Getting Started
To get started with the API, clone the repository and install the dependencies:

*Clone,
git clone "git@github.com/aketchgithub/Task-Train-api.git"

cd Task-Train-api

cd api

#Install dependencies
bundle install

#Run migrations 
rails db:migrate

#Start server
rails s
or 
rails server

The API is now available at;
http://localhost:3000

# API Endpoints
  #Users
. `GET /users`: Get a list of all users.
. `GET /users/:id`: Get a specific user by ID.
. `POST /users': Create a new user.
. `PUT /users/:id`: Update a specific user by ID.
. `DELETE /users/:id`: Delete a specific user by ID.

#Todos
. `GET /users/:user_id/todos`: Get a list of all todos for a specific user.
. `PUT /users/:user_id/todos/:id`: Update a specific todo for a specific user by ID.
. `POST /users/:user_id/todos`: Create a new todo for a specific user
. `DELETE /users/:user_id/todos/:id`: Delete a specific todo for a specific user by ID.

# Authentication
 The API uses JSON Web Tokens (JWT) for authentication. To create a new user, send a POST request to /users with the following JSON payload:
 
 {
  "user": {
    "email": "user@example.com",
    "password": "password"
  }
}

To authenticate a user and receive a JWT, send a POST request to `/auth/login` with the following JSON payload:
{
  "email": "user@example.com",
  "password": "password"
}

The API will respond with a JWT token that should be included in the Authorization header for all subsequent requests:

Authorization: Bearer <token>

# Contributing
If you would like to contribute to/ find any issues with the API, feel free to open an issue or submit a pull request.

# Licence
The API is released under the Apache Licence 2.0

  http://www.apache.org/licenses/LICENSE-2.0

