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

You will need `rails` and `bundle` installed on your computer in order to run this app. You will also need Postgres installed and running in order to create, migrate, and seed your database.

In order to run this app, first clone this repo down onto your local machine and navigate to that directory. Then run `bundle install` in order to install all of the necessary gems locally. At this point, it is recommended to create an API key so that you can seed your data with [Spoonacular](https://rapidapi.com/spoonacular/api/recipe-food-nutrition). **As you can see in the pricing model, you can request 500 recipes per day before you will be charged for access to their API.** 

* `rails db:create`
* `rails db:migrate`
* Add your API Key to the seeds.rb file in line 4 so that your API calls will be successful. **As a note, if you have forked and cloned this repo, if you commit your code to Github, your private API key will then be made public.** 
* `rails db:seed` - This should print to your terminal the number of recipes that have been persisted to your local database. The default number of recipes that should be pulled from the API is 50. If you want to change this, revise the code in line 10 of the seeds.rb file. If you want to call the API multiple times, keep the code in lines 6-8 of the seeds.rb commented out and run `rails db:seed` again in order to retrieve more recipes. 

Then run `rails s` in order to spin up your server.

Finally, clone the frontend repo down from [Gooble-Client](https://github.com/pirainogi/gobble-client) onto your local machine and follow the instructions in the readme to start the application.


# Ruby Version 2.3.3
# Rails Version 5.2.2
## Bundler Version 2.0.1

## Ruby Gems
* bcrypt
* jwt
* active-model-serializers
* rest-client
* rack-cors
