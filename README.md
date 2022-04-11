# Code Test: Rails

A simple Rails 6 app designed to provide a basic API for our code test!

### Requirements

1. [Ruby](http://rvm.io) (2.5+) or an environment like Docker (see below)

### Setup

1. Run `bundle install` to install gems

1. Run `bin/rails db:setup` to migrate and seed your development database

1. Run `bin/rails server` to start up the local development server

You should get JSON output from <http://localhost:3000/members>

### Testing

Run `bin/rspec` to run the test suite.

### Docker

As an alternative to installing Ruby directly, you can use the provided Docker files to run the app and test suite.

1. Run `docker-compose up -d` to start the Docker container (gems are installed and the server is booted automatically)
1. Run `docker-compose exec web bin/rails db:setup` to set up the database
1. Run `docker-compose exec web bin/rspec` to test

If necessary, you can restart the Rails server with `docker-compose restart`
