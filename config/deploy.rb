set :stages, %w(staging production)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

        require './config/boot'
        require 'airbrake/capistrano'
