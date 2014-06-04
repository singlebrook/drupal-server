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

# Settings common to install and deploy
set :user, "deploy" # This is not easily changeable, as recipes depend on it
set :use_sudo, false

# Server install configuration
# set :ruby_version, "1.9.1"        # default 1.9.1, which is actually 1.9.3
# set :use_rmagick, true            # default false
# set :root_mail_recipient, 'admin@example.com'
load 'config/install.rb'
