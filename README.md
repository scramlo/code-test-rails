# Code Test: Rails

A simple Rails 6 app designed to provide a basic API for our code test.

### Requirements

1. [Ruby](http://rvm.io) (2.5+) or an environment like Docker (see below)

### Setup

1. Run `bundle install` to install gems

1. Run `bin/rails db:setup` to migrate and seed your development database

1. Run `bin/rails server` to start up the local development server

You should get JSON output from http://localhost:3000/members

### Testing

Run `bin/rspec` to run the test suite.

### Todo

- [ ] Create docker setup as an alternative to installing ruby directly
