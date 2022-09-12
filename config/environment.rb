ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'

Bundler.require(:default, ENV["RACK_ENV"])

ActiveRecord::Base.default_timezone = :local

require_all 'app'
