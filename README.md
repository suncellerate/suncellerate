# suncellerate
suncellerate

# Installation and Usage Instructions

Install:
Postgres 10.1
Ruby 2.3.4

On MacOS:
#Rails app dependencies
bundle install
bundle exec figaro install

#https://github.com/reactjs/react-rails#get-started-with-webpacker
brew install yarn #enter "a" when prompted to overwrite all files
rails webpacker:install
rails webpacker:install:react
rails generate react:install

rails s


Visit localhost:3000

# Gotchas:

PG install failing? Try:

gem install pg -v 0.21 -- --with-pg-config=$PATH_TO_PG_CONFIG
