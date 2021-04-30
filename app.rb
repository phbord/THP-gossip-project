require 'bundler'
Bundler.require

#require 'dotenv'
#Dotenv.load('.env')

$:.unshift File.expand_path('./../lib', __FILE__)
require 'views/index'
#binding.pry

