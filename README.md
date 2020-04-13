Instagram Challenge
===================

## To run code

```
bundle
rails db:create
rails db:migrate
rails server
```
To add jquery and bootstrap I added them via yarn:
```
yarn add bootstrap jquery popper.js
```

## To run tests


## User Stories

First stage:

```
As a user,
so I can take part in an image sharing community,
I'd like to be able to register for an account.

As a user,
so I can access my account,
I'd like to be able to login and logout.

As a user,
so I can look at other people's images,
I'd like to be able to view all posts on the site.

As a user,
so I can look at other people's images,
I'd like to be able to see who posted an image.

As a user,
so I can contribute to the website,
I'd like to be able to post an image.

As a user,
so I can manage my presence on the app,
I'd like to be able to view my own profile

```

## Domain Model

| Models        | Methods          | State  |
| ------------- |:-------------:| -----:|
| Users    | sign-up, sign-in, log-out , CRUD | email, username, password |
| Posts     | CRUD     |   likes, associated user, caption |
| Comments | CRUD      |    likes, associated user and post |

## Task

Build Instagram: Simple huh!

Your challenge is to build Instagram using Rails. You'll need **users** who can post **pictures**, write **comments** on pictures and **like** a picture. Style it like Instagram's website (or more awesome).

Bonus if you can add filters!

## Process

1. Created a series of user stories
2. Broke them down into smaller cards, and estimated each card
3. Created domain and database models for a rough project outline
4. Initialized a new rails project and set it up with linting gems, travis and heroku deployment


## Code Quality

For linting, you can use the `.rubocop.yml` in this repository (or your own!).
You'll need these gems:

```ruby
gem "rubocop", "0.79.0", require: false
gem "rubocop-rails"
```

You can also lint Javascript, CSS, and ERB — feel free to research this. These
will help you to train yourself to produce cleaner code — and will often alert
you to mistakes or mishaps!
