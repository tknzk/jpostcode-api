# frozen_string_literal: true

require 'rubygems'
require 'sinatra'
require 'puma'

require './app'

run Sinatra::Application
