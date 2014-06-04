# Essential configuration
set :application, "app_name" # <- Make sure you at least set this!
set :domain, "#{application}.com"
set :repository, "git@github.com:your_github_account/#{application}.git"

# If you've got a single server, modify this block accordingly
server "ip.or.hostname", :web, :app, :db, :primary => true # CONFIGURE THIS...
set :deploy_to, "/srv/www/#{application}"
set :branch, "master"

# If you have multiple servers, do something like the following instead of
# the block above. See the docs for more information:
# https://github.com/capistrano/capistrano/wiki/2.x-Multistage-Extension
# set :stages, %w(production staging)
# set :default_stage, "staging"
# require 'capistrano/ext/multistage'

# Don't change these:
set :user, "deploy"
set :use_sudo, false

# Server install configuration
load 'config/install.rb'
