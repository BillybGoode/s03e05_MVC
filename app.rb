require "pry" #use with binding.pry
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
require 'gossip'
require 'view'
require 'router'

Router.new.perform