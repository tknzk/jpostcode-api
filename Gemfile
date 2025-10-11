# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

if (v = ENV['CUSTOM_RUBY_VERSION'])
  ruby v
end

gem 'sinatra', '>= 4.2.0'
gem 'sinatra-contrib', '>= 4.2.0'
gem 'jpostcode'
gem 'puma'

group :test, :development do
  gem 'rubocop'
  gem 'rubocop-performance'
end
