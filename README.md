# README

This project is using the following:
* Ruby 2.4.0
* PostgreSQL for database
* Redis and Sidekiq for background processing jobs

For Ruby version management you can use RVM (https://rvm.io/) that allows you
to have many Ruby versions installed.

Assuming that the development machine is using some Linux distro, you will
need some dependencies to be installed, such as:
* libpq-dev (for PostgreSQL)
* imagemagick (used by Paperclip)
* bundler (to manage Ruby gems, used with RVM)

Before you can run the application you will need to create 2 files:
* application.yml
* database.yml

Without them you will not be able to start and the application and run
migrations. In the folder **config/** you will have **application.sample.yml** and **database.sample.yml** with some default values that you can adjust according with your needs.

To create the database you run:

`bundle exec rake db:create`

And then you run the migrations:

`bundle exec rake db:migrate`

Then you can seed the database with sample data (check **db/seeds.rb**)

`bundle exec rake db:seed`

Alternatively, you can just run all this commands using:

`bundle exec rake db:setup`

For tests, RSpec is being used, you can run the test suite using the following command:

`bundle exec rspec`

You will probably need to run the migrations for the test environment, if you get an error running the command, run first `bundle exec rake db:migrate RAILS_ENV=test`

Sidekiq can be used for background jobs processing, to run it, just use the following command:

`bundle exec sidekiq`

For development environment, you can run the Rails server issuing the following command:

`bundle exec rails s`

However, sometimes it annoying to have to stop the server when some changes are made in code or refresh the browser to apply CSS/JS changes, in order, to ease that process we have Guard, it's configured LiveReload and Rails, so this gem will keep track of changes on the code and act accordingly, to use Guard instead of Rails server, just issue the following command:

`bundle exec guard`

This will launch the Rails server in the localhost and will use the port 3000, if for some reason you which to use another host or port, before the call of Guard you can supply the following variables:
* SERVER_HOST
* SERVER_PORT

Something like: `SERVER_PORT=4000 bundle exec guard` will launch the server in localhost but will use the port 4000.

When we are deploying to production we usually use Capistrano (http://capistranorb.com/), so you should be familiar with it.

For the purposes of this project, we will have a staging environment that uses Dokku (http://dokku.viewdocs.io/dokku/), so you will need to setup the environment in order to deploy to our staging environment. You will need to add the following repository:

`git remote add dokku dokku@blko.ddns.net:ruby-exercise`

After that when you want to deploy it, you just run:

`git push dokku {current-branch}:master`

This will trigger a process much like Heroku where the code will be deployed to the staging server, and some tasks will run.
