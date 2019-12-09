# frozen_string_literal: true

require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'jpostcode'

get '/' do
  erb :index, format: :html5
end

get '/find/:postcode' do
  address = Jpostcode.find(params[:postcode])
  ret = if address.nil?
          {}
        else
          {
            prefecture: address.prefecture,
            prefecture_kana: address.prefecture_kana,
            prefecture_code: address.prefecture_code,
            city: address.city,
            city_kana: address.city_kana,
            town: address.town,
            town_kana: address.town_kana,
            office_name: address.office_name,
            office_name_kana: address.office_name_kana,
            zip_code: address.zip_code
          }
        end

  json ret
end
