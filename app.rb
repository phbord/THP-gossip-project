require 'bundler'
Bundler.require

require 'dotenv'
Dotenv.load('config.json')

$:.unshift File.expand_path('./../lib', __FILE__)
require 'router'

def perform
    router = Router.new
    router.perform
end

perform

#binding.pry