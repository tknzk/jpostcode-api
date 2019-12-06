# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

if (v = ENV['CUSTOM_RUBY_VERSION'])
  ruby v
end

gem 'sinatra'
gem 'sinatra-contrib'
gem 'jpostcode'

group :test, :development do
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'shotgun'
end
