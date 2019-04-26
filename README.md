# GOBBLE
Developed by Gabbie Piraino

A full service meal-prepping application with scheduling functionality so you never have to worry about what the <i>fork</i> is for dinner again.

*** Work in Progress ***

## Built With

* Ruby on Rails
* React.js
* Javascript
* HTML5 and CSS3 (semi-responsive)

You will need to create an API key with RapidAPI in order to seed your data. **There is a limit to the amount of free data that you can seed from the API, so please be aware before you seed thousands of recipes.**

Please find the React frontend repo at [Gooble-Client](https://github.com/pirainogi/gobble-client).

## Prerequisites

You will need `rails` and `bundle` installed on your computer in order to run this app.

In order to run this app, first clone this repo down onto your local machine and navigate to that directory. Then run  `bundle install` in order to install all of the necessary gems locally. At this point, it is recommended to create an API key so that you can seed your data: [Spoonacular](https://rapidapi.com/spoonacular/api/recipe-food-nutrition). **As you can see in the pricing model, you can request 500 recipes per day before you will be charged for access to their API.** Once you have added your own API key to the seeds file, run the following:

* `rails db:create`
* `rails db:migrate`
* `rails db:seed`

Then run `rails s` in order to spin up your server.

Finally, clone the frontend repo down from [Gooble-Client](https://github.com/pirainogi/gobble-client) onto your local machine and follow the instructions in the readme to start the application.


# Ruby Version 2.3.3
## Bundler Version 2.0.1

## Ruby Gems
* bcrypt
* jwt
* active-model-serializers
* rest-client
* rack-cors
