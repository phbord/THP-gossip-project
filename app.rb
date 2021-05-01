require 'bundler'
Bundler.require

require 'dotenv'
Dotenv.load('config.json')

$:.unshift File.expand_path('./../lib', __FILE__)
require 'router'

router = Router.new
router.perform

#binding.pry